import SS

namespace Catalogue.Chunk008

open SS SS.Verify

/-- Catalogue code #4000: ((6,2,2)), m=11, a=[3, 4, 7, 9, 9, 10], S=[0, 6]. -/
def code_4000 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4000_ok : code_4000.OK := by native_decide
/-- Code #4000 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4000_qec :
    ∃ ψ, SS.IsAmplitudes code_4000 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4000 code_4000_ok (by decide) (by decide)

/-- Catalogue code #4001: ((6,2,2)), m=11, a=[3, 4, 7, 9, 10, 10], S=[0, 5]. -/
def code_4001 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4001_ok : code_4001.OK := by native_decide
/-- Code #4001 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4001_qec :
    ∃ ψ, SS.IsAmplitudes code_4001 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4001 code_4001_ok (by decide) (by decide)

/-- Catalogue code #4002: ((6,2,2)), m=11, a=[3, 4, 8, 8, 9, 9], S=[0, 1]. -/
def code_4002 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4002_ok : code_4002.OK := by native_decide
/-- Code #4002 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4002_qec :
    ∃ ψ, SS.IsAmplitudes code_4002 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4002 code_4002_ok (by decide) (by decide)

/-- Catalogue code #4003: ((6,2,2)), m=11, a=[3, 4, 8, 9, 9, 10], S=[0, 5]. -/
def code_4003 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4003_ok : code_4003.OK := by native_decide
/-- Code #4003 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4003_qec :
    ∃ ψ, SS.IsAmplitudes code_4003 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4003 code_4003_ok (by decide) (by decide)

/-- Catalogue code #4004: ((6,2,2)), m=11, a=[3, 4, 8, 9, 9, 10], S=[0, 6]. -/
def code_4004 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4004_ok : code_4004.OK := by native_decide
/-- Code #4004 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4004_qec :
    ∃ ψ, SS.IsAmplitudes code_4004 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4004 code_4004_ok (by decide) (by decide)

/-- Catalogue code #4005: ((6,2,2)), m=11, a=[3, 4, 8, 9, 10, 10], S=[0, 5]. -/
def code_4005 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4005_ok : code_4005.OK := by native_decide
/-- Code #4005 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4005_qec :
    ∃ ψ, SS.IsAmplitudes code_4005 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4005 code_4005_ok (by decide) (by decide)

/-- Catalogue code #4006: ((6,2,2)), m=11, a=[3, 4, 8, 9, 10, 10], S=[0, 6]. -/
def code_4006 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4006_ok : code_4006.OK := by native_decide
/-- Code #4006 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4006_qec :
    ∃ ψ, SS.IsAmplitudes code_4006 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4006 code_4006_ok (by decide) (by decide)

/-- Catalogue code #4007: ((6,2,2)), m=11, a=[3, 4, 8, 10, 10, 10], S=[0, 6]. -/
def code_4007 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4007_ok : code_4007.OK := by native_decide
/-- Code #4007 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4007_qec :
    ∃ ψ, SS.IsAmplitudes code_4007 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4007 code_4007_ok (by decide) (by decide)

/-- Catalogue code #4008: ((6,2,2)), m=11, a=[3, 4, 9, 9, 10, 10], S=[0, 6]. -/
def code_4008 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4008_ok : code_4008.OK := by native_decide
/-- Code #4008 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4008_qec :
    ∃ ψ, SS.IsAmplitudes code_4008 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4008 code_4008_ok (by decide) (by decide)

/-- Catalogue code #4009: ((6,2,2)), m=11, a=[3, 4, 9, 10, 10, 10], S=[0, 6]. -/
def code_4009 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (4 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11)]
theorem code_4009_ok : code_4009.OK := by native_decide
/-- Code #4009 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4009_qec :
    ∃ ψ, SS.IsAmplitudes code_4009 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4009 code_4009_ok (by decide) (by decide)

/-- Catalogue code #4010: ((6,2,2)), m=11, a=[3, 5, 5, 5, 7, 9], S=[0, 10]. -/
def code_4010 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4010_ok : code_4010.OK := by native_decide
/-- Code #4010 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4010_qec :
    ∃ ψ, SS.IsAmplitudes code_4010 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4010 code_4010_ok (by decide) (by decide)

/-- Catalogue code #4011: ((6,2,2)), m=11, a=[3, 5, 5, 5, 8, 9], S=[0, 1]. -/
def code_4011 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4011_ok : code_4011.OK := by native_decide
/-- Code #4011 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4011_qec :
    ∃ ψ, SS.IsAmplitudes code_4011 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4011 code_4011_ok (by decide) (by decide)

/-- Catalogue code #4012: ((6,2,2)), m=11, a=[3, 5, 5, 5, 8, 10], S=[0, 2]. -/
def code_4012 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4012_ok : code_4012.OK := by native_decide
/-- Code #4012 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4012_qec :
    ∃ ψ, SS.IsAmplitudes code_4012 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4012 code_4012_ok (by decide) (by decide)

/-- Catalogue code #4013: ((6,2,2)), m=11, a=[3, 5, 5, 5, 8, 10], S=[0, 7]. -/
def code_4013 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4013_ok : code_4013.OK := by native_decide
/-- Code #4013 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4013_qec :
    ∃ ψ, SS.IsAmplitudes code_4013 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4013 code_4013_ok (by decide) (by decide)

/-- Catalogue code #4014: ((6,2,2)), m=11, a=[3, 5, 5, 5, 9, 9], S=[0, 4]. -/
def code_4014 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4014_ok : code_4014.OK := by native_decide
/-- Code #4014 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4014_qec :
    ∃ ψ, SS.IsAmplitudes code_4014 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4014 code_4014_ok (by decide) (by decide)

/-- Catalogue code #4015: ((6,2,2)), m=11, a=[3, 5, 5, 5, 9, 9], S=[0, 7]. -/
def code_4015 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4015_ok : code_4015.OK := by native_decide
/-- Code #4015 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4015_qec :
    ∃ ψ, SS.IsAmplitudes code_4015 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4015 code_4015_ok (by decide) (by decide)

/-- Catalogue code #4016: ((6,2,2)), m=11, a=[3, 5, 5, 5, 10, 10], S=[0, 2]. -/
def code_4016 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4016_ok : code_4016.OK := by native_decide
/-- Code #4016 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4016_qec :
    ∃ ψ, SS.IsAmplitudes code_4016 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4016 code_4016_ok (by decide) (by decide)

/-- Catalogue code #4017: ((6,2,2)), m=11, a=[3, 5, 5, 6, 8, 9], S=[0, 7]. -/
def code_4017 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4017_ok : code_4017.OK := by native_decide
/-- Code #4017 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4017_qec :
    ∃ ψ, SS.IsAmplitudes code_4017 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4017 code_4017_ok (by decide) (by decide)

/-- Catalogue code #4018: ((6,2,2)), m=11, a=[3, 5, 5, 6, 9, 10], S=[0, 7]. -/
def code_4018 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4018_ok : code_4018.OK := by native_decide
/-- Code #4018 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4018_qec :
    ∃ ψ, SS.IsAmplitudes code_4018 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4018 code_4018_ok (by decide) (by decide)

/-- Catalogue code #4019: ((6,2,2)), m=11, a=[3, 5, 5, 7, 7, 7], S=[0, 10]. -/
def code_4019 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4019_ok : code_4019.OK := by native_decide
/-- Code #4019 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4019_qec :
    ∃ ψ, SS.IsAmplitudes code_4019 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4019 code_4019_ok (by decide) (by decide)

/-- Catalogue code #4020: ((6,2,2)), m=11, a=[3, 5, 5, 7, 7, 9], S=[0, 1]. -/
def code_4020 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4020_ok : code_4020.OK := by native_decide
/-- Code #4020 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4020_qec :
    ∃ ψ, SS.IsAmplitudes code_4020 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4020 code_4020_ok (by decide) (by decide)

/-- Catalogue code #4021: ((6,2,2)), m=11, a=[3, 5, 5, 7, 7, 9], S=[0, 10]. -/
def code_4021 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4021_ok : code_4021.OK := by native_decide
/-- Code #4021 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4021_qec :
    ∃ ψ, SS.IsAmplitudes code_4021 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4021 code_4021_ok (by decide) (by decide)

/-- Catalogue code #4022: ((6,2,2)), m=11, a=[3, 5, 5, 7, 7, 10], S=[0, 2]. -/
def code_4022 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4022_ok : code_4022.OK := by native_decide
/-- Code #4022 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4022_qec :
    ∃ ψ, SS.IsAmplitudes code_4022 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4022 code_4022_ok (by decide) (by decide)

/-- Catalogue code #4023: ((6,2,2)), m=11, a=[3, 5, 5, 7, 9, 9], S=[0, 1]. -/
def code_4023 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4023_ok : code_4023.OK := by native_decide
/-- Code #4023 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4023_qec :
    ∃ ψ, SS.IsAmplitudes code_4023 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4023 code_4023_ok (by decide) (by decide)

/-- Catalogue code #4024: ((6,2,2)), m=11, a=[3, 5, 5, 7, 9, 9], S=[0, 10]. -/
def code_4024 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4024_ok : code_4024.OK := by native_decide
/-- Code #4024 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4024_qec :
    ∃ ψ, SS.IsAmplitudes code_4024 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4024 code_4024_ok (by decide) (by decide)

/-- Catalogue code #4025: ((6,2,2)), m=11, a=[3, 5, 5, 7, 10, 10], S=[0, 9]. -/
def code_4025 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4025_ok : code_4025.OK := by native_decide
/-- Code #4025 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4025_qec :
    ∃ ψ, SS.IsAmplitudes code_4025 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4025 code_4025_ok (by decide) (by decide)

/-- Catalogue code #4026: ((6,2,2)), m=11, a=[3, 5, 5, 8, 9, 9], S=[0, 7]. -/
def code_4026 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4026_ok : code_4026.OK := by native_decide
/-- Code #4026 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4026_qec :
    ∃ ψ, SS.IsAmplitudes code_4026 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4026 code_4026_ok (by decide) (by decide)

/-- Catalogue code #4027: ((6,2,2)), m=11, a=[3, 5, 5, 8, 9, 9], S=[0, 10]. -/
def code_4027 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4027_ok : code_4027.OK := by native_decide
/-- Code #4027 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4027_qec :
    ∃ ψ, SS.IsAmplitudes code_4027 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4027 code_4027_ok (by decide) (by decide)

/-- Catalogue code #4028: ((6,2,2)), m=11, a=[3, 5, 5, 8, 10, 10], S=[0, 2]. -/
def code_4028 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4028_ok : code_4028.OK := by native_decide
/-- Code #4028 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4028_qec :
    ∃ ψ, SS.IsAmplitudes code_4028 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4028 code_4028_ok (by decide) (by decide)

/-- Catalogue code #4029: ((6,2,2)), m=11, a=[3, 5, 5, 8, 10, 10], S=[0, 7]. -/
def code_4029 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4029_ok : code_4029.OK := by native_decide
/-- Code #4029 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4029_qec :
    ∃ ψ, SS.IsAmplitudes code_4029 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4029 code_4029_ok (by decide) (by decide)

/-- Catalogue code #4030: ((6,2,2)), m=11, a=[3, 5, 5, 8, 10, 10], S=[0, 9]. -/
def code_4030 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4030_ok : code_4030.OK := by native_decide
/-- Code #4030 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4030_qec :
    ∃ ψ, SS.IsAmplitudes code_4030 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4030 code_4030_ok (by decide) (by decide)

/-- Catalogue code #4031: ((6,2,2)), m=11, a=[3, 5, 5, 9, 9, 10], S=[0, 4]. -/
def code_4031 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4031_ok : code_4031.OK := by native_decide
/-- Code #4031 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4031_qec :
    ∃ ψ, SS.IsAmplitudes code_4031 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4031 code_4031_ok (by decide) (by decide)

/-- Catalogue code #4032: ((6,2,2)), m=11, a=[3, 5, 5, 9, 9, 10], S=[0, 7]. -/
def code_4032 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4032_ok : code_4032.OK := by native_decide
/-- Code #4032 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4032_qec :
    ∃ ψ, SS.IsAmplitudes code_4032 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4032 code_4032_ok (by decide) (by decide)

/-- Catalogue code #4033: ((6,2,2)), m=11, a=[3, 5, 5, 9, 10, 10], S=[0, 7]. -/
def code_4033 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4033_ok : code_4033.OK := by native_decide
/-- Code #4033 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4033_qec :
    ∃ ψ, SS.IsAmplitudes code_4033 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4033 code_4033_ok (by decide) (by decide)

/-- Catalogue code #4034: ((6,2,2)), m=11, a=[3, 5, 6, 6, 7, 8], S=[0, 9]. -/
def code_4034 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4034_ok : code_4034.OK := by native_decide
/-- Code #4034 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4034_qec :
    ∃ ψ, SS.IsAmplitudes code_4034 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4034 code_4034_ok (by decide) (by decide)

/-- Catalogue code #4035: ((6,2,2)), m=11, a=[3, 5, 6, 6, 7, 9], S=[0, 1]. -/
def code_4035 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4035_ok : code_4035.OK := by native_decide
/-- Code #4035 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4035_qec :
    ∃ ψ, SS.IsAmplitudes code_4035 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4035 code_4035_ok (by decide) (by decide)

/-- Catalogue code #4036: ((6,2,2)), m=11, a=[3, 5, 6, 6, 7, 10], S=[0, 2]. -/
def code_4036 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4036_ok : code_4036.OK := by native_decide
/-- Code #4036 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4036_qec :
    ∃ ψ, SS.IsAmplitudes code_4036 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4036 code_4036_ok (by decide) (by decide)

/-- Catalogue code #4037: ((6,2,2)), m=11, a=[3, 5, 6, 6, 9, 9], S=[0, 1]. -/
def code_4037 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4037_ok : code_4037.OK := by native_decide
/-- Code #4037 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4037_qec :
    ∃ ψ, SS.IsAmplitudes code_4037 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4037 code_4037_ok (by decide) (by decide)

/-- Catalogue code #4038: ((6,2,2)), m=11, a=[3, 5, 6, 6, 9, 9], S=[0, 4]. -/
def code_4038 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4038_ok : code_4038.OK := by native_decide
/-- Code #4038 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4038_qec :
    ∃ ψ, SS.IsAmplitudes code_4038 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4038 code_4038_ok (by decide) (by decide)

/-- Catalogue code #4039: ((6,2,2)), m=11, a=[3, 5, 6, 6, 9, 10], S=[0, 4]. -/
def code_4039 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4039_ok : code_4039.OK := by native_decide
/-- Code #4039 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4039_qec :
    ∃ ψ, SS.IsAmplitudes code_4039 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4039 code_4039_ok (by decide) (by decide)

/-- Catalogue code #4040: ((6,2,2)), m=11, a=[3, 5, 6, 7, 7, 8], S=[0, 1]. -/
def code_4040 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4040_ok : code_4040.OK := by native_decide
/-- Code #4040 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4040_qec :
    ∃ ψ, SS.IsAmplitudes code_4040 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4040 code_4040_ok (by decide) (by decide)

/-- Catalogue code #4041: ((6,2,2)), m=11, a=[3, 5, 6, 7, 7, 8], S=[0, 9]. -/
def code_4041 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4041_ok : code_4041.OK := by native_decide
/-- Code #4041 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4041_qec :
    ∃ ψ, SS.IsAmplitudes code_4041 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4041 code_4041_ok (by decide) (by decide)

/-- Catalogue code #4042: ((6,2,2)), m=11, a=[3, 5, 6, 7, 7, 9], S=[0, 1]. -/
def code_4042 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4042_ok : code_4042.OK := by native_decide
/-- Code #4042 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4042_qec :
    ∃ ψ, SS.IsAmplitudes code_4042 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4042 code_4042_ok (by decide) (by decide)

/-- Catalogue code #4043: ((6,2,2)), m=11, a=[3, 5, 6, 7, 7, 10], S=[0, 9]. -/
def code_4043 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4043_ok : code_4043.OK := by native_decide
/-- Code #4043 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4043_qec :
    ∃ ψ, SS.IsAmplitudes code_4043 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4043 code_4043_ok (by decide) (by decide)

/-- Catalogue code #4044: ((6,2,2)), m=11, a=[3, 5, 6, 7, 8, 9], S=[0, 1]. -/
def code_4044 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4044_ok : code_4044.OK := by native_decide
/-- Code #4044 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4044_qec :
    ∃ ψ, SS.IsAmplitudes code_4044 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4044 code_4044_ok (by decide) (by decide)

/-- Catalogue code #4045: ((6,2,2)), m=11, a=[3, 5, 6, 7, 9, 9], S=[0, 10]. -/
def code_4045 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4045_ok : code_4045.OK := by native_decide
/-- Code #4045 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4045_qec :
    ∃ ψ, SS.IsAmplitudes code_4045 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4045 code_4045_ok (by decide) (by decide)

/-- Catalogue code #4046: ((6,2,2)), m=11, a=[3, 5, 6, 8, 9, 10], S=[0, 4]. -/
def code_4046 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4046_ok : code_4046.OK := by native_decide
/-- Code #4046 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4046_qec :
    ∃ ψ, SS.IsAmplitudes code_4046 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4046 code_4046_ok (by decide) (by decide)

/-- Catalogue code #4047: ((6,2,2)), m=11, a=[3, 5, 6, 8, 10, 10], S=[0, 2]. -/
def code_4047 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4047_ok : code_4047.OK := by native_decide
/-- Code #4047 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4047_qec :
    ∃ ψ, SS.IsAmplitudes code_4047 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4047 code_4047_ok (by decide) (by decide)

/-- Catalogue code #4048: ((6,2,2)), m=11, a=[3, 5, 6, 9, 9, 10], S=[0, 4]. -/
def code_4048 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4048_ok : code_4048.OK := by native_decide
/-- Code #4048 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4048_qec :
    ∃ ψ, SS.IsAmplitudes code_4048 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4048 code_4048_ok (by decide) (by decide)

/-- Catalogue code #4049: ((6,2,2)), m=11, a=[3, 5, 7, 7, 7, 8], S=[0, 2]. -/
def code_4049 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4049_ok : code_4049.OK := by native_decide
/-- Code #4049 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4049_qec :
    ∃ ψ, SS.IsAmplitudes code_4049 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4049 code_4049_ok (by decide) (by decide)

/-- Catalogue code #4050: ((6,2,2)), m=11, a=[3, 5, 7, 7, 7, 9], S=[0, 10]. -/
def code_4050 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4050_ok : code_4050.OK := by native_decide
/-- Code #4050 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4050_qec :
    ∃ ψ, SS.IsAmplitudes code_4050 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4050 code_4050_ok (by decide) (by decide)

/-- Catalogue code #4051: ((6,2,2)), m=11, a=[3, 5, 7, 7, 8, 8], S=[0, 10]. -/
def code_4051 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4051_ok : code_4051.OK := by native_decide
/-- Code #4051 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4051_qec :
    ∃ ψ, SS.IsAmplitudes code_4051 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4051 code_4051_ok (by decide) (by decide)

/-- Catalogue code #4052: ((6,2,2)), m=11, a=[3, 5, 7, 7, 8, 9], S=[0, 1]. -/
def code_4052 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4052_ok : code_4052.OK := by native_decide
/-- Code #4052 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4052_qec :
    ∃ ψ, SS.IsAmplitudes code_4052 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4052 code_4052_ok (by decide) (by decide)

/-- Catalogue code #4053: ((6,2,2)), m=11, a=[3, 5, 7, 7, 8, 10], S=[0, 9]. -/
def code_4053 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4053_ok : code_4053.OK := by native_decide
/-- Code #4053 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4053_qec :
    ∃ ψ, SS.IsAmplitudes code_4053 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4053 code_4053_ok (by decide) (by decide)

/-- Catalogue code #4054: ((6,2,2)), m=11, a=[3, 5, 7, 7, 9, 9], S=[0, 1]. -/
def code_4054 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4054_ok : code_4054.OK := by native_decide
/-- Code #4054 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4054_qec :
    ∃ ψ, SS.IsAmplitudes code_4054 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4054 code_4054_ok (by decide) (by decide)

/-- Catalogue code #4055: ((6,2,2)), m=11, a=[3, 5, 7, 8, 8, 10], S=[0, 9]. -/
def code_4055 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4055_ok : code_4055.OK := by native_decide
/-- Code #4055 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4055_qec :
    ∃ ψ, SS.IsAmplitudes code_4055 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4055 code_4055_ok (by decide) (by decide)

/-- Catalogue code #4056: ((6,2,2)), m=11, a=[3, 5, 7, 8, 9, 9], S=[0, 10]. -/
def code_4056 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4056_ok : code_4056.OK := by native_decide
/-- Code #4056 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4056_qec :
    ∃ ψ, SS.IsAmplitudes code_4056 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4056 code_4056_ok (by decide) (by decide)

/-- Catalogue code #4057: ((6,2,2)), m=11, a=[3, 5, 7, 8, 10, 10], S=[0, 2]. -/
def code_4057 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4057_ok : code_4057.OK := by native_decide
/-- Code #4057 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4057_qec :
    ∃ ψ, SS.IsAmplitudes code_4057 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4057 code_4057_ok (by decide) (by decide)

/-- Catalogue code #4058: ((6,2,2)), m=11, a=[3, 5, 7, 9, 9, 9], S=[0, 1]. -/
def code_4058 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4058_ok : code_4058.OK := by native_decide
/-- Code #4058 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4058_qec :
    ∃ ψ, SS.IsAmplitudes code_4058 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4058 code_4058_ok (by decide) (by decide)

/-- Catalogue code #4059: ((6,2,2)), m=11, a=[3, 5, 8, 9, 9, 10], S=[0, 4]. -/
def code_4059 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4059_ok : code_4059.OK := by native_decide
/-- Code #4059 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4059_qec :
    ∃ ψ, SS.IsAmplitudes code_4059 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4059 code_4059_ok (by decide) (by decide)

/-- Catalogue code #4060: ((6,2,2)), m=11, a=[3, 5, 8, 9, 9, 10], S=[0, 7]. -/
def code_4060 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4060_ok : code_4060.OK := by native_decide
/-- Code #4060 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4060_qec :
    ∃ ψ, SS.IsAmplitudes code_4060 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4060 code_4060_ok (by decide) (by decide)

/-- Catalogue code #4061: ((6,2,2)), m=11, a=[3, 5, 8, 9, 10, 10], S=[0, 4]. -/
def code_4061 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11)]
theorem code_4061_ok : code_4061.OK := by native_decide
/-- Code #4061 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4061_qec :
    ∃ ψ, SS.IsAmplitudes code_4061 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4061 code_4061_ok (by decide) (by decide)

/-- Catalogue code #4062: ((6,2,2)), m=11, a=[3, 5, 8, 10, 10, 10], S=[0, 7]. -/
def code_4062 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4062_ok : code_4062.OK := by native_decide
/-- Code #4062 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4062_qec :
    ∃ ψ, SS.IsAmplitudes code_4062 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4062 code_4062_ok (by decide) (by decide)

/-- Catalogue code #4063: ((6,2,2)), m=11, a=[3, 5, 9, 9, 9, 10], S=[0, 4]. -/
def code_4063 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_4063_ok : code_4063.OK := by native_decide
/-- Code #4063 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4063_qec :
    ∃ ψ, SS.IsAmplitudes code_4063 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4063 code_4063_ok (by decide) (by decide)

/-- Catalogue code #4064: ((6,2,2)), m=11, a=[3, 5, 9, 9, 10, 10], S=[0, 7]. -/
def code_4064 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4064_ok : code_4064.OK := by native_decide
/-- Code #4064 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4064_qec :
    ∃ ψ, SS.IsAmplitudes code_4064 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4064 code_4064_ok (by decide) (by decide)

/-- Catalogue code #4065: ((6,2,2)), m=11, a=[3, 5, 9, 10, 10, 10], S=[0, 7]. -/
def code_4065 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (5 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4065_ok : code_4065.OK := by native_decide
/-- Code #4065 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4065_qec :
    ∃ ψ, SS.IsAmplitudes code_4065 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4065 code_4065_ok (by decide) (by decide)

/-- Catalogue code #4066: ((6,2,2)), m=11, a=[3, 6, 6, 7, 7, 9], S=[0, 1]. -/
def code_4066 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4066_ok : code_4066.OK := by native_decide
/-- Code #4066 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4066_qec :
    ∃ ψ, SS.IsAmplitudes code_4066 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4066 code_4066_ok (by decide) (by decide)

/-- Catalogue code #4067: ((6,2,2)), m=11, a=[3, 6, 6, 7, 8, 9], S=[0, 10]. -/
def code_4067 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4067_ok : code_4067.OK := by native_decide
/-- Code #4067 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4067_qec :
    ∃ ψ, SS.IsAmplitudes code_4067 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4067 code_4067_ok (by decide) (by decide)

/-- Catalogue code #4068: ((6,2,2)), m=11, a=[3, 6, 6, 7, 8, 10], S=[0, 9]. -/
def code_4068 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4068_ok : code_4068.OK := by native_decide
/-- Code #4068 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4068_qec :
    ∃ ψ, SS.IsAmplitudes code_4068 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4068 code_4068_ok (by decide) (by decide)

/-- Catalogue code #4069: ((6,2,2)), m=11, a=[3, 6, 6, 7, 9, 9], S=[0, 1]. -/
def code_4069 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4069_ok : code_4069.OK := by native_decide
/-- Code #4069 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4069_qec :
    ∃ ψ, SS.IsAmplitudes code_4069 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4069 code_4069_ok (by decide) (by decide)

/-- Catalogue code #4070: ((6,2,2)), m=11, a=[3, 6, 6, 8, 8, 10], S=[0, 4]. -/
def code_4070 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4070_ok : code_4070.OK := by native_decide
/-- Code #4070 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4070_qec :
    ∃ ψ, SS.IsAmplitudes code_4070 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4070 code_4070_ok (by decide) (by decide)

/-- Catalogue code #4071: ((6,2,2)), m=11, a=[3, 6, 6, 8, 9, 9], S=[0, 1]. -/
def code_4071 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4071_ok : code_4071.OK := by native_decide
/-- Code #4071 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4071_qec :
    ∃ ψ, SS.IsAmplitudes code_4071 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4071 code_4071_ok (by decide) (by decide)

/-- Catalogue code #4072: ((6,2,2)), m=11, a=[3, 6, 6, 8, 9, 9], S=[0, 7]. -/
def code_4072 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4072_ok : code_4072.OK := by native_decide
/-- Code #4072 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4072_qec :
    ∃ ψ, SS.IsAmplitudes code_4072 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4072 code_4072_ok (by decide) (by decide)

/-- Catalogue code #4073: ((6,2,2)), m=11, a=[3, 6, 6, 8, 9, 10], S=[0, 7]. -/
def code_4073 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4073_ok : code_4073.OK := by native_decide
/-- Code #4073 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4073_qec :
    ∃ ψ, SS.IsAmplitudes code_4073 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4073 code_4073_ok (by decide) (by decide)

/-- Catalogue code #4074: ((6,2,2)), m=11, a=[3, 6, 6, 8, 10, 10], S=[0, 9]. -/
def code_4074 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4074_ok : code_4074.OK := by native_decide
/-- Code #4074 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4074_qec :
    ∃ ψ, SS.IsAmplitudes code_4074 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4074 code_4074_ok (by decide) (by decide)

/-- Catalogue code #4075: ((6,2,2)), m=11, a=[3, 6, 7, 7, 7, 9], S=[0, 1]. -/
def code_4075 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4075_ok : code_4075.OK := by native_decide
/-- Code #4075 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4075_qec :
    ∃ ψ, SS.IsAmplitudes code_4075 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4075 code_4075_ok (by decide) (by decide)

/-- Catalogue code #4076: ((6,2,2)), m=11, a=[3, 6, 7, 7, 8, 9], S=[0, 1]. -/
def code_4076 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4076_ok : code_4076.OK := by native_decide
/-- Code #4076 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4076_qec :
    ∃ ψ, SS.IsAmplitudes code_4076 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4076 code_4076_ok (by decide) (by decide)

/-- Catalogue code #4077: ((6,2,2)), m=11, a=[3, 6, 7, 7, 8, 10], S=[0, 9]. -/
def code_4077 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4077_ok : code_4077.OK := by native_decide
/-- Code #4077 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4077_qec :
    ∃ ψ, SS.IsAmplitudes code_4077 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4077 code_4077_ok (by decide) (by decide)

/-- Catalogue code #4078: ((6,2,2)), m=11, a=[3, 6, 7, 8, 9, 9], S=[0, 10]. -/
def code_4078 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4078_ok : code_4078.OK := by native_decide
/-- Code #4078 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4078_qec :
    ∃ ψ, SS.IsAmplitudes code_4078 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4078 code_4078_ok (by decide) (by decide)

/-- Catalogue code #4079: ((6,2,2)), m=11, a=[3, 6, 7, 8, 10, 10], S=[0, 2]. -/
def code_4079 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4079_ok : code_4079.OK := by native_decide
/-- Code #4079 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4079_qec :
    ∃ ψ, SS.IsAmplitudes code_4079 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4079 code_4079_ok (by decide) (by decide)

/-- Catalogue code #4080: ((6,2,2)), m=11, a=[3, 6, 7, 8, 10, 10], S=[0, 9]. -/
def code_4080 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4080_ok : code_4080.OK := by native_decide
/-- Code #4080 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4080_qec :
    ∃ ψ, SS.IsAmplitudes code_4080 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4080 code_4080_ok (by decide) (by decide)

/-- Catalogue code #4081: ((6,2,2)), m=11, a=[3, 6, 8, 9, 9, 10], S=[0, 7]. -/
def code_4081 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4081_ok : code_4081.OK := by native_decide
/-- Code #4081 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4081_qec :
    ∃ ψ, SS.IsAmplitudes code_4081 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4081 code_4081_ok (by decide) (by decide)

/-- Catalogue code #4082: ((6,2,2)), m=11, a=[3, 6, 8, 9, 10, 10], S=[0, 4]. -/
def code_4082 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4082_ok : code_4082.OK := by native_decide
/-- Code #4082 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4082_qec :
    ∃ ψ, SS.IsAmplitudes code_4082 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4082 code_4082_ok (by decide) (by decide)

/-- Catalogue code #4083: ((6,2,2)), m=11, a=[3, 6, 8, 10, 10, 10], S=[0, 7]. -/
def code_4083 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4083_ok : code_4083.OK := by native_decide
/-- Code #4083 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4083_qec :
    ∃ ψ, SS.IsAmplitudes code_4083 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4083 code_4083_ok (by decide) (by decide)

/-- Catalogue code #4084: ((6,2,2)), m=11, a=[3, 6, 8, 10, 10, 10], S=[0, 9]. -/
def code_4084 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4084_ok : code_4084.OK := by native_decide
/-- Code #4084 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4084_qec :
    ∃ ψ, SS.IsAmplitudes code_4084 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4084 code_4084_ok (by decide) (by decide)

/-- Catalogue code #4085: ((6,2,2)), m=11, a=[3, 7, 7, 7, 8, 9], S=[0, 6]. -/
def code_4085 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4085_ok : code_4085.OK := by native_decide
/-- Code #4085 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4085_qec :
    ∃ ψ, SS.IsAmplitudes code_4085 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4085 code_4085_ok (by decide) (by decide)

/-- Catalogue code #4086: ((6,2,2)), m=11, a=[3, 7, 7, 7, 9, 9], S=[0, 6]. -/
def code_4086 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4086_ok : code_4086.OK := by native_decide
/-- Code #4086 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4086_qec :
    ∃ ψ, SS.IsAmplitudes code_4086 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4086 code_4086_ok (by decide) (by decide)

/-- Catalogue code #4087: ((6,2,2)), m=11, a=[3, 7, 7, 7, 9, 9], S=[0, 10]. -/
def code_4087 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4087_ok : code_4087.OK := by native_decide
/-- Code #4087 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4087_qec :
    ∃ ψ, SS.IsAmplitudes code_4087 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4087 code_4087_ok (by decide) (by decide)

/-- Catalogue code #4088: ((6,2,2)), m=11, a=[3, 7, 7, 7, 9, 10], S=[0, 5]. -/
def code_4088 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4088_ok : code_4088.OK := by native_decide
/-- Code #4088 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4088_qec :
    ∃ ψ, SS.IsAmplitudes code_4088 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4088 code_4088_ok (by decide) (by decide)

/-- Catalogue code #4089: ((6,2,2)), m=11, a=[3, 7, 7, 8, 8, 10], S=[0, 5]. -/
def code_4089 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4089_ok : code_4089.OK := by native_decide
/-- Code #4089 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4089_qec :
    ∃ ψ, SS.IsAmplitudes code_4089 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4089 code_4089_ok (by decide) (by decide)

/-- Catalogue code #4090: ((6,2,2)), m=11, a=[3, 7, 7, 8, 9, 9], S=[0, 6]. -/
def code_4090 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4090_ok : code_4090.OK := by native_decide
/-- Code #4090 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4090_qec :
    ∃ ψ, SS.IsAmplitudes code_4090 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4090 code_4090_ok (by decide) (by decide)

/-- Catalogue code #4091: ((6,2,2)), m=11, a=[3, 7, 7, 8, 9, 10], S=[0, 5]. -/
def code_4091 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4091_ok : code_4091.OK := by native_decide
/-- Code #4091 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4091_qec :
    ∃ ψ, SS.IsAmplitudes code_4091 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4091 code_4091_ok (by decide) (by decide)

/-- Catalogue code #4092: ((6,2,2)), m=11, a=[3, 7, 7, 8, 9, 10], S=[0, 6]. -/
def code_4092 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4092_ok : code_4092.OK := by native_decide
/-- Code #4092 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4092_qec :
    ∃ ψ, SS.IsAmplitudes code_4092 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4092 code_4092_ok (by decide) (by decide)

/-- Catalogue code #4093: ((6,2,2)), m=11, a=[3, 7, 7, 9, 9, 9], S=[0, 1]. -/
def code_4093 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4093_ok : code_4093.OK := by native_decide
/-- Code #4093 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4093_qec :
    ∃ ψ, SS.IsAmplitudes code_4093 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4093 code_4093_ok (by decide) (by decide)

/-- Catalogue code #4094: ((6,2,2)), m=11, a=[3, 7, 7, 9, 9, 9], S=[0, 10]. -/
def code_4094 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4094_ok : code_4094.OK := by native_decide
/-- Code #4094 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4094_qec :
    ∃ ψ, SS.IsAmplitudes code_4094 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4094 code_4094_ok (by decide) (by decide)

/-- Catalogue code #4095: ((6,2,2)), m=11, a=[3, 7, 7, 9, 9, 10], S=[0, 6]. -/
def code_4095 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4095_ok : code_4095.OK := by native_decide
/-- Code #4095 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4095_qec :
    ∃ ψ, SS.IsAmplitudes code_4095 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4095 code_4095_ok (by decide) (by decide)

/-- Catalogue code #4096: ((6,2,2)), m=11, a=[3, 7, 7, 9, 10, 10], S=[0, 5]. -/
def code_4096 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4096_ok : code_4096.OK := by native_decide
/-- Code #4096 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4096_qec :
    ∃ ψ, SS.IsAmplitudes code_4096 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4096 code_4096_ok (by decide) (by decide)

/-- Catalogue code #4097: ((6,2,2)), m=11, a=[3, 7, 8, 8, 9, 9], S=[0, 1]. -/
def code_4097 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4097_ok : code_4097.OK := by native_decide
/-- Code #4097 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4097_qec :
    ∃ ψ, SS.IsAmplitudes code_4097 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4097 code_4097_ok (by decide) (by decide)

/-- Catalogue code #4098: ((6,2,2)), m=11, a=[3, 7, 8, 8, 9, 9], S=[0, 10]. -/
def code_4098 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4098_ok : code_4098.OK := by native_decide
/-- Code #4098 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4098_qec :
    ∃ ψ, SS.IsAmplitudes code_4098 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4098 code_4098_ok (by decide) (by decide)

/-- Catalogue code #4099: ((6,2,2)), m=11, a=[3, 7, 8, 9, 9, 10], S=[0, 6]. -/
def code_4099 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4099_ok : code_4099.OK := by native_decide
/-- Code #4099 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4099_qec :
    ∃ ψ, SS.IsAmplitudes code_4099 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4099 code_4099_ok (by decide) (by decide)

/-- Catalogue code #4100: ((6,2,2)), m=11, a=[3, 7, 8, 9, 10, 10], S=[0, 5]. -/
def code_4100 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4100_ok : code_4100.OK := by native_decide
/-- Code #4100 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4100_qec :
    ∃ ψ, SS.IsAmplitudes code_4100 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4100 code_4100_ok (by decide) (by decide)

/-- Catalogue code #4101: ((6,2,2)), m=11, a=[3, 7, 8, 9, 10, 10], S=[0, 6]. -/
def code_4101 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4101_ok : code_4101.OK := by native_decide
/-- Code #4101 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4101_qec :
    ∃ ψ, SS.IsAmplitudes code_4101 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4101 code_4101_ok (by decide) (by decide)

/-- Catalogue code #4102: ((6,2,2)), m=11, a=[3, 7, 9, 9, 9, 10], S=[0, 6]. -/
def code_4102 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4102_ok : code_4102.OK := by native_decide
/-- Code #4102 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4102_qec :
    ∃ ψ, SS.IsAmplitudes code_4102 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4102 code_4102_ok (by decide) (by decide)

/-- Catalogue code #4103: ((6,2,2)), m=11, a=[3, 8, 8, 9, 9, 10], S=[0, 7]. -/
def code_4103 : ExampleData 6 11 2 where
  a := ![(3 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4103_ok : code_4103.OK := by native_decide
/-- Code #4103 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4103_qec :
    ∃ ψ, SS.IsAmplitudes code_4103 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4103 code_4103_ok (by decide) (by decide)

/-- Catalogue code #4104: ((6,2,2)), m=11, a=[4, 4, 4, 5, 5, 8], S=[0, 9]. -/
def code_4104 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_4104_ok : code_4104.OK := by native_decide
/-- Code #4104 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4104_qec :
    ∃ ψ, SS.IsAmplitudes code_4104 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4104 code_4104_ok (by decide) (by decide)

/-- Catalogue code #4105: ((6,2,2)), m=11, a=[4, 4, 4, 5, 5, 8], S=[0, 10]. -/
def code_4105 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4105_ok : code_4105.OK := by native_decide
/-- Code #4105 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4105_qec :
    ∃ ψ, SS.IsAmplitudes code_4105 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4105 code_4105_ok (by decide) (by decide)

/-- Catalogue code #4106: ((6,2,2)), m=11, a=[4, 4, 4, 5, 8, 8], S=[0, 9]. -/
def code_4106 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4106_ok : code_4106.OK := by native_decide
/-- Code #4106 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4106_qec :
    ∃ ψ, SS.IsAmplitudes code_4106 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4106 code_4106_ok (by decide) (by decide)

/-- Catalogue code #4107: ((6,2,2)), m=11, a=[4, 4, 5, 5, 5, 8], S=[0, 1]. -/
def code_4107 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_4107_ok : code_4107.OK := by native_decide
/-- Code #4107 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4107_qec :
    ∃ ψ, SS.IsAmplitudes code_4107 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4107 code_4107_ok (by decide) (by decide)

/-- Catalogue code #4108: ((6,2,2)), m=11, a=[4, 4, 5, 5, 6, 8], S=[0, 2]. -/
def code_4108 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4108_ok : code_4108.OK := by native_decide
/-- Code #4108 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4108_qec :
    ∃ ψ, SS.IsAmplitudes code_4108 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4108 code_4108_ok (by decide) (by decide)

/-- Catalogue code #4109: ((6,2,2)), m=11, a=[4, 4, 5, 5, 6, 9], S=[0, 3]. -/
def code_4109 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4109_ok : code_4109.OK := by native_decide
/-- Code #4109 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4109_qec :
    ∃ ψ, SS.IsAmplitudes code_4109 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4109 code_4109_ok (by decide) (by decide)

/-- Catalogue code #4110: ((6,2,2)), m=11, a=[4, 4, 5, 5, 6, 9], S=[0, 8]. -/
def code_4110 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4110_ok : code_4110.OK := by native_decide
/-- Code #4110 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4110_qec :
    ∃ ψ, SS.IsAmplitudes code_4110 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4110 code_4110_ok (by decide) (by decide)

/-- Catalogue code #4111: ((6,2,2)), m=11, a=[4, 4, 5, 5, 8, 8], S=[0, 10]. -/
def code_4111 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4111_ok : code_4111.OK := by native_decide
/-- Code #4111 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4111_qec :
    ∃ ψ, SS.IsAmplitudes code_4111 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4111 code_4111_ok (by decide) (by decide)

/-- Catalogue code #4112: ((6,2,2)), m=11, a=[4, 4, 5, 5, 8, 9], S=[0, 1]. -/
def code_4112 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4112_ok : code_4112.OK := by native_decide
/-- Code #4112 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4112_qec :
    ∃ ψ, SS.IsAmplitudes code_4112 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4112 code_4112_ok (by decide) (by decide)

/-- Catalogue code #4113: ((6,2,2)), m=11, a=[4, 4, 5, 5, 8, 9], S=[0, 10]. -/
def code_4113 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4113_ok : code_4113.OK := by native_decide
/-- Code #4113 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4113_qec :
    ∃ ψ, SS.IsAmplitudes code_4113 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4113 code_4113_ok (by decide) (by decide)

/-- Catalogue code #4114: ((6,2,2)), m=11, a=[4, 4, 5, 5, 8, 10], S=[0, 2]. -/
def code_4114 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_4114_ok : code_4114.OK := by native_decide
/-- Code #4114 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4114_qec :
    ∃ ψ, SS.IsAmplitudes code_4114 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4114 code_4114_ok (by decide) (by decide)

/-- Catalogue code #4115: ((6,2,2)), m=11, a=[4, 4, 5, 6, 6, 8], S=[0, 2]. -/
def code_4115 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4115_ok : code_4115.OK := by native_decide
/-- Code #4115 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4115_qec :
    ∃ ψ, SS.IsAmplitudes code_4115 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4115 code_4115_ok (by decide) (by decide)

/-- Catalogue code #4116: ((6,2,2)), m=11, a=[4, 4, 5, 6, 7, 8], S=[0, 2]. -/
def code_4116 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_4116_ok : code_4116.OK := by native_decide
/-- Code #4116 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4116_qec :
    ∃ ψ, SS.IsAmplitudes code_4116 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4116 code_4116_ok (by decide) (by decide)

/-- Catalogue code #4117: ((6,2,2)), m=11, a=[4, 4, 5, 6, 7, 8], S=[0, 10]. -/
def code_4117 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4117_ok : code_4117.OK := by native_decide
/-- Code #4117 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4117_qec :
    ∃ ψ, SS.IsAmplitudes code_4117 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4117 code_4117_ok (by decide) (by decide)

/-- Catalogue code #4118: ((6,2,2)), m=11, a=[4, 4, 5, 6, 7, 9], S=[0, 1]. -/
def code_4118 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4118_ok : code_4118.OK := by native_decide
/-- Code #4118 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4118_qec :
    ∃ ψ, SS.IsAmplitudes code_4118 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4118 code_4118_ok (by decide) (by decide)

/-- Catalogue code #4119: ((6,2,2)), m=11, a=[4, 4, 5, 6, 7, 9], S=[0, 3]. -/
def code_4119 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4119_ok : code_4119.OK := by native_decide
/-- Code #4119 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4119_qec :
    ∃ ψ, SS.IsAmplitudes code_4119 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4119 code_4119_ok (by decide) (by decide)

/-- Catalogue code #4120: ((6,2,2)), m=11, a=[4, 4, 5, 6, 7, 9], S=[0, 10]. -/
def code_4120 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4120_ok : code_4120.OK := by native_decide
/-- Code #4120 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4120_qec :
    ∃ ψ, SS.IsAmplitudes code_4120 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4120 code_4120_ok (by decide) (by decide)

/-- Catalogue code #4121: ((6,2,2)), m=11, a=[4, 4, 5, 6, 8, 9], S=[0, 1]. -/
def code_4121 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4121_ok : code_4121.OK := by native_decide
/-- Code #4121 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4121_qec :
    ∃ ψ, SS.IsAmplitudes code_4121 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4121 code_4121_ok (by decide) (by decide)

/-- Catalogue code #4122: ((6,2,2)), m=11, a=[4, 4, 5, 6, 8, 9], S=[0, 10]. -/
def code_4122 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4122_ok : code_4122.OK := by native_decide
/-- Code #4122 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4122_qec :
    ∃ ψ, SS.IsAmplitudes code_4122 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4122 code_4122_ok (by decide) (by decide)

/-- Catalogue code #4123: ((6,2,2)), m=11, a=[4, 4, 5, 6, 8, 10], S=[0, 2]. -/
def code_4123 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4123_ok : code_4123.OK := by native_decide
/-- Code #4123 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4123_qec :
    ∃ ψ, SS.IsAmplitudes code_4123 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4123 code_4123_ok (by decide) (by decide)

/-- Catalogue code #4124: ((6,2,2)), m=11, a=[4, 4, 5, 6, 9, 9], S=[0, 3]. -/
def code_4124 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4124_ok : code_4124.OK := by native_decide
/-- Code #4124 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4124_qec :
    ∃ ψ, SS.IsAmplitudes code_4124 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4124 code_4124_ok (by decide) (by decide)

/-- Catalogue code #4125: ((6,2,2)), m=11, a=[4, 4, 5, 6, 9, 10], S=[0, 3]. -/
def code_4125 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4125_ok : code_4125.OK := by native_decide
/-- Code #4125 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4125_qec :
    ∃ ψ, SS.IsAmplitudes code_4125 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4125 code_4125_ok (by decide) (by decide)

/-- Catalogue code #4126: ((6,2,2)), m=11, a=[4, 4, 5, 6, 9, 10], S=[0, 8]. -/
def code_4126 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4126_ok : code_4126.OK := by native_decide
/-- Code #4126 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4126_qec :
    ∃ ψ, SS.IsAmplitudes code_4126 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4126 code_4126_ok (by decide) (by decide)

/-- Catalogue code #4127: ((6,2,2)), m=11, a=[4, 4, 5, 7, 8, 9], S=[0, 10]. -/
def code_4127 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4127_ok : code_4127.OK := by native_decide
/-- Code #4127 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4127_qec :
    ∃ ψ, SS.IsAmplitudes code_4127 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4127 code_4127_ok (by decide) (by decide)

/-- Catalogue code #4128: ((6,2,2)), m=11, a=[4, 4, 5, 7, 10, 10], S=[0, 9]. -/
def code_4128 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4128_ok : code_4128.OK := by native_decide
/-- Code #4128 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4128_qec :
    ∃ ψ, SS.IsAmplitudes code_4128 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4128 code_4128_ok (by decide) (by decide)

/-- Catalogue code #4129: ((6,2,2)), m=11, a=[4, 4, 5, 8, 8, 9], S=[0, 10]. -/
def code_4129 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4129_ok : code_4129.OK := by native_decide
/-- Code #4129 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4129_qec :
    ∃ ψ, SS.IsAmplitudes code_4129 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4129 code_4129_ok (by decide) (by decide)

/-- Catalogue code #4130: ((6,2,2)), m=11, a=[4, 4, 5, 8, 9, 9], S=[0, 1]. -/
def code_4130 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4130_ok : code_4130.OK := by native_decide
/-- Code #4130 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4130_qec :
    ∃ ψ, SS.IsAmplitudes code_4130 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4130 code_4130_ok (by decide) (by decide)

/-- Catalogue code #4131: ((6,2,2)), m=11, a=[4, 4, 5, 8, 10, 10], S=[0, 2]. -/
def code_4131 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4131_ok : code_4131.OK := by native_decide
/-- Code #4131 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4131_qec :
    ∃ ψ, SS.IsAmplitudes code_4131 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4131 code_4131_ok (by decide) (by decide)

/-- Catalogue code #4132: ((6,2,2)), m=11, a=[4, 4, 5, 8, 10, 10], S=[0, 9]. -/
def code_4132 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4132_ok : code_4132.OK := by native_decide
/-- Code #4132 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4132_qec :
    ∃ ψ, SS.IsAmplitudes code_4132 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4132 code_4132_ok (by decide) (by decide)

/-- Catalogue code #4133: ((6,2,2)), m=11, a=[4, 4, 6, 6, 9, 10], S=[0, 3]. -/
def code_4133 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4133_ok : code_4133.OK := by native_decide
/-- Code #4133 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4133_qec :
    ∃ ψ, SS.IsAmplitudes code_4133 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4133 code_4133_ok (by decide) (by decide)

/-- Catalogue code #4134: ((6,2,2)), m=11, a=[4, 4, 6, 6, 9, 10], S=[0, 8]. -/
def code_4134 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4134_ok : code_4134.OK := by native_decide
/-- Code #4134 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4134_qec :
    ∃ ψ, SS.IsAmplitudes code_4134 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4134 code_4134_ok (by decide) (by decide)

/-- Catalogue code #4135: ((6,2,2)), m=11, a=[4, 4, 6, 7, 8, 8], S=[0, 2]. -/
def code_4135 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4135_ok : code_4135.OK := by native_decide
/-- Code #4135 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4135_qec :
    ∃ ψ, SS.IsAmplitudes code_4135 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4135 code_4135_ok (by decide) (by decide)

/-- Catalogue code #4136: ((6,2,2)), m=11, a=[4, 4, 6, 7, 8, 9], S=[0, 10]. -/
def code_4136 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4136_ok : code_4136.OK := by native_decide
/-- Code #4136 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4136_qec :
    ∃ ψ, SS.IsAmplitudes code_4136 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4136 code_4136_ok (by decide) (by decide)

/-- Catalogue code #4137: ((6,2,2)), m=11, a=[4, 4, 6, 9, 9, 10], S=[0, 3]. -/
def code_4137 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4137_ok : code_4137.OK := by native_decide
/-- Code #4137 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4137_qec :
    ∃ ψ, SS.IsAmplitudes code_4137 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4137 code_4137_ok (by decide) (by decide)

/-- Catalogue code #4138: ((6,2,2)), m=11, a=[4, 4, 6, 9, 9, 10], S=[0, 8]. -/
def code_4138 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4138_ok : code_4138.OK := by native_decide
/-- Code #4138 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4138_qec :
    ∃ ψ, SS.IsAmplitudes code_4138 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4138 code_4138_ok (by decide) (by decide)

/-- Catalogue code #4139: ((6,2,2)), m=11, a=[4, 4, 6, 9, 10, 10], S=[0, 8]. -/
def code_4139 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4139_ok : code_4139.OK := by native_decide
/-- Code #4139 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4139_qec :
    ∃ ψ, SS.IsAmplitudes code_4139 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4139 code_4139_ok (by decide) (by decide)

/-- Catalogue code #4140: ((6,2,2)), m=11, a=[4, 4, 7, 9, 10, 10], S=[0, 5]. -/
def code_4140 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4140_ok : code_4140.OK := by native_decide
/-- Code #4140 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4140_qec :
    ∃ ψ, SS.IsAmplitudes code_4140 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4140 code_4140_ok (by decide) (by decide)

/-- Catalogue code #4141: ((6,2,2)), m=11, a=[4, 4, 7, 9, 10, 10], S=[0, 6]. -/
def code_4141 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (4 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4141_ok : code_4141.OK := by native_decide
/-- Code #4141 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4141_qec :
    ∃ ψ, SS.IsAmplitudes code_4141 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4141 code_4141_ok (by decide) (by decide)

/-- Catalogue code #4142: ((6,2,2)), m=11, a=[4, 5, 5, 5, 7, 8], S=[0, 9]. -/
def code_4142 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4142_ok : code_4142.OK := by native_decide
/-- Code #4142 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4142_qec :
    ∃ ψ, SS.IsAmplitudes code_4142 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4142 code_4142_ok (by decide) (by decide)

/-- Catalogue code #4143: ((6,2,2)), m=11, a=[4, 5, 5, 5, 8, 8], S=[0, 9]. -/
def code_4143 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4143_ok : code_4143.OK := by native_decide
/-- Code #4143 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4143_qec :
    ∃ ψ, SS.IsAmplitudes code_4143 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4143 code_4143_ok (by decide) (by decide)

/-- Catalogue code #4144: ((6,2,2)), m=11, a=[4, 5, 5, 5, 8, 9], S=[0, 1]. -/
def code_4144 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4144_ok : code_4144.OK := by native_decide
/-- Code #4144 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4144_qec :
    ∃ ψ, SS.IsAmplitudes code_4144 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4144 code_4144_ok (by decide) (by decide)

/-- Catalogue code #4145: ((6,2,2)), m=11, a=[4, 5, 5, 5, 8, 10], S=[0, 2]. -/
def code_4145 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4145_ok : code_4145.OK := by native_decide
/-- Code #4145 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4145_qec :
    ∃ ψ, SS.IsAmplitudes code_4145 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4145 code_4145_ok (by decide) (by decide)

/-- Catalogue code #4146: ((6,2,2)), m=11, a=[4, 5, 5, 6, 7, 8], S=[0, 10]. -/
def code_4146 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4146_ok : code_4146.OK := by native_decide
/-- Code #4146 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4146_qec :
    ∃ ψ, SS.IsAmplitudes code_4146 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4146 code_4146_ok (by decide) (by decide)

/-- Catalogue code #4147: ((6,2,2)), m=11, a=[4, 5, 5, 6, 8, 8], S=[0, 10]. -/
def code_4147 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4147_ok : code_4147.OK := by native_decide
/-- Code #4147 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4147_qec :
    ∃ ψ, SS.IsAmplitudes code_4147 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4147 code_4147_ok (by decide) (by decide)

/-- Catalogue code #4148: ((6,2,2)), m=11, a=[4, 5, 5, 6, 9, 10], S=[0, 8]. -/
def code_4148 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4148_ok : code_4148.OK := by native_decide
/-- Code #4148 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4148_qec :
    ∃ ψ, SS.IsAmplitudes code_4148 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4148 code_4148_ok (by decide) (by decide)

/-- Catalogue code #4149: ((6,2,2)), m=11, a=[4, 5, 5, 7, 7, 8], S=[0, 1]. -/
def code_4149 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4149_ok : code_4149.OK := by native_decide
/-- Code #4149 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4149_qec :
    ∃ ψ, SS.IsAmplitudes code_4149 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4149 code_4149_ok (by decide) (by decide)

/-- Catalogue code #4150: ((6,2,2)), m=11, a=[4, 5, 5, 7, 7, 8], S=[0, 2]. -/
def code_4150 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11)]
theorem code_4150_ok : code_4150.OK := by native_decide
/-- Code #4150 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4150_qec :
    ∃ ψ, SS.IsAmplitudes code_4150 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4150 code_4150_ok (by decide) (by decide)

/-- Catalogue code #4151: ((6,2,2)), m=11, a=[4, 5, 5, 7, 7, 10], S=[0, 2]. -/
def code_4151 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11)]
theorem code_4151_ok : code_4151.OK := by native_decide
/-- Code #4151 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4151_qec :
    ∃ ψ, SS.IsAmplitudes code_4151 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4151 code_4151_ok (by decide) (by decide)

/-- Catalogue code #4152: ((6,2,2)), m=11, a=[4, 5, 5, 7, 7, 10], S=[0, 3]. -/
def code_4152 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4152_ok : code_4152.OK := by native_decide
/-- Code #4152 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4152_qec :
    ∃ ψ, SS.IsAmplitudes code_4152 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4152 code_4152_ok (by decide) (by decide)

/-- Catalogue code #4153: ((6,2,2)), m=11, a=[4, 5, 5, 7, 8, 8], S=[0, 1]. -/
def code_4153 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4153_ok : code_4153.OK := by native_decide
/-- Code #4153 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4153_qec :
    ∃ ψ, SS.IsAmplitudes code_4153 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4153 code_4153_ok (by decide) (by decide)

/-- Catalogue code #4154: ((6,2,2)), m=11, a=[4, 5, 5, 7, 8, 8], S=[0, 9]. -/
def code_4154 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4154_ok : code_4154.OK := by native_decide
/-- Code #4154 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4154_qec :
    ∃ ψ, SS.IsAmplitudes code_4154 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4154 code_4154_ok (by decide) (by decide)

/-- Catalogue code #4155: ((6,2,2)), m=11, a=[4, 5, 5, 7, 8, 8], S=[0, 10]. -/
def code_4155 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4155_ok : code_4155.OK := by native_decide
/-- Code #4155 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4155_qec :
    ∃ ψ, SS.IsAmplitudes code_4155 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4155 code_4155_ok (by decide) (by decide)

/-- Catalogue code #4156: ((6,2,2)), m=11, a=[4, 5, 5, 7, 8, 9], S=[0, 1]. -/
def code_4156 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4156_ok : code_4156.OK := by native_decide
/-- Code #4156 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4156_qec :
    ∃ ψ, SS.IsAmplitudes code_4156 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4156 code_4156_ok (by decide) (by decide)

/-- Catalogue code #4157: ((6,2,2)), m=11, a=[4, 5, 5, 7, 8, 10], S=[0, 2]. -/
def code_4157 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4157_ok : code_4157.OK := by native_decide
/-- Code #4157 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4157_qec :
    ∃ ψ, SS.IsAmplitudes code_4157 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4157 code_4157_ok (by decide) (by decide)

/-- Catalogue code #4158: ((6,2,2)), m=11, a=[4, 5, 5, 7, 9, 10], S=[0, 3]. -/
def code_4158 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4158_ok : code_4158.OK := by native_decide
/-- Code #4158 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4158_qec :
    ∃ ψ, SS.IsAmplitudes code_4158 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4158 code_4158_ok (by decide) (by decide)

/-- Catalogue code #4159: ((6,2,2)), m=11, a=[4, 5, 5, 7, 9, 10], S=[0, 8]. -/
def code_4159 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4159_ok : code_4159.OK := by native_decide
/-- Code #4159 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4159_qec :
    ∃ ψ, SS.IsAmplitudes code_4159 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4159 code_4159_ok (by decide) (by decide)

/-- Catalogue code #4160: ((6,2,2)), m=11, a=[4, 5, 5, 8, 8, 9], S=[0, 10]. -/
def code_4160 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4160_ok : code_4160.OK := by native_decide
/-- Code #4160 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4160_qec :
    ∃ ψ, SS.IsAmplitudes code_4160 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4160 code_4160_ok (by decide) (by decide)

/-- Catalogue code #4161: ((6,2,2)), m=11, a=[4, 5, 5, 8, 8, 10], S=[0, 9]. -/
def code_4161 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4161_ok : code_4161.OK := by native_decide
/-- Code #4161 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4161_qec :
    ∃ ψ, SS.IsAmplitudes code_4161 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4161 code_4161_ok (by decide) (by decide)

/-- Catalogue code #4162: ((6,2,2)), m=11, a=[4, 5, 5, 8, 9, 9], S=[0, 1]. -/
def code_4162 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4162_ok : code_4162.OK := by native_decide
/-- Code #4162 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4162_qec :
    ∃ ψ, SS.IsAmplitudes code_4162 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4162 code_4162_ok (by decide) (by decide)

/-- Catalogue code #4163: ((6,2,2)), m=11, a=[4, 5, 5, 8, 9, 9], S=[0, 10]. -/
def code_4163 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4163_ok : code_4163.OK := by native_decide
/-- Code #4163 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4163_qec :
    ∃ ψ, SS.IsAmplitudes code_4163 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4163 code_4163_ok (by decide) (by decide)

/-- Catalogue code #4164: ((6,2,2)), m=11, a=[4, 5, 5, 8, 10, 10], S=[0, 2]. -/
def code_4164 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4164_ok : code_4164.OK := by native_decide
/-- Code #4164 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4164_qec :
    ∃ ψ, SS.IsAmplitudes code_4164 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4164 code_4164_ok (by decide) (by decide)

/-- Catalogue code #4165: ((6,2,2)), m=11, a=[4, 5, 6, 6, 7, 10], S=[0, 8]. -/
def code_4165 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4165_ok : code_4165.OK := by native_decide
/-- Code #4165 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4165_qec :
    ∃ ψ, SS.IsAmplitudes code_4165 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4165 code_4165_ok (by decide) (by decide)

/-- Catalogue code #4166: ((6,2,2)), m=11, a=[4, 5, 6, 7, 7, 10], S=[0, 8]. -/
def code_4166 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4166_ok : code_4166.OK := by native_decide
/-- Code #4166 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4166_qec :
    ∃ ψ, SS.IsAmplitudes code_4166 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4166 code_4166_ok (by decide) (by decide)

/-- Catalogue code #4167: ((6,2,2)), m=11, a=[4, 5, 6, 7, 7, 10], S=[0, 9]. -/
def code_4167 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_4167_ok : code_4167.OK := by native_decide
/-- Code #4167 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4167_qec :
    ∃ ψ, SS.IsAmplitudes code_4167 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4167 code_4167_ok (by decide) (by decide)

/-- Catalogue code #4168: ((6,2,2)), m=11, a=[4, 5, 6, 7, 8, 8], S=[0, 10]. -/
def code_4168 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4168_ok : code_4168.OK := by native_decide
/-- Code #4168 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4168_qec :
    ∃ ψ, SS.IsAmplitudes code_4168 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4168 code_4168_ok (by decide) (by decide)

/-- Catalogue code #4169: ((6,2,2)), m=11, a=[4, 5, 6, 7, 8, 9], S=[0, 10]. -/
def code_4169 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_4169_ok : code_4169.OK := by native_decide
/-- Code #4169 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4169_qec :
    ∃ ψ, SS.IsAmplitudes code_4169 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4169 code_4169_ok (by decide) (by decide)

/-- Catalogue code #4170: ((6,2,2)), m=11, a=[4, 5, 6, 7, 8, 10], S=[0, 9]. -/
def code_4170 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4170_ok : code_4170.OK := by native_decide
/-- Code #4170 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4170_qec :
    ∃ ψ, SS.IsAmplitudes code_4170 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4170 code_4170_ok (by decide) (by decide)

/-- Catalogue code #4171: ((6,2,2)), m=11, a=[4, 5, 6, 7, 9, 9], S=[0, 8]. -/
def code_4171 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4171_ok : code_4171.OK := by native_decide
/-- Code #4171 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4171_qec :
    ∃ ψ, SS.IsAmplitudes code_4171 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4171 code_4171_ok (by decide) (by decide)

/-- Catalogue code #4172: ((6,2,2)), m=11, a=[4, 5, 6, 7, 9, 9], S=[0, 10]. -/
def code_4172 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4172_ok : code_4172.OK := by native_decide
/-- Code #4172 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4172_qec :
    ∃ ψ, SS.IsAmplitudes code_4172 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4172 code_4172_ok (by decide) (by decide)

/-- Catalogue code #4173: ((6,2,2)), m=11, a=[4, 5, 6, 8, 8, 8], S=[0, 10]. -/
def code_4173 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4173_ok : code_4173.OK := by native_decide
/-- Code #4173 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4173_qec :
    ∃ ψ, SS.IsAmplitudes code_4173 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4173 code_4173_ok (by decide) (by decide)

/-- Catalogue code #4174: ((6,2,2)), m=11, a=[4, 5, 6, 8, 8, 10], S=[0, 9]. -/
def code_4174 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4174_ok : code_4174.OK := by native_decide
/-- Code #4174 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4174_qec :
    ∃ ψ, SS.IsAmplitudes code_4174 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4174 code_4174_ok (by decide) (by decide)

/-- Catalogue code #4175: ((6,2,2)), m=11, a=[4, 5, 6, 8, 9, 9], S=[0, 1]. -/
def code_4175 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4175_ok : code_4175.OK := by native_decide
/-- Code #4175 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4175_qec :
    ∃ ψ, SS.IsAmplitudes code_4175 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4175 code_4175_ok (by decide) (by decide)

/-- Catalogue code #4176: ((6,2,2)), m=11, a=[4, 5, 6, 8, 10, 10], S=[0, 2]. -/
def code_4176 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4176_ok : code_4176.OK := by native_decide
/-- Code #4176 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4176_qec :
    ∃ ψ, SS.IsAmplitudes code_4176 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4176 code_4176_ok (by decide) (by decide)

/-- Catalogue code #4177: ((6,2,2)), m=11, a=[4, 5, 6, 9, 9, 9], S=[0, 10]. -/
def code_4177 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4177_ok : code_4177.OK := by native_decide
/-- Code #4177 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4177_qec :
    ∃ ψ, SS.IsAmplitudes code_4177 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4177 code_4177_ok (by decide) (by decide)

/-- Catalogue code #4178: ((6,2,2)), m=11, a=[4, 5, 6, 9, 9, 10], S=[0, 3]. -/
def code_4178 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4178_ok : code_4178.OK := by native_decide
/-- Code #4178 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4178_qec :
    ∃ ψ, SS.IsAmplitudes code_4178 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4178 code_4178_ok (by decide) (by decide)

/-- Catalogue code #4179: ((6,2,2)), m=11, a=[4, 5, 6, 9, 10, 10], S=[0, 3]. -/
def code_4179 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4179_ok : code_4179.OK := by native_decide
/-- Code #4179 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4179_qec :
    ∃ ψ, SS.IsAmplitudes code_4179 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4179 code_4179_ok (by decide) (by decide)

/-- Catalogue code #4180: ((6,2,2)), m=11, a=[4, 5, 6, 9, 10, 10], S=[0, 8]. -/
def code_4180 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4180_ok : code_4180.OK := by native_decide
/-- Code #4180 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4180_qec :
    ∃ ψ, SS.IsAmplitudes code_4180 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4180 code_4180_ok (by decide) (by decide)

/-- Catalogue code #4181: ((6,2,2)), m=11, a=[4, 5, 7, 7, 8, 9], S=[0, 1]. -/
def code_4181 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4181_ok : code_4181.OK := by native_decide
/-- Code #4181 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4181_qec :
    ∃ ψ, SS.IsAmplitudes code_4181 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4181 code_4181_ok (by decide) (by decide)

/-- Catalogue code #4182: ((6,2,2)), m=11, a=[4, 5, 7, 7, 8, 10], S=[0, 2]. -/
def code_4182 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4182_ok : code_4182.OK := by native_decide
/-- Code #4182 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4182_qec :
    ∃ ψ, SS.IsAmplitudes code_4182 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4182 code_4182_ok (by decide) (by decide)

/-- Catalogue code #4183: ((6,2,2)), m=11, a=[4, 5, 7, 7, 9, 10], S=[0, 3]. -/
def code_4183 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4183_ok : code_4183.OK := by native_decide
/-- Code #4183 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4183_qec :
    ∃ ψ, SS.IsAmplitudes code_4183 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4183 code_4183_ok (by decide) (by decide)

/-- Catalogue code #4184: ((6,2,2)), m=11, a=[4, 5, 7, 8, 8, 8], S=[0, 1]. -/
def code_4184 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4184_ok : code_4184.OK := by native_decide
/-- Code #4184 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4184_qec :
    ∃ ψ, SS.IsAmplitudes code_4184 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4184 code_4184_ok (by decide) (by decide)

/-- Catalogue code #4185: ((6,2,2)), m=11, a=[4, 5, 7, 8, 8, 8], S=[0, 9]. -/
def code_4185 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4185_ok : code_4185.OK := by native_decide
/-- Code #4185 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4185_qec :
    ∃ ψ, SS.IsAmplitudes code_4185 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4185 code_4185_ok (by decide) (by decide)

/-- Catalogue code #4186: ((6,2,2)), m=11, a=[4, 5, 7, 8, 9, 9], S=[0, 10]. -/
def code_4186 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4186_ok : code_4186.OK := by native_decide
/-- Code #4186 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4186_qec :
    ∃ ψ, SS.IsAmplitudes code_4186 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4186 code_4186_ok (by decide) (by decide)

/-- Catalogue code #4187: ((6,2,2)), m=11, a=[4, 5, 7, 8, 10, 10], S=[0, 2]. -/
def code_4187 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4187_ok : code_4187.OK := by native_decide
/-- Code #4187 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4187_qec :
    ∃ ψ, SS.IsAmplitudes code_4187 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4187 code_4187_ok (by decide) (by decide)

/-- Catalogue code #4188: ((6,2,2)), m=11, a=[4, 5, 7, 8, 10, 10], S=[0, 9]. -/
def code_4188 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4188_ok : code_4188.OK := by native_decide
/-- Code #4188 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4188_qec :
    ∃ ψ, SS.IsAmplitudes code_4188 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4188 code_4188_ok (by decide) (by decide)

/-- Catalogue code #4189: ((6,2,2)), m=11, a=[4, 5, 7, 9, 9, 10], S=[0, 3]. -/
def code_4189 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4189_ok : code_4189.OK := by native_decide
/-- Code #4189 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4189_qec :
    ∃ ψ, SS.IsAmplitudes code_4189 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4189 code_4189_ok (by decide) (by decide)

/-- Catalogue code #4190: ((6,2,2)), m=11, a=[4, 5, 7, 9, 9, 10], S=[0, 8]. -/
def code_4190 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4190_ok : code_4190.OK := by native_decide
/-- Code #4190 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4190_qec :
    ∃ ψ, SS.IsAmplitudes code_4190 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4190 code_4190_ok (by decide) (by decide)

/-- Catalogue code #4191: ((6,2,2)), m=11, a=[4, 5, 8, 8, 8, 9], S=[0, 10]. -/
def code_4191 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4191_ok : code_4191.OK := by native_decide
/-- Code #4191 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4191_qec :
    ∃ ψ, SS.IsAmplitudes code_4191 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4191 code_4191_ok (by decide) (by decide)

/-- Catalogue code #4192: ((6,2,2)), m=11, a=[4, 5, 8, 8, 8, 10], S=[0, 9]. -/
def code_4192 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4192_ok : code_4192.OK := by native_decide
/-- Code #4192 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4192_qec :
    ∃ ψ, SS.IsAmplitudes code_4192 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4192 code_4192_ok (by decide) (by decide)

/-- Catalogue code #4193: ((6,2,2)), m=11, a=[4, 5, 8, 8, 9, 9], S=[0, 1]. -/
def code_4193 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4193_ok : code_4193.OK := by native_decide
/-- Code #4193 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4193_qec :
    ∃ ψ, SS.IsAmplitudes code_4193 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4193 code_4193_ok (by decide) (by decide)

/-- Catalogue code #4194: ((6,2,2)), m=11, a=[4, 5, 8, 8, 10, 10], S=[0, 9]. -/
def code_4194 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4194_ok : code_4194.OK := by native_decide
/-- Code #4194 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4194_qec :
    ∃ ψ, SS.IsAmplitudes code_4194 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4194 code_4194_ok (by decide) (by decide)

/-- Catalogue code #4195: ((6,2,2)), m=11, a=[4, 6, 6, 6, 7, 8], S=[0, 1]. -/
def code_4195 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4195_ok : code_4195.OK := by native_decide
/-- Code #4195 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4195_qec :
    ∃ ψ, SS.IsAmplitudes code_4195 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4195 code_4195_ok (by decide) (by decide)

/-- Catalogue code #4196: ((6,2,2)), m=11, a=[4, 6, 6, 6, 7, 8], S=[0, 2]. -/
def code_4196 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4196_ok : code_4196.OK := by native_decide
/-- Code #4196 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4196_qec :
    ∃ ψ, SS.IsAmplitudes code_4196 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4196 code_4196_ok (by decide) (by decide)

/-- Catalogue code #4197: ((6,2,2)), m=11, a=[4, 6, 6, 6, 7, 10], S=[0, 3]. -/
def code_4197 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4197_ok : code_4197.OK := by native_decide
/-- Code #4197 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4197_qec :
    ∃ ψ, SS.IsAmplitudes code_4197 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4197 code_4197_ok (by decide) (by decide)

/-- Catalogue code #4198: ((6,2,2)), m=11, a=[4, 6, 6, 7, 8, 9], S=[0, 10]. -/
def code_4198 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4198_ok : code_4198.OK := by native_decide
/-- Code #4198 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4198_qec :
    ∃ ψ, SS.IsAmplitudes code_4198 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4198 code_4198_ok (by decide) (by decide)

/-- Catalogue code #4199: ((6,2,2)), m=11, a=[4, 6, 6, 7, 8, 10], S=[0, 9]. -/
def code_4199 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11)]
theorem code_4199_ok : code_4199.OK := by native_decide
/-- Code #4199 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4199_qec :
    ∃ ψ, SS.IsAmplitudes code_4199 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4199 code_4199_ok (by decide) (by decide)

/-- Catalogue code #4200: ((6,2,2)), m=11, a=[4, 6, 6, 7, 9, 10], S=[0, 8]. -/
def code_4200 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4200_ok : code_4200.OK := by native_decide
/-- Code #4200 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4200_qec :
    ∃ ψ, SS.IsAmplitudes code_4200 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4200 code_4200_ok (by decide) (by decide)

/-- Catalogue code #4201: ((6,2,2)), m=11, a=[4, 6, 6, 7, 10, 10], S=[0, 2]. -/
def code_4201 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4201_ok : code_4201.OK := by native_decide
/-- Code #4201 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4201_qec :
    ∃ ψ, SS.IsAmplitudes code_4201 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4201 code_4201_ok (by decide) (by decide)

/-- Catalogue code #4202: ((6,2,2)), m=11, a=[4, 6, 6, 7, 10, 10], S=[0, 8]. -/
def code_4202 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4202_ok : code_4202.OK := by native_decide
/-- Code #4202 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4202_qec :
    ∃ ψ, SS.IsAmplitudes code_4202 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4202 code_4202_ok (by decide) (by decide)

/-- Catalogue code #4203: ((6,2,2)), m=11, a=[4, 6, 6, 9, 9, 10], S=[0, 3]. -/
def code_4203 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4203_ok : code_4203.OK := by native_decide
/-- Code #4203 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4203_qec :
    ∃ ψ, SS.IsAmplitudes code_4203 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4203 code_4203_ok (by decide) (by decide)

/-- Catalogue code #4204: ((6,2,2)), m=11, a=[4, 6, 6, 9, 10, 10], S=[0, 8]. -/
def code_4204 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_4204_ok : code_4204.OK := by native_decide
/-- Code #4204 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4204_qec :
    ∃ ψ, SS.IsAmplitudes code_4204 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4204 code_4204_ok (by decide) (by decide)

/-- Catalogue code #4205: ((6,2,2)), m=11, a=[4, 6, 7, 7, 8, 8], S=[0, 9]. -/
def code_4205 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4205_ok : code_4205.OK := by native_decide
/-- Code #4205 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4205_qec :
    ∃ ψ, SS.IsAmplitudes code_4205 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4205 code_4205_ok (by decide) (by decide)

/-- Catalogue code #4206: ((6,2,2)), m=11, a=[4, 6, 7, 7, 10, 10], S=[0, 2]. -/
def code_4206 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4206_ok : code_4206.OK := by native_decide
/-- Code #4206 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4206_qec :
    ∃ ψ, SS.IsAmplitudes code_4206 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4206 code_4206_ok (by decide) (by decide)

/-- Catalogue code #4207: ((6,2,2)), m=11, a=[4, 6, 7, 7, 10, 10], S=[0, 9]. -/
def code_4207 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4207_ok : code_4207.OK := by native_decide
/-- Code #4207 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4207_qec :
    ∃ ψ, SS.IsAmplitudes code_4207 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4207 code_4207_ok (by decide) (by decide)

/-- Catalogue code #4208: ((6,2,2)), m=11, a=[4, 6, 7, 8, 8, 9], S=[0, 10]. -/
def code_4208 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4208_ok : code_4208.OK := by native_decide
/-- Code #4208 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4208_qec :
    ∃ ψ, SS.IsAmplitudes code_4208 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4208 code_4208_ok (by decide) (by decide)

/-- Catalogue code #4209: ((6,2,2)), m=11, a=[4, 6, 7, 8, 8, 10], S=[0, 9]. -/
def code_4209 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4209_ok : code_4209.OK := by native_decide
/-- Code #4209 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4209_qec :
    ∃ ψ, SS.IsAmplitudes code_4209 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4209 code_4209_ok (by decide) (by decide)

/-- Catalogue code #4210: ((6,2,2)), m=11, a=[4, 6, 7, 8, 10, 10], S=[0, 2]. -/
def code_4210 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4210_ok : code_4210.OK := by native_decide
/-- Code #4210 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4210_qec :
    ∃ ψ, SS.IsAmplitudes code_4210 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4210 code_4210_ok (by decide) (by decide)

/-- Catalogue code #4211: ((6,2,2)), m=11, a=[4, 6, 7, 8, 10, 10], S=[0, 9]. -/
def code_4211 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4211_ok : code_4211.OK := by native_decide
/-- Code #4211 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4211_qec :
    ∃ ψ, SS.IsAmplitudes code_4211 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4211 code_4211_ok (by decide) (by decide)

/-- Catalogue code #4212: ((6,2,2)), m=11, a=[4, 6, 7, 9, 10, 10], S=[0, 3]. -/
def code_4212 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4212_ok : code_4212.OK := by native_decide
/-- Code #4212 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4212_qec :
    ∃ ψ, SS.IsAmplitudes code_4212 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4212 code_4212_ok (by decide) (by decide)

/-- Catalogue code #4213: ((6,2,2)), m=11, a=[4, 6, 7, 9, 10, 10], S=[0, 8]. -/
def code_4213 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, false, true, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4213_ok : code_4213.OK := by native_decide
/-- Code #4213 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4213_qec :
    ∃ ψ, SS.IsAmplitudes code_4213 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4213 code_4213_ok (by decide) (by decide)

/-- Catalogue code #4214: ((6,2,2)), m=11, a=[4, 6, 9, 9, 10, 10], S=[0, 8]. -/
def code_4214 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4214_ok : code_4214.OK := by native_decide
/-- Code #4214 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4214_qec :
    ∃ ψ, SS.IsAmplitudes code_4214 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4214 code_4214_ok (by decide) (by decide)

/-- Catalogue code #4215: ((6,2,2)), m=11, a=[4, 7, 7, 8, 9, 9], S=[0, 1]. -/
def code_4215 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4215_ok : code_4215.OK := by native_decide
/-- Code #4215 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4215_qec :
    ∃ ψ, SS.IsAmplitudes code_4215 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4215 code_4215_ok (by decide) (by decide)

/-- Catalogue code #4216: ((6,2,2)), m=11, a=[4, 7, 7, 8, 9, 9], S=[0, 10]. -/
def code_4216 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4216_ok : code_4216.OK := by native_decide
/-- Code #4216 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4216_qec :
    ∃ ψ, SS.IsAmplitudes code_4216 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4216 code_4216_ok (by decide) (by decide)

/-- Catalogue code #4217: ((6,2,2)), m=11, a=[4, 7, 7, 8, 9, 10], S=[0, 6]. -/
def code_4217 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4217_ok : code_4217.OK := by native_decide
/-- Code #4217 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4217_qec :
    ∃ ψ, SS.IsAmplitudes code_4217 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4217 code_4217_ok (by decide) (by decide)

/-- Catalogue code #4218: ((6,2,2)), m=11, a=[4, 7, 7, 9, 9, 10], S=[0, 3]. -/
def code_4218 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4218_ok : code_4218.OK := by native_decide
/-- Code #4218 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4218_qec :
    ∃ ψ, SS.IsAmplitudes code_4218 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4218 code_4218_ok (by decide) (by decide)

/-- Catalogue code #4219: ((6,2,2)), m=11, a=[4, 7, 7, 9, 10, 10], S=[0, 5]. -/
def code_4219 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4219_ok : code_4219.OK := by native_decide
/-- Code #4219 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4219_qec :
    ∃ ψ, SS.IsAmplitudes code_4219 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4219 code_4219_ok (by decide) (by decide)

/-- Catalogue code #4220: ((6,2,2)), m=11, a=[4, 7, 8, 8, 9, 9], S=[0, 5]. -/
def code_4220 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4220_ok : code_4220.OK := by native_decide
/-- Code #4220 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4220_qec :
    ∃ ψ, SS.IsAmplitudes code_4220 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4220 code_4220_ok (by decide) (by decide)

/-- Catalogue code #4221: ((6,2,2)), m=11, a=[4, 7, 8, 8, 10, 10], S=[0, 5]. -/
def code_4221 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4221_ok : code_4221.OK := by native_decide
/-- Code #4221 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4221_qec :
    ∃ ψ, SS.IsAmplitudes code_4221 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4221 code_4221_ok (by decide) (by decide)

/-- Catalogue code #4222: ((6,2,2)), m=11, a=[4, 7, 8, 8, 10, 10], S=[0, 9]. -/
def code_4222 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4222_ok : code_4222.OK := by native_decide
/-- Code #4222 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4222_qec :
    ∃ ψ, SS.IsAmplitudes code_4222 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4222 code_4222_ok (by decide) (by decide)

/-- Catalogue code #4223: ((6,2,2)), m=11, a=[4, 7, 8, 9, 9, 9], S=[0, 1]. -/
def code_4223 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4223_ok : code_4223.OK := by native_decide
/-- Code #4223 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4223_qec :
    ∃ ψ, SS.IsAmplitudes code_4223 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4223 code_4223_ok (by decide) (by decide)

/-- Catalogue code #4224: ((6,2,2)), m=11, a=[4, 7, 8, 9, 9, 10], S=[0, 6]. -/
def code_4224 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (6 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4224_ok : code_4224.OK := by native_decide
/-- Code #4224 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4224_qec :
    ∃ ψ, SS.IsAmplitudes code_4224 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4224 code_4224_ok (by decide) (by decide)

/-- Catalogue code #4225: ((6,2,2)), m=11, a=[4, 7, 8, 9, 10, 10], S=[0, 5]. -/
def code_4225 : ExampleData 6 11 2 where
  a := ![(4 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (5 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4225_ok : code_4225.OK := by native_decide
/-- Code #4225 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4225_qec :
    ∃ ψ, SS.IsAmplitudes code_4225 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4225 code_4225_ok (by decide) (by decide)

/-- Catalogue code #4226: ((6,2,2)), m=11, a=[5, 5, 5, 7, 7, 8], S=[0, 1]. -/
def code_4226 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4226_ok : code_4226.OK := by native_decide
/-- Code #4226 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4226_qec :
    ∃ ψ, SS.IsAmplitudes code_4226 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4226 code_4226_ok (by decide) (by decide)

/-- Catalogue code #4227: ((6,2,2)), m=11, a=[5, 5, 5, 7, 7, 10], S=[0, 3]. -/
def code_4227 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4227_ok : code_4227.OK := by native_decide
/-- Code #4227 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4227_qec :
    ∃ ψ, SS.IsAmplitudes code_4227 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4227 code_4227_ok (by decide) (by decide)

/-- Catalogue code #4228: ((6,2,2)), m=11, a=[5, 5, 5, 7, 8, 8], S=[0, 1]. -/
def code_4228 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4228_ok : code_4228.OK := by native_decide
/-- Code #4228 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4228_qec :
    ∃ ψ, SS.IsAmplitudes code_4228 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4228 code_4228_ok (by decide) (by decide)

/-- Catalogue code #4229: ((6,2,2)), m=11, a=[5, 5, 5, 7, 8, 8], S=[0, 9]. -/
def code_4229 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4229_ok : code_4229.OK := by native_decide
/-- Code #4229 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4229_qec :
    ∃ ψ, SS.IsAmplitudes code_4229 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4229 code_4229_ok (by decide) (by decide)

/-- Catalogue code #4230: ((6,2,2)), m=11, a=[5, 5, 5, 7, 8, 10], S=[0, 9]. -/
def code_4230 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4230_ok : code_4230.OK := by native_decide
/-- Code #4230 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4230_qec :
    ∃ ψ, SS.IsAmplitudes code_4230 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4230 code_4230_ok (by decide) (by decide)

/-- Catalogue code #4231: ((6,2,2)), m=11, a=[5, 5, 5, 8, 8, 10], S=[0, 4]. -/
def code_4231 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4231_ok : code_4231.OK := by native_decide
/-- Code #4231 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4231_qec :
    ∃ ψ, SS.IsAmplitudes code_4231 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4231 code_4231_ok (by decide) (by decide)

/-- Catalogue code #4232: ((6,2,2)), m=11, a=[5, 5, 5, 8, 8, 10], S=[0, 9]. -/
def code_4232 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4232_ok : code_4232.OK := by native_decide
/-- Code #4232 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4232_qec :
    ∃ ψ, SS.IsAmplitudes code_4232 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4232 code_4232_ok (by decide) (by decide)

/-- Catalogue code #4233: ((6,2,2)), m=11, a=[5, 5, 5, 8, 9, 9], S=[0, 1]. -/
def code_4233 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-7 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4233_ok : code_4233.OK := by native_decide
/-- Code #4233 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4233_qec :
    ∃ ψ, SS.IsAmplitudes code_4233 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4233 code_4233_ok (by decide) (by decide)

/-- Catalogue code #4234: ((6,2,2)), m=11, a=[5, 5, 5, 8, 9, 9], S=[0, 4]. -/
def code_4234 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4234_ok : code_4234.OK := by native_decide
/-- Code #4234 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4234_qec :
    ∃ ψ, SS.IsAmplitudes code_4234 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4234 code_4234_ok (by decide) (by decide)

/-- Catalogue code #4235: ((6,2,2)), m=11, a=[5, 5, 5, 8, 9, 9], S=[0, 7]. -/
def code_4235 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4235_ok : code_4235.OK := by native_decide
/-- Code #4235 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4235_qec :
    ∃ ψ, SS.IsAmplitudes code_4235 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4235 code_4235_ok (by decide) (by decide)

/-- Catalogue code #4236: ((6,2,2)), m=11, a=[5, 5, 5, 8, 9, 10], S=[0, 7]. -/
def code_4236 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4236_ok : code_4236.OK := by native_decide
/-- Code #4236 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4236_qec :
    ∃ ψ, SS.IsAmplitudes code_4236 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4236 code_4236_ok (by decide) (by decide)

/-- Catalogue code #4237: ((6,2,2)), m=11, a=[5, 5, 5, 8, 10, 10], S=[0, 2]. -/
def code_4237 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4237_ok : code_4237.OK := by native_decide
/-- Code #4237 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4237_qec :
    ∃ ψ, SS.IsAmplitudes code_4237 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4237 code_4237_ok (by decide) (by decide)

/-- Catalogue code #4238: ((6,2,2)), m=11, a=[5, 5, 6, 7, 7, 8], S=[0, 2]. -/
def code_4238 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4238_ok : code_4238.OK := by native_decide
/-- Code #4238 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4238_qec :
    ∃ ψ, SS.IsAmplitudes code_4238 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4238 code_4238_ok (by decide) (by decide)

/-- Catalogue code #4239: ((6,2,2)), m=11, a=[5, 5, 6, 7, 7, 9], S=[0, 3]. -/
def code_4239 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4239_ok : code_4239.OK := by native_decide
/-- Code #4239 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4239_qec :
    ∃ ψ, SS.IsAmplitudes code_4239 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4239 code_4239_ok (by decide) (by decide)

/-- Catalogue code #4240: ((6,2,2)), m=11, a=[5, 5, 6, 7, 8, 8], S=[0, 2]. -/
def code_4240 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4240_ok : code_4240.OK := by native_decide
/-- Code #4240 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4240_qec :
    ∃ ψ, SS.IsAmplitudes code_4240 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4240 code_4240_ok (by decide) (by decide)

/-- Catalogue code #4241: ((6,2,2)), m=11, a=[5, 5, 6, 7, 8, 8], S=[0, 10]. -/
def code_4241 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4241_ok : code_4241.OK := by native_decide
/-- Code #4241 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4241_qec :
    ∃ ψ, SS.IsAmplitudes code_4241 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4241 code_4241_ok (by decide) (by decide)

/-- Catalogue code #4242: ((6,2,2)), m=11, a=[5, 5, 7, 7, 8, 8], S=[0, 1]. -/
def code_4242 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4242_ok : code_4242.OK := by native_decide
/-- Code #4242 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4242_qec :
    ∃ ψ, SS.IsAmplitudes code_4242 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4242 code_4242_ok (by decide) (by decide)

/-- Catalogue code #4243: ((6,2,2)), m=11, a=[5, 5, 7, 7, 8, 8], S=[0, 2]. -/
def code_4243 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4243_ok : code_4243.OK := by native_decide
/-- Code #4243 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4243_qec :
    ∃ ψ, SS.IsAmplitudes code_4243 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4243 code_4243_ok (by decide) (by decide)

/-- Catalogue code #4244: ((6,2,2)), m=11, a=[5, 5, 7, 7, 8, 9], S=[0, 10]. -/
def code_4244 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4244_ok : code_4244.OK := by native_decide
/-- Code #4244 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4244_qec :
    ∃ ψ, SS.IsAmplitudes code_4244 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4244 code_4244_ok (by decide) (by decide)

/-- Catalogue code #4245: ((6,2,2)), m=11, a=[5, 5, 7, 7, 8, 10], S=[0, 2]. -/
def code_4245 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4245_ok : code_4245.OK := by native_decide
/-- Code #4245 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4245_qec :
    ∃ ψ, SS.IsAmplitudes code_4245 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4245 code_4245_ok (by decide) (by decide)

/-- Catalogue code #4246: ((6,2,2)), m=11, a=[5, 5, 7, 7, 9, 10], S=[0, 3]. -/
def code_4246 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4246_ok : code_4246.OK := by native_decide
/-- Code #4246 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4246_qec :
    ∃ ψ, SS.IsAmplitudes code_4246 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4246 code_4246_ok (by decide) (by decide)

/-- Catalogue code #4247: ((6,2,2)), m=11, a=[5, 5, 7, 8, 8, 9], S=[0, 10]. -/
def code_4247 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4247_ok : code_4247.OK := by native_decide
/-- Code #4247 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4247_qec :
    ∃ ψ, SS.IsAmplitudes code_4247 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4247 code_4247_ok (by decide) (by decide)

/-- Catalogue code #4248: ((6,2,2)), m=11, a=[5, 5, 7, 8, 8, 10], S=[0, 9]. -/
def code_4248 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4248_ok : code_4248.OK := by native_decide
/-- Code #4248 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4248_qec :
    ∃ ψ, SS.IsAmplitudes code_4248 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4248 code_4248_ok (by decide) (by decide)

/-- Catalogue code #4249: ((6,2,2)), m=11, a=[5, 5, 7, 8, 10, 10], S=[0, 9]. -/
def code_4249 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4249_ok : code_4249.OK := by native_decide
/-- Code #4249 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4249_qec :
    ∃ ψ, SS.IsAmplitudes code_4249 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4249 code_4249_ok (by decide) (by decide)

/-- Catalogue code #4250: ((6,2,2)), m=11, a=[5, 5, 7, 9, 9, 10], S=[0, 8]. -/
def code_4250 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4250_ok : code_4250.OK := by native_decide
/-- Code #4250 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4250_qec :
    ∃ ψ, SS.IsAmplitudes code_4250 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4250 code_4250_ok (by decide) (by decide)

/-- Catalogue code #4251: ((6,2,2)), m=11, a=[5, 5, 8, 8, 8, 10], S=[0, 4]. -/
def code_4251 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4251_ok : code_4251.OK := by native_decide
/-- Code #4251 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4251_qec :
    ∃ ψ, SS.IsAmplitudes code_4251 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4251 code_4251_ok (by decide) (by decide)

/-- Catalogue code #4252: ((6,2,2)), m=11, a=[5, 5, 8, 8, 10, 10], S=[0, 9]. -/
def code_4252 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4252_ok : code_4252.OK := by native_decide
/-- Code #4252 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4252_qec :
    ∃ ψ, SS.IsAmplitudes code_4252 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4252 code_4252_ok (by decide) (by decide)

/-- Catalogue code #4253: ((6,2,2)), m=11, a=[5, 5, 8, 9, 9, 10], S=[0, 7]. -/
def code_4253 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4253_ok : code_4253.OK := by native_decide
/-- Code #4253 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4253_qec :
    ∃ ψ, SS.IsAmplitudes code_4253 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4253 code_4253_ok (by decide) (by decide)

/-- Catalogue code #4254: ((6,2,2)), m=11, a=[5, 5, 8, 9, 10, 10], S=[0, 7]. -/
def code_4254 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4254_ok : code_4254.OK := by native_decide
/-- Code #4254 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4254_qec :
    ∃ ψ, SS.IsAmplitudes code_4254 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4254 code_4254_ok (by decide) (by decide)

/-- Catalogue code #4255: ((6,2,2)), m=11, a=[5, 5, 8, 10, 10, 10], S=[0, 7]. -/
def code_4255 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (5 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4255_ok : code_4255.OK := by native_decide
/-- Code #4255 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4255_qec :
    ∃ ψ, SS.IsAmplitudes code_4255 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4255 code_4255_ok (by decide) (by decide)

/-- Catalogue code #4256: ((6,2,2)), m=11, a=[5, 6, 6, 7, 8, 9], S=[0, 10]. -/
def code_4256 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_4256_ok : code_4256.OK := by native_decide
/-- Code #4256 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4256_qec :
    ∃ ψ, SS.IsAmplitudes code_4256 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4256 code_4256_ok (by decide) (by decide)

/-- Catalogue code #4257: ((6,2,2)), m=11, a=[5, 6, 6, 7, 9, 9], S=[0, 8]. -/
def code_4257 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4257_ok : code_4257.OK := by native_decide
/-- Code #4257 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4257_qec :
    ∃ ψ, SS.IsAmplitudes code_4257 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4257 code_4257_ok (by decide) (by decide)

/-- Catalogue code #4258: ((6,2,2)), m=11, a=[5, 6, 6, 7, 9, 10], S=[0, 8]. -/
def code_4258 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4258_ok : code_4258.OK := by native_decide
/-- Code #4258 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4258_qec :
    ∃ ψ, SS.IsAmplitudes code_4258 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4258 code_4258_ok (by decide) (by decide)

/-- Catalogue code #4259: ((6,2,2)), m=11, a=[5, 6, 6, 8, 8, 10], S=[0, 9]. -/
def code_4259 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4259_ok : code_4259.OK := by native_decide
/-- Code #4259 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4259_qec :
    ∃ ψ, SS.IsAmplitudes code_4259 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4259 code_4259_ok (by decide) (by decide)

/-- Catalogue code #4260: ((6,2,2)), m=11, a=[5, 6, 6, 9, 9, 9], S=[0, 1]. -/
def code_4260 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4260_ok : code_4260.OK := by native_decide
/-- Code #4260 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4260_qec :
    ∃ ψ, SS.IsAmplitudes code_4260 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4260 code_4260_ok (by decide) (by decide)

/-- Catalogue code #4261: ((6,2,2)), m=11, a=[5, 6, 6, 9, 9, 10], S=[0, 8]. -/
def code_4261 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-9 : ℚ) / 11)]
theorem code_4261_ok : code_4261.OK := by native_decide
/-- Code #4261 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4261_qec :
    ∃ ψ, SS.IsAmplitudes code_4261 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4261 code_4261_ok (by decide) (by decide)

/-- Catalogue code #4262: ((6,2,2)), m=11, a=[5, 6, 7, 7, 8, 8], S=[0, 2]. -/
def code_4262 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((9 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4262_ok : code_4262.OK := by native_decide
/-- Code #4262 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4262_qec :
    ∃ ψ, SS.IsAmplitudes code_4262 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4262 code_4262_ok (by decide) (by decide)

/-- Catalogue code #4263: ((6,2,2)), m=11, a=[5, 6, 7, 7, 8, 8], S=[0, 10]. -/
def code_4263 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-7 : ℚ) / 11)]
theorem code_4263_ok : code_4263.OK := by native_decide
/-- Code #4263 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4263_qec :
    ∃ ψ, SS.IsAmplitudes code_4263 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4263 code_4263_ok (by decide) (by decide)

/-- Catalogue code #4264: ((6,2,2)), m=11, a=[5, 6, 7, 7, 8, 9], S=[0, 1]. -/
def code_4264 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4264_ok : code_4264.OK := by native_decide
/-- Code #4264 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4264_qec :
    ∃ ψ, SS.IsAmplitudes code_4264 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4264 code_4264_ok (by decide) (by decide)

/-- Catalogue code #4265: ((6,2,2)), m=11, a=[5, 6, 7, 7, 8, 9], S=[0, 10]. -/
def code_4265 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4265_ok : code_4265.OK := by native_decide
/-- Code #4265 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4265_qec :
    ∃ ψ, SS.IsAmplitudes code_4265 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4265 code_4265_ok (by decide) (by decide)

/-- Catalogue code #4266: ((6,2,2)), m=11, a=[5, 6, 7, 7, 8, 10], S=[0, 9]. -/
def code_4266 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11)]
theorem code_4266_ok : code_4266.OK := by native_decide
/-- Code #4266 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4266_qec :
    ∃ ψ, SS.IsAmplitudes code_4266 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4266 code_4266_ok (by decide) (by decide)

/-- Catalogue code #4267: ((6,2,2)), m=11, a=[5, 6, 7, 7, 9, 10], S=[0, 3]. -/
def code_4267 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4267_ok : code_4267.OK := by native_decide
/-- Code #4267 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4267_qec :
    ∃ ψ, SS.IsAmplitudes code_4267 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4267 code_4267_ok (by decide) (by decide)

/-- Catalogue code #4268: ((6,2,2)), m=11, a=[5, 6, 7, 7, 10, 10], S=[0, 3]. -/
def code_4268 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4268_ok : code_4268.OK := by native_decide
/-- Code #4268 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4268_qec :
    ∃ ψ, SS.IsAmplitudes code_4268 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4268 code_4268_ok (by decide) (by decide)

/-- Catalogue code #4269: ((6,2,2)), m=11, a=[5, 6, 7, 7, 10, 10], S=[0, 9]. -/
def code_4269 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4269_ok : code_4269.OK := by native_decide
/-- Code #4269 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4269_qec :
    ∃ ψ, SS.IsAmplitudes code_4269 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4269 code_4269_ok (by decide) (by decide)

/-- Catalogue code #4270: ((6,2,2)), m=11, a=[5, 6, 7, 8, 8, 10], S=[0, 2]. -/
def code_4270 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4270_ok : code_4270.OK := by native_decide
/-- Code #4270 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4270_qec :
    ∃ ψ, SS.IsAmplitudes code_4270 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4270 code_4270_ok (by decide) (by decide)

/-- Catalogue code #4271: ((6,2,2)), m=11, a=[5, 6, 7, 8, 8, 10], S=[0, 9]. -/
def code_4271 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4271_ok : code_4271.OK := by native_decide
/-- Code #4271 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4271_qec :
    ∃ ψ, SS.IsAmplitudes code_4271 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4271 code_4271_ok (by decide) (by decide)

/-- Catalogue code #4272: ((6,2,2)), m=11, a=[5, 6, 7, 8, 9, 9], S=[0, 1]. -/
def code_4272 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4272_ok : code_4272.OK := by native_decide
/-- Code #4272 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4272_qec :
    ∃ ψ, SS.IsAmplitudes code_4272 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4272 code_4272_ok (by decide) (by decide)

/-- Catalogue code #4273: ((6,2,2)), m=11, a=[5, 6, 7, 8, 9, 9], S=[0, 10]. -/
def code_4273 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (10 : ZMod 11)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4273_ok : code_4273.OK := by native_decide
/-- Code #4273 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4273_qec :
    ∃ ψ, SS.IsAmplitudes code_4273 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4273 code_4273_ok (by decide) (by decide)

/-- Catalogue code #4274: ((6,2,2)), m=11, a=[5, 6, 7, 8, 10, 10], S=[0, 9]. -/
def code_4274 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4274_ok : code_4274.OK := by native_decide
/-- Code #4274 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4274_qec :
    ∃ ψ, SS.IsAmplitudes code_4274 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4274 code_4274_ok (by decide) (by decide)

/-- Catalogue code #4275: ((6,2,2)), m=11, a=[5, 6, 7, 9, 9, 10], S=[0, 8]. -/
def code_4275 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4275_ok : code_4275.OK := by native_decide
/-- Code #4275 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4275_qec :
    ∃ ψ, SS.IsAmplitudes code_4275 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4275 code_4275_ok (by decide) (by decide)

/-- Catalogue code #4276: ((6,2,2)), m=11, a=[5, 6, 7, 10, 10, 10], S=[0, 2]. -/
def code_4276 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4276_ok : code_4276.OK := by native_decide
/-- Code #4276 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4276_qec :
    ∃ ψ, SS.IsAmplitudes code_4276 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4276 code_4276_ok (by decide) (by decide)

/-- Catalogue code #4277: ((6,2,2)), m=11, a=[5, 6, 8, 8, 9, 10], S=[0, 4]. -/
def code_4277 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4277_ok : code_4277.OK := by native_decide
/-- Code #4277 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4277_qec :
    ∃ ψ, SS.IsAmplitudes code_4277 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4277 code_4277_ok (by decide) (by decide)

/-- Catalogue code #4278: ((6,2,2)), m=11, a=[5, 6, 8, 8, 10, 10], S=[0, 2]. -/
def code_4278 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4278_ok : code_4278.OK := by native_decide
/-- Code #4278 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4278_qec :
    ∃ ψ, SS.IsAmplitudes code_4278 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4278 code_4278_ok (by decide) (by decide)

/-- Catalogue code #4279: ((6,2,2)), m=11, a=[5, 6, 8, 8, 10, 10], S=[0, 4]. -/
def code_4279 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4279_ok : code_4279.OK := by native_decide
/-- Code #4279 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4279_qec :
    ∃ ψ, SS.IsAmplitudes code_4279 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4279 code_4279_ok (by decide) (by decide)

/-- Catalogue code #4280: ((6,2,2)), m=11, a=[5, 6, 8, 9, 9, 9], S=[0, 1]. -/
def code_4280 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((-7 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4280_ok : code_4280.OK := by native_decide
/-- Code #4280 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4280_qec :
    ∃ ψ, SS.IsAmplitudes code_4280 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4280 code_4280_ok (by decide) (by decide)

/-- Catalogue code #4281: ((6,2,2)), m=11, a=[5, 6, 8, 9, 9, 10], S=[0, 4]. -/
def code_4281 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4281_ok : code_4281.OK := by native_decide
/-- Code #4281 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4281_qec :
    ∃ ψ, SS.IsAmplitudes code_4281 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4281 code_4281_ok (by decide) (by decide)

/-- Catalogue code #4282: ((6,2,2)), m=11, a=[5, 6, 8, 9, 9, 10], S=[0, 7]. -/
def code_4282 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4282_ok : code_4282.OK := by native_decide
/-- Code #4282 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4282_qec :
    ∃ ψ, SS.IsAmplitudes code_4282 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4282 code_4282_ok (by decide) (by decide)

/-- Catalogue code #4283: ((6,2,2)), m=11, a=[5, 6, 8, 10, 10, 10], S=[0, 2]. -/
def code_4283 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4283_ok : code_4283.OK := by native_decide
/-- Code #4283 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4283_qec :
    ∃ ψ, SS.IsAmplitudes code_4283 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4283 code_4283_ok (by decide) (by decide)

/-- Catalogue code #4284: ((6,2,2)), m=11, a=[5, 6, 9, 9, 9, 10], S=[0, 3]. -/
def code_4284 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4284_ok : code_4284.OK := by native_decide
/-- Code #4284 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4284_qec :
    ∃ ψ, SS.IsAmplitudes code_4284 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4284 code_4284_ok (by decide) (by decide)

/-- Catalogue code #4285: ((6,2,2)), m=11, a=[5, 6, 9, 9, 10, 10], S=[0, 3]. -/
def code_4285 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4285_ok : code_4285.OK := by native_decide
/-- Code #4285 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4285_qec :
    ∃ ψ, SS.IsAmplitudes code_4285 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4285 code_4285_ok (by decide) (by decide)

/-- Catalogue code #4286: ((6,2,2)), m=11, a=[5, 6, 9, 9, 10, 10], S=[0, 7]. -/
def code_4286 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (6 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((-5 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4286_ok : code_4286.OK := by native_decide
/-- Code #4286 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4286_qec :
    ∃ ψ, SS.IsAmplitudes code_4286 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4286 code_4286_ok (by decide) (by decide)

/-- Catalogue code #4287: ((6,2,2)), m=11, a=[5, 7, 7, 8, 8, 9], S=[0, 1]. -/
def code_4287 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4287_ok : code_4287.OK := by native_decide
/-- Code #4287 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4287_qec :
    ∃ ψ, SS.IsAmplitudes code_4287 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4287 code_4287_ok (by decide) (by decide)

/-- Catalogue code #4288: ((6,2,2)), m=11, a=[5, 7, 7, 8, 8, 10], S=[0, 2]. -/
def code_4288 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11), ((9 : ℚ) / 11), ((1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4288_ok : code_4288.OK := by native_decide
/-- Code #4288 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4288_qec :
    ∃ ψ, SS.IsAmplitudes code_4288 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4288 code_4288_ok (by decide) (by decide)

/-- Catalogue code #4289: ((6,2,2)), m=11, a=[5, 7, 7, 8, 10, 10], S=[0, 2]. -/
def code_4289 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11)]
theorem code_4289_ok : code_4289.OK := by native_decide
/-- Code #4289 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4289_qec :
    ∃ ψ, SS.IsAmplitudes code_4289 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4289 code_4289_ok (by decide) (by decide)

/-- Catalogue code #4290: ((6,2,2)), m=11, a=[5, 7, 7, 8, 10, 10], S=[0, 9]. -/
def code_4290 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4290_ok : code_4290.OK := by native_decide
/-- Code #4290 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4290_qec :
    ∃ ψ, SS.IsAmplitudes code_4290 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4290 code_4290_ok (by decide) (by decide)

/-- Catalogue code #4291: ((6,2,2)), m=11, a=[5, 7, 7, 9, 9, 10], S=[0, 8]. -/
def code_4291 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((5 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((5 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4291_ok : code_4291.OK := by native_decide
/-- Code #4291 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4291_qec :
    ∃ ψ, SS.IsAmplitudes code_4291 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4291 code_4291_ok (by decide) (by decide)

/-- Catalogue code #4292: ((6,2,2)), m=11, a=[5, 7, 7, 9, 10, 10], S=[0, 3]. -/
def code_4292 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((5 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4292_ok : code_4292.OK := by native_decide
/-- Code #4292 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4292_qec :
    ∃ ψ, SS.IsAmplitudes code_4292 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4292 code_4292_ok (by decide) (by decide)

/-- Catalogue code #4293: ((6,2,2)), m=11, a=[5, 7, 7, 10, 10, 10], S=[0, 3]. -/
def code_4293 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4293_ok : code_4293.OK := by native_decide
/-- Code #4293 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4293_qec :
    ∃ ψ, SS.IsAmplitudes code_4293 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4293 code_4293_ok (by decide) (by decide)

/-- Catalogue code #4294: ((6,2,2)), m=11, a=[5, 7, 7, 10, 10, 10], S=[0, 8]. -/
def code_4294 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (7 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4294_ok : code_4294.OK := by native_decide
/-- Code #4294 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4294_qec :
    ∃ ψ, SS.IsAmplitudes code_4294 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4294 code_4294_ok (by decide) (by decide)

/-- Catalogue code #4295: ((6,2,2)), m=11, a=[5, 7, 8, 8, 9, 9], S=[0, 1]. -/
def code_4295 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11)]
  S := ![(0 : ZMod 11), (1 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-3 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4295_ok : code_4295.OK := by native_decide
/-- Code #4295 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4295_qec :
    ∃ ψ, SS.IsAmplitudes code_4295 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4295 code_4295_ok (by decide) (by decide)

/-- Catalogue code #4296: ((6,2,2)), m=11, a=[5, 7, 8, 8, 10, 10], S=[0, 2]. -/
def code_4296 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4296_ok : code_4296.OK := by native_decide
/-- Code #4296 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4296_qec :
    ∃ ψ, SS.IsAmplitudes code_4296 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4296 code_4296_ok (by decide) (by decide)

/-- Catalogue code #4297: ((6,2,2)), m=11, a=[5, 7, 8, 8, 10, 10], S=[0, 9]. -/
def code_4297 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (9 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4297_ok : code_4297.OK := by native_decide
/-- Code #4297 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4297_qec :
    ∃ ψ, SS.IsAmplitudes code_4297 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4297 code_4297_ok (by decide) (by decide)

/-- Catalogue code #4298: ((6,2,2)), m=11, a=[5, 7, 8, 10, 10, 10], S=[0, 2]. -/
def code_4298 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((7 : ℚ) / 11), ((-3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4298_ok : code_4298.OK := by native_decide
/-- Code #4298 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4298_qec :
    ∃ ψ, SS.IsAmplitudes code_4298 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4298 code_4298_ok (by decide) (by decide)

/-- Catalogue code #4299: ((6,2,2)), m=11, a=[5, 7, 9, 9, 9, 10], S=[0, 8]. -/
def code_4299 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (8 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-3 : ℚ) / 11)]
theorem code_4299_ok : code_4299.OK := by native_decide
/-- Code #4299 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4299_qec :
    ∃ ψ, SS.IsAmplitudes code_4299 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4299 code_4299_ok (by decide) (by decide)

/-- Catalogue code #4300: ((6,2,2)), m=11, a=[5, 7, 9, 9, 10, 10], S=[0, 3]. -/
def code_4300 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11)]
theorem code_4300_ok : code_4300.OK := by native_decide
/-- Code #4300 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4300_qec :
    ∃ ψ, SS.IsAmplitudes code_4300 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4300 code_4300_ok (by decide) (by decide)

/-- Catalogue code #4301: ((6,2,2)), m=11, a=[5, 7, 9, 10, 10, 10], S=[0, 3]. -/
def code_4301 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (7 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (3 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0)]
  targetZ := ![((-5 : ℚ) / 11), ((5 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((-5 : ℚ) / 11)]
theorem code_4301_ok : code_4301.OK := by native_decide
/-- Code #4301 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4301_qec :
    ∃ ψ, SS.IsAmplitudes code_4301 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4301 code_4301_ok (by decide) (by decide)

/-- Catalogue code #4302: ((6,2,2)), m=11, a=[5, 8, 8, 8, 10, 10], S=[0, 7]. -/
def code_4302 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((9 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4302_ok : code_4302.OK := by native_decide
/-- Code #4302 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4302_qec :
    ∃ ψ, SS.IsAmplitudes code_4302 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4302 code_4302_ok (by decide) (by decide)

/-- Catalogue code #4303: ((6,2,2)), m=11, a=[5, 8, 8, 9, 9, 10], S=[0, 4]. -/
def code_4303 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((1 : ℚ) / 11), ((7 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((1 : ℚ) / 11)]
theorem code_4303_ok : code_4303.OK := by native_decide
/-- Code #4303 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4303_qec :
    ∃ ψ, SS.IsAmplitudes code_4303 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4303 code_4303_ok (by decide) (by decide)

/-- Catalogue code #4304: ((6,2,2)), m=11, a=[5, 8, 8, 9, 9, 10], S=[0, 7]. -/
def code_4304 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (7 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 11)
      else 0)]
  targetZ := ![((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((3 : ℚ) / 11), ((-1 : ℚ) / 11), ((-5 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4304_ok : code_4304.OK := by native_decide
/-- Code #4304 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4304_qec :
    ∃ ψ, SS.IsAmplitudes code_4304 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4304 code_4304_ok (by decide) (by decide)

/-- Catalogue code #4305: ((6,2,2)), m=11, a=[5, 8, 8, 9, 10, 10], S=[0, 4]. -/
def code_4305 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((9 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4305_ok : code_4305.OK := by native_decide
/-- Code #4305 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4305_qec :
    ∃ ψ, SS.IsAmplitudes code_4305 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4305 code_4305_ok (by decide) (by decide)

/-- Catalogue code #4306: ((6,2,2)), m=11, a=[5, 8, 8, 10, 10, 10], S=[0, 2]. -/
def code_4306 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (8 : ZMod 11), (8 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (2 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-7 : ℚ) / 11), ((-3 : ℚ) / 11), ((7 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4306_ok : code_4306.OK := by native_decide
/-- Code #4306 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4306_qec :
    ∃ ψ, SS.IsAmplitudes code_4306 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4306 code_4306_ok (by decide) (by decide)

/-- Catalogue code #4307: ((6,2,2)), m=11, a=[5, 8, 9, 9, 10, 10], S=[0, 4]. -/
def code_4307 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((1 : ℚ) / 11), ((7 : ℚ) / 11)]
theorem code_4307_ok : code_4307.OK := by native_decide
/-- Code #4307 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4307_qec :
    ∃ ψ, SS.IsAmplitudes code_4307 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4307 code_4307_ok (by decide) (by decide)

/-- Catalogue code #4308: ((6,2,2)), m=11, a=[5, 8, 9, 10, 10, 10], S=[0, 4]. -/
def code_4308 : ExampleData 6 11 2 where
  a := ![(5 : ZMod 11), (8 : ZMod 11), (9 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11), (10 : ZMod 11)]
  S := ![(0 : ZMod 11), (4 : ZMod 11)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 11)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 11)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 11)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 11)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 11)
      else 0)]
  targetZ := ![((-3 : ℚ) / 11), ((3 : ℚ) / 11), ((3 : ℚ) / 11), ((5 : ℚ) / 11), ((-1 : ℚ) / 11), ((-1 : ℚ) / 11)]
theorem code_4308_ok : code_4308.OK := by native_decide
/-- Code #4308 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4308_qec :
    ∃ ψ, SS.IsAmplitudes code_4308 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4308 code_4308_ok (by decide) (by decide)

/-- Catalogue code #4309: ((6,2,2)), m=12, a=[1, 1, 1, 2, 3, 4], S=[0, 5]. -/
def code_4309 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4309_ok : code_4309.OK := by native_decide
/-- Code #4309 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4309_qec :
    ∃ ψ, SS.IsAmplitudes code_4309 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4309 code_4309_ok (by decide) (by decide)

/-- Catalogue code #4310: ((6,2,2)), m=12, a=[1, 1, 1, 2, 8, 9], S=[0, 5]. -/
def code_4310 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4310_ok : code_4310.OK := by native_decide
/-- Code #4310 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4310_qec :
    ∃ ψ, SS.IsAmplitudes code_4310 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4310 code_4310_ok (by decide) (by decide)

/-- Catalogue code #4311: ((6,2,2)), m=12, a=[1, 1, 1, 3, 3, 4], S=[0, 7]. -/
def code_4311 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4311_ok : code_4311.OK := by native_decide
/-- Code #4311 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4311_qec :
    ∃ ψ, SS.IsAmplitudes code_4311 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4311 code_4311_ok (by decide) (by decide)

/-- Catalogue code #4312: ((6,2,2)), m=12, a=[1, 1, 1, 3, 3, 6], S=[0, 7]. -/
def code_4312 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4312_ok : code_4312.OK := by native_decide
/-- Code #4312 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4312_qec :
    ∃ ψ, SS.IsAmplitudes code_4312 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4312 code_4312_ok (by decide) (by decide)

/-- Catalogue code #4313: ((6,2,2)), m=12, a=[1, 1, 1, 3, 4, 5], S=[0, 10]. -/
def code_4313 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-2 : ℚ) / 3)]
theorem code_4313_ok : code_4313.OK := by native_decide
/-- Code #4313 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4313_qec :
    ∃ ψ, SS.IsAmplitudes code_4313 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4313 code_4313_ok (by decide) (by decide)

/-- Catalogue code #4314: ((6,2,2)), m=12, a=[1, 1, 1, 3, 4, 6], S=[0, 7]. -/
def code_4314 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 6), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4314_ok : code_4314.OK := by native_decide
/-- Code #4314 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4314_qec :
    ∃ ψ, SS.IsAmplitudes code_4314 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4314 code_4314_ok (by decide) (by decide)

/-- Catalogue code #4315: ((6,2,2)), m=12, a=[1, 1, 1, 3, 5, 7], S=[0, 10]. -/
def code_4315 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), ((-2 : ℚ) / 3)]
theorem code_4315_ok : code_4315.OK := by native_decide
/-- Code #4315 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4315_qec :
    ∃ ψ, SS.IsAmplitudes code_4315 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4315 code_4315_ok (by decide) (by decide)

/-- Catalogue code #4316: ((6,2,2)), m=12, a=[1, 1, 1, 3, 6, 9], S=[0, 5]. -/
def code_4316 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4316_ok : code_4316.OK := by native_decide
/-- Code #4316 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4316_qec :
    ∃ ψ, SS.IsAmplitudes code_4316 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4316 code_4316_ok (by decide) (by decide)

/-- Catalogue code #4317: ((6,2,2)), m=12, a=[1, 1, 1, 3, 8, 9], S=[0, 5]. -/
def code_4317 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4317_ok : code_4317.OK := by native_decide
/-- Code #4317 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4317_qec :
    ∃ ψ, SS.IsAmplitudes code_4317 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4317 code_4317_ok (by decide) (by decide)

/-- Catalogue code #4318: ((6,2,2)), m=12, a=[1, 1, 1, 4, 5, 5], S=[0, 2]. -/
def code_4318 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4318_ok : code_4318.OK := by native_decide
/-- Code #4318 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4318_qec :
    ∃ ψ, SS.IsAmplitudes code_4318 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4318 code_4318_ok (by decide) (by decide)

/-- Catalogue code #4319: ((6,2,2)), m=12, a=[1, 1, 1, 4, 5, 7], S=[0, 10]. -/
def code_4319 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4319_ok : code_4319.OK := by native_decide
/-- Code #4319 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4319_qec :
    ∃ ψ, SS.IsAmplitudes code_4319 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4319 code_4319_ok (by decide) (by decide)

/-- Catalogue code #4320: ((6,2,2)), m=12, a=[1, 1, 1, 4, 5, 9], S=[0, 2]. -/
def code_4320 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4320_ok : code_4320.OK := by native_decide
/-- Code #4320 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4320_qec :
    ∃ ψ, SS.IsAmplitudes code_4320 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4320 code_4320_ok (by decide) (by decide)

/-- Catalogue code #4321: ((6,2,2)), m=12, a=[1, 1, 1, 4, 6, 9], S=[0, 7]. -/
def code_4321 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3)]
theorem code_4321_ok : code_4321.OK := by native_decide
/-- Code #4321 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4321_qec :
    ∃ ψ, SS.IsAmplitudes code_4321 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4321 code_4321_ok (by decide) (by decide)

/-- Catalogue code #4322: ((6,2,2)), m=12, a=[1, 1, 1, 4, 9, 9], S=[0, 7]. -/
def code_4322 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4322_ok : code_4322.OK := by native_decide
/-- Code #4322 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4322_qec :
    ∃ ψ, SS.IsAmplitudes code_4322 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4322 code_4322_ok (by decide) (by decide)

/-- Catalogue code #4323: ((6,2,2)), m=12, a=[1, 1, 1, 4, 9, 10], S=[0, 7]. -/
def code_4323 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4323_ok : code_4323.OK := by native_decide
/-- Code #4323 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4323_qec :
    ∃ ψ, SS.IsAmplitudes code_4323 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4323 code_4323_ok (by decide) (by decide)

/-- Catalogue code #4324: ((6,2,2)), m=12, a=[1, 1, 1, 5, 5, 9], S=[0, 2]. -/
def code_4324 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4324_ok : code_4324.OK := by native_decide
/-- Code #4324 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4324_qec :
    ∃ ψ, SS.IsAmplitudes code_4324 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4324 code_4324_ok (by decide) (by decide)

/-- Catalogue code #4325: ((6,2,2)), m=12, a=[1, 1, 1, 6, 8, 9], S=[0, 5]. -/
def code_4325 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-2 : ℚ) / 3)]
theorem code_4325_ok : code_4325.OK := by native_decide
/-- Code #4325 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4325_qec :
    ∃ ψ, SS.IsAmplitudes code_4325 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4325 code_4325_ok (by decide) (by decide)

/-- Catalogue code #4326: ((6,2,2)), m=12, a=[1, 1, 1, 6, 9, 9], S=[0, 7]. -/
def code_4326 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4326_ok : code_4326.OK := by native_decide
/-- Code #4326 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4326_qec :
    ∃ ψ, SS.IsAmplitudes code_4326 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4326 code_4326_ok (by decide) (by decide)

/-- Catalogue code #4327: ((6,2,2)), m=12, a=[1, 1, 1, 7, 7, 8], S=[0, 10]. -/
def code_4327 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4327_ok : code_4327.OK := by native_decide
/-- Code #4327 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4327_qec :
    ∃ ψ, SS.IsAmplitudes code_4327 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4327 code_4327_ok (by decide) (by decide)

/-- Catalogue code #4328: ((6,2,2)), m=12, a=[1, 1, 2, 2, 2, 6], S=[0, 7]. -/
def code_4328 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4328_ok : code_4328.OK := by native_decide
/-- Code #4328 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4328_qec :
    ∃ ψ, SS.IsAmplitudes code_4328 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4328 code_4328_ok (by decide) (by decide)

/-- Catalogue code #4329: ((6,2,2)), m=12, a=[1, 1, 2, 2, 3, 3], S=[0, 5]. -/
def code_4329 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4329_ok : code_4329.OK := by native_decide
/-- Code #4329 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4329_qec :
    ∃ ψ, SS.IsAmplitudes code_4329 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4329 code_4329_ok (by decide) (by decide)

/-- Catalogue code #4330: ((6,2,2)), m=12, a=[1, 1, 2, 2, 3, 3], S=[0, 7]. -/
def code_4330 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4330_ok : code_4330.OK := by native_decide
/-- Code #4330 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4330_qec :
    ∃ ψ, SS.IsAmplitudes code_4330 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4330 code_4330_ok (by decide) (by decide)

/-- Catalogue code #4331: ((6,2,2)), m=12, a=[1, 1, 2, 2, 3, 4], S=[0, 7]. -/
def code_4331 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((5 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4331_ok : code_4331.OK := by native_decide
/-- Code #4331 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4331_qec :
    ∃ ψ, SS.IsAmplitudes code_4331 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4331 code_4331_ok (by decide) (by decide)

/-- Catalogue code #4332: ((6,2,2)), m=12, a=[1, 1, 2, 2, 3, 6], S=[0, 7]. -/
def code_4332 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4332_ok : code_4332.OK := by native_decide
/-- Code #4332 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4332_qec :
    ∃ ψ, SS.IsAmplitudes code_4332 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4332 code_4332_ok (by decide) (by decide)

/-- Catalogue code #4333: ((6,2,2)), m=12, a=[1, 1, 2, 2, 4, 4], S=[0, 9]. -/
def code_4333 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_4333_ok : code_4333.OK := by native_decide
/-- Code #4333 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4333_qec :
    ∃ ψ, SS.IsAmplitudes code_4333 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4333 code_4333_ok (by decide) (by decide)

/-- Catalogue code #4334: ((6,2,2)), m=12, a=[1, 1, 2, 2, 4, 6], S=[0, 7]. -/
def code_4334 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4334_ok : code_4334.OK := by native_decide
/-- Code #4334 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4334_qec :
    ∃ ψ, SS.IsAmplitudes code_4334 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4334 code_4334_ok (by decide) (by decide)

/-- Catalogue code #4335: ((6,2,2)), m=12, a=[1, 1, 2, 2, 5, 7], S=[0, 9]. -/
def code_4335 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_4335_ok : code_4335.OK := by native_decide
/-- Code #4335 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4335_qec :
    ∃ ψ, SS.IsAmplitudes code_4335 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4335 code_4335_ok (by decide) (by decide)

/-- Catalogue code #4336: ((6,2,2)), m=12, a=[1, 1, 2, 2, 6, 6], S=[0, 3]. -/
def code_4336 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (3 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_4336_ok : code_4336.OK := by native_decide
/-- Code #4336 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4336_qec :
    ∃ ψ, SS.IsAmplitudes code_4336 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4336 code_4336_ok (by decide) (by decide)

/-- Catalogue code #4337: ((6,2,2)), m=12, a=[1, 1, 2, 2, 6, 6], S=[0, 9]. -/
def code_4337 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (9 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4337_ok : code_4337.OK := by native_decide
/-- Code #4337 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4337_qec :
    ∃ ψ, SS.IsAmplitudes code_4337 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4337 code_4337_ok (by decide) (by decide)

/-- Catalogue code #4338: ((6,2,2)), m=12, a=[1, 1, 2, 2, 6, 8], S=[0, 5]. -/
def code_4338 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4338_ok : code_4338.OK := by native_decide
/-- Code #4338 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4338_qec :
    ∃ ψ, SS.IsAmplitudes code_4338 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4338 code_4338_ok (by decide) (by decide)

/-- Catalogue code #4339: ((6,2,2)), m=12, a=[1, 1, 2, 2, 6, 9], S=[0, 5]. -/
def code_4339 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4339_ok : code_4339.OK := by native_decide
/-- Code #4339 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4339_qec :
    ∃ ψ, SS.IsAmplitudes code_4339 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4339 code_4339_ok (by decide) (by decide)

/-- Catalogue code #4340: ((6,2,2)), m=12, a=[1, 1, 2, 2, 8, 8], S=[0, 5]. -/
def code_4340 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4340_ok : code_4340.OK := by native_decide
/-- Code #4340 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4340_qec :
    ∃ ψ, SS.IsAmplitudes code_4340 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4340 code_4340_ok (by decide) (by decide)

/-- Catalogue code #4341: ((6,2,2)), m=12, a=[1, 1, 2, 2, 8, 9], S=[0, 5]. -/
def code_4341 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4341_ok : code_4341.OK := by native_decide
/-- Code #4341 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4341_qec :
    ∃ ψ, SS.IsAmplitudes code_4341 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4341 code_4341_ok (by decide) (by decide)

/-- Catalogue code #4342: ((6,2,2)), m=12, a=[1, 1, 2, 3, 3, 4], S=[0, 7]. -/
def code_4342 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4342_ok : code_4342.OK := by native_decide
/-- Code #4342 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4342_qec :
    ∃ ψ, SS.IsAmplitudes code_4342 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4342 code_4342_ok (by decide) (by decide)

/-- Catalogue code #4343: ((6,2,2)), m=12, a=[1, 1, 2, 3, 4, 6], S=[0, 7]. -/
def code_4343 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_4343_ok : code_4343.OK := by native_decide
/-- Code #4343 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4343_qec :
    ∃ ψ, SS.IsAmplitudes code_4343 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4343 code_4343_ok (by decide) (by decide)

/-- Catalogue code #4344: ((6,2,2)), m=12, a=[1, 1, 2, 3, 6, 8], S=[0, 5]. -/
def code_4344 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4344_ok : code_4344.OK := by native_decide
/-- Code #4344 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4344_qec :
    ∃ ψ, SS.IsAmplitudes code_4344 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4344 code_4344_ok (by decide) (by decide)

/-- Catalogue code #4345: ((6,2,2)), m=12, a=[1, 1, 2, 3, 6, 8], S=[0, 7]. -/
def code_4345 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4345_ok : code_4345.OK := by native_decide
/-- Code #4345 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4345_qec :
    ∃ ψ, SS.IsAmplitudes code_4345 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4345 code_4345_ok (by decide) (by decide)

/-- Catalogue code #4346: ((6,2,2)), m=12, a=[1, 1, 2, 3, 6, 9], S=[0, 5]. -/
def code_4346 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4346_ok : code_4346.OK := by native_decide
/-- Code #4346 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4346_qec :
    ∃ ψ, SS.IsAmplitudes code_4346 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4346 code_4346_ok (by decide) (by decide)

/-- Catalogue code #4347: ((6,2,2)), m=12, a=[1, 1, 2, 3, 6, 10], S=[0, 7]. -/
def code_4347 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4347_ok : code_4347.OK := by native_decide
/-- Code #4347 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4347_qec :
    ∃ ψ, SS.IsAmplitudes code_4347 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4347 code_4347_ok (by decide) (by decide)

/-- Catalogue code #4348: ((6,2,2)), m=12, a=[1, 1, 2, 3, 8, 8], S=[0, 5]. -/
def code_4348 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4348_ok : code_4348.OK := by native_decide
/-- Code #4348 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4348_qec :
    ∃ ψ, SS.IsAmplitudes code_4348 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4348 code_4348_ok (by decide) (by decide)

/-- Catalogue code #4349: ((6,2,2)), m=12, a=[1, 1, 2, 3, 8, 9], S=[0, 5]. -/
def code_4349 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4349_ok : code_4349.OK := by native_decide
/-- Code #4349 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4349_qec :
    ∃ ψ, SS.IsAmplitudes code_4349 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4349 code_4349_ok (by decide) (by decide)

/-- Catalogue code #4350: ((6,2,2)), m=12, a=[1, 1, 2, 3, 8, 10], S=[0, 7]. -/
def code_4350 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4350_ok : code_4350.OK := by native_decide
/-- Code #4350 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4350_qec :
    ∃ ψ, SS.IsAmplitudes code_4350 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4350 code_4350_ok (by decide) (by decide)

/-- Catalogue code #4351: ((6,2,2)), m=12, a=[1, 1, 2, 3, 8, 11], S=[0, 7]. -/
def code_4351 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4351_ok : code_4351.OK := by native_decide
/-- Code #4351 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4351_qec :
    ∃ ψ, SS.IsAmplitudes code_4351 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4351 code_4351_ok (by decide) (by decide)

/-- Catalogue code #4352: ((6,2,2)), m=12, a=[1, 1, 2, 3, 9, 10], S=[0, 7]. -/
def code_4352 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4352_ok : code_4352.OK := by native_decide
/-- Code #4352 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4352_qec :
    ∃ ψ, SS.IsAmplitudes code_4352 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4352 code_4352_ok (by decide) (by decide)

/-- Catalogue code #4353: ((6,2,2)), m=12, a=[1, 1, 2, 4, 6, 8], S=[0, 5]. -/
def code_4353 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4353_ok : code_4353.OK := by native_decide
/-- Code #4353 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4353_qec :
    ∃ ψ, SS.IsAmplitudes code_4353 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4353 code_4353_ok (by decide) (by decide)

/-- Catalogue code #4354: ((6,2,2)), m=12, a=[1, 1, 2, 4, 6, 8], S=[0, 7]. -/
def code_4354 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3)]
theorem code_4354_ok : code_4354.OK := by native_decide
/-- Code #4354 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4354_qec :
    ∃ ψ, SS.IsAmplitudes code_4354 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4354 code_4354_ok (by decide) (by decide)

/-- Catalogue code #4355: ((6,2,2)), m=12, a=[1, 1, 2, 4, 6, 9], S=[0, 7]. -/
def code_4355 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3)]
theorem code_4355_ok : code_4355.OK := by native_decide
/-- Code #4355 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4355_qec :
    ∃ ψ, SS.IsAmplitudes code_4355 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4355 code_4355_ok (by decide) (by decide)

/-- Catalogue code #4356: ((6,2,2)), m=12, a=[1, 1, 2, 4, 8, 9], S=[0, 7]. -/
def code_4356 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4356_ok : code_4356.OK := by native_decide
/-- Code #4356 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4356_qec :
    ∃ ψ, SS.IsAmplitudes code_4356 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4356 code_4356_ok (by decide) (by decide)

/-- Catalogue code #4357: ((6,2,2)), m=12, a=[1, 1, 2, 4, 8, 10], S=[0, 7]. -/
def code_4357 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4357_ok : code_4357.OK := by native_decide
/-- Code #4357 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4357_qec :
    ∃ ψ, SS.IsAmplitudes code_4357 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4357 code_4357_ok (by decide) (by decide)

/-- Catalogue code #4358: ((6,2,2)), m=12, a=[1, 1, 2, 4, 9, 9], S=[0, 7]. -/
def code_4358 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4358_ok : code_4358.OK := by native_decide
/-- Code #4358 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4358_qec :
    ∃ ψ, SS.IsAmplitudes code_4358 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4358 code_4358_ok (by decide) (by decide)

/-- Catalogue code #4359: ((6,2,2)), m=12, a=[1, 1, 2, 6, 8, 8], S=[0, 5]. -/
def code_4359 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-2 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_4359_ok : code_4359.OK := by native_decide
/-- Code #4359 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4359_qec :
    ∃ ψ, SS.IsAmplitudes code_4359 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4359 code_4359_ok (by decide) (by decide)

/-- Catalogue code #4360: ((6,2,2)), m=12, a=[1, 1, 2, 6, 8, 9], S=[0, 5]. -/
def code_4360 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-2 : ℚ) / 3)]
theorem code_4360_ok : code_4360.OK := by native_decide
/-- Code #4360 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4360_qec :
    ∃ ψ, SS.IsAmplitudes code_4360 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4360 code_4360_ok (by decide) (by decide)

/-- Catalogue code #4361: ((6,2,2)), m=12, a=[1, 1, 2, 6, 8, 9], S=[0, 7]. -/
def code_4361 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4361_ok : code_4361.OK := by native_decide
/-- Code #4361 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4361_qec :
    ∃ ψ, SS.IsAmplitudes code_4361 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4361 code_4361_ok (by decide) (by decide)

/-- Catalogue code #4362: ((6,2,2)), m=12, a=[1, 1, 2, 6, 8, 10], S=[0, 7]. -/
def code_4362 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2)]
theorem code_4362_ok : code_4362.OK := by native_decide
/-- Code #4362 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4362_qec :
    ∃ ψ, SS.IsAmplitudes code_4362 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4362 code_4362_ok (by decide) (by decide)

/-- Catalogue code #4363: ((6,2,2)), m=12, a=[1, 1, 3, 3, 4, 4], S=[0, 10]. -/
def code_4363 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4363_ok : code_4363.OK := by native_decide
/-- Code #4363 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4363_qec :
    ∃ ψ, SS.IsAmplitudes code_4363 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4363 code_4363_ok (by decide) (by decide)

/-- Catalogue code #4364: ((6,2,2)), m=12, a=[1, 1, 3, 3, 4, 6], S=[0, 2]. -/
def code_4364 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4364_ok : code_4364.OK := by native_decide
/-- Code #4364 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4364_qec :
    ∃ ψ, SS.IsAmplitudes code_4364 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4364 code_4364_ok (by decide) (by decide)

/-- Catalogue code #4365: ((6,2,2)), m=12, a=[1, 1, 3, 3, 4, 6], S=[0, 5]. -/
def code_4365 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_4365_ok : code_4365.OK := by native_decide
/-- Code #4365 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4365_qec :
    ∃ ψ, SS.IsAmplitudes code_4365 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4365 code_4365_ok (by decide) (by decide)

/-- Catalogue code #4366: ((6,2,2)), m=12, a=[1, 1, 3, 3, 4, 6], S=[0, 7]. -/
def code_4366 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4366_ok : code_4366.OK := by native_decide
/-- Code #4366 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4366_qec :
    ∃ ψ, SS.IsAmplitudes code_4366 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4366 code_4366_ok (by decide) (by decide)

/-- Catalogue code #4367: ((6,2,2)), m=12, a=[1, 1, 3, 3, 4, 7], S=[0, 2]. -/
def code_4367 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_4367_ok : code_4367.OK := by native_decide
/-- Code #4367 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4367_qec :
    ∃ ψ, SS.IsAmplitudes code_4367 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4367 code_4367_ok (by decide) (by decide)

/-- Catalogue code #4368: ((6,2,2)), m=12, a=[1, 1, 3, 3, 4, 8], S=[0, 2]. -/
def code_4368 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3)]
theorem code_4368_ok : code_4368.OK := by native_decide
/-- Code #4368 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4368_qec :
    ∃ ψ, SS.IsAmplitudes code_4368 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4368 code_4368_ok (by decide) (by decide)

/-- Catalogue code #4369: ((6,2,2)), m=12, a=[1, 1, 3, 3, 4, 10], S=[0, 5]. -/
def code_4369 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_4369_ok : code_4369.OK := by native_decide
/-- Code #4369 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4369_qec :
    ∃ ψ, SS.IsAmplitudes code_4369 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4369 code_4369_ok (by decide) (by decide)

/-- Catalogue code #4370: ((6,2,2)), m=12, a=[1, 1, 3, 3, 4, 11], S=[0, 5]. -/
def code_4370 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4370_ok : code_4370.OK := by native_decide
/-- Code #4370 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4370_qec :
    ∃ ψ, SS.IsAmplitudes code_4370 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4370 code_4370_ok (by decide) (by decide)

/-- Catalogue code #4371: ((6,2,2)), m=12, a=[1, 1, 3, 3, 5, 5], S=[0, 2]. -/
def code_4371 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4371_ok : code_4371.OK := by native_decide
/-- Code #4371 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4371_qec :
    ∃ ψ, SS.IsAmplitudes code_4371 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4371 code_4371_ok (by decide) (by decide)

/-- Catalogue code #4372: ((6,2,2)), m=12, a=[1, 1, 3, 3, 5, 5], S=[0, 10]. -/
def code_4372 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ)]
theorem code_4372_ok : code_4372.OK := by native_decide
/-- Code #4372 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4372_qec :
    ∃ ψ, SS.IsAmplitudes code_4372 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4372 code_4372_ok (by decide) (by decide)

/-- Catalogue code #4373: ((6,2,2)), m=12, a=[1, 1, 3, 3, 5, 6], S=[0, 2]. -/
def code_4373 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4373_ok : code_4373.OK := by native_decide
/-- Code #4373 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4373_qec :
    ∃ ψ, SS.IsAmplitudes code_4373 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4373 code_4373_ok (by decide) (by decide)

/-- Catalogue code #4374: ((6,2,2)), m=12, a=[1, 1, 3, 3, 5, 7], S=[0, 2]. -/
def code_4374 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4374_ok : code_4374.OK := by native_decide
/-- Code #4374 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4374_qec :
    ∃ ψ, SS.IsAmplitudes code_4374 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4374 code_4374_ok (by decide) (by decide)

/-- Catalogue code #4375: ((6,2,2)), m=12, a=[1, 1, 3, 3, 5, 7], S=[0, 10]. -/
def code_4375 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4375_ok : code_4375.OK := by native_decide
/-- Code #4375 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4375_qec :
    ∃ ψ, SS.IsAmplitudes code_4375 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4375 code_4375_ok (by decide) (by decide)

/-- Catalogue code #4376: ((6,2,2)), m=12, a=[1, 1, 3, 3, 6, 7], S=[0, 2]. -/
def code_4376 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4376_ok : code_4376.OK := by native_decide
/-- Code #4376 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4376_qec :
    ∃ ψ, SS.IsAmplitudes code_4376 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4376 code_4376_ok (by decide) (by decide)

/-- Catalogue code #4377: ((6,2,2)), m=12, a=[1, 1, 3, 3, 6, 8], S=[0, 2]. -/
def code_4377 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4377_ok : code_4377.OK := by native_decide
/-- Code #4377 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4377_qec :
    ∃ ψ, SS.IsAmplitudes code_4377 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4377 code_4377_ok (by decide) (by decide)

/-- Catalogue code #4378: ((6,2,2)), m=12, a=[1, 1, 3, 3, 6, 10], S=[0, 5]. -/
def code_4378 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_4378_ok : code_4378.OK := by native_decide
/-- Code #4378 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4378_qec :
    ∃ ψ, SS.IsAmplitudes code_4378 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4378 code_4378_ok (by decide) (by decide)

/-- Catalogue code #4379: ((6,2,2)), m=12, a=[1, 1, 3, 3, 6, 10], S=[0, 7]. -/
def code_4379 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4379_ok : code_4379.OK := by native_decide
/-- Code #4379 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4379_qec :
    ∃ ψ, SS.IsAmplitudes code_4379 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4379 code_4379_ok (by decide) (by decide)

/-- Catalogue code #4380: ((6,2,2)), m=12, a=[1, 1, 3, 3, 6, 11], S=[0, 5]. -/
def code_4380 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_4380_ok : code_4380.OK := by native_decide
/-- Code #4380 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4380_qec :
    ∃ ψ, SS.IsAmplitudes code_4380 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4380 code_4380_ok (by decide) (by decide)

/-- Catalogue code #4381: ((6,2,2)), m=12, a=[1, 1, 3, 3, 8, 10], S=[0, 7]. -/
def code_4381 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4381_ok : code_4381.OK := by native_decide
/-- Code #4381 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4381_qec :
    ∃ ψ, SS.IsAmplitudes code_4381 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4381 code_4381_ok (by decide) (by decide)

/-- Catalogue code #4382: ((6,2,2)), m=12, a=[1, 1, 3, 4, 4, 6], S=[0, 2]. -/
def code_4382 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_4382_ok : code_4382.OK := by native_decide
/-- Code #4382 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4382_qec :
    ∃ ψ, SS.IsAmplitudes code_4382 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4382 code_4382_ok (by decide) (by decide)

/-- Catalogue code #4383: ((6,2,2)), m=12, a=[1, 1, 3, 4, 4, 6], S=[0, 5]. -/
def code_4383 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_4383_ok : code_4383.OK := by native_decide
/-- Code #4383 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4383_qec :
    ∃ ψ, SS.IsAmplitudes code_4383 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4383 code_4383_ok (by decide) (by decide)

/-- Catalogue code #4384: ((6,2,2)), m=12, a=[1, 1, 3, 4, 4, 7], S=[0, 10]. -/
def code_4384 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4384_ok : code_4384.OK := by native_decide
/-- Code #4384 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4384_qec :
    ∃ ψ, SS.IsAmplitudes code_4384 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4384 code_4384_ok (by decide) (by decide)

/-- Catalogue code #4385: ((6,2,2)), m=12, a=[1, 1, 3, 4, 4, 10], S=[0, 5]. -/
def code_4385 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_4385_ok : code_4385.OK := by native_decide
/-- Code #4385 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4385_qec :
    ∃ ψ, SS.IsAmplitudes code_4385 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4385 code_4385_ok (by decide) (by decide)

/-- Catalogue code #4386: ((6,2,2)), m=12, a=[1, 1, 3, 4, 5, 5], S=[0, 2]. -/
def code_4386 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4386_ok : code_4386.OK := by native_decide
/-- Code #4386 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4386_qec :
    ∃ ψ, SS.IsAmplitudes code_4386 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4386 code_4386_ok (by decide) (by decide)

/-- Catalogue code #4387: ((6,2,2)), m=12, a=[1, 1, 3, 4, 5, 6], S=[0, 10]. -/
def code_4387 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4387_ok : code_4387.OK := by native_decide
/-- Code #4387 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4387_qec :
    ∃ ψ, SS.IsAmplitudes code_4387 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4387 code_4387_ok (by decide) (by decide)

/-- Catalogue code #4388: ((6,2,2)), m=12, a=[1, 1, 3, 4, 5, 7], S=[0, 2]. -/
def code_4388 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4388_ok : code_4388.OK := by native_decide
/-- Code #4388 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4388_qec :
    ∃ ψ, SS.IsAmplitudes code_4388 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4388 code_4388_ok (by decide) (by decide)

/-- Catalogue code #4389: ((6,2,2)), m=12, a=[1, 1, 3, 4, 5, 7], S=[0, 10]. -/
def code_4389 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4389_ok : code_4389.OK := by native_decide
/-- Code #4389 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4389_qec :
    ∃ ψ, SS.IsAmplitudes code_4389 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4389 code_4389_ok (by decide) (by decide)

/-- Catalogue code #4390: ((6,2,2)), m=12, a=[1, 1, 3, 4, 6, 7], S=[0, 2]. -/
def code_4390 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4390_ok : code_4390.OK := by native_decide
/-- Code #4390 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4390_qec :
    ∃ ψ, SS.IsAmplitudes code_4390 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4390 code_4390_ok (by decide) (by decide)

/-- Catalogue code #4391: ((6,2,2)), m=12, a=[1, 1, 3, 4, 6, 10], S=[0, 5]. -/
def code_4391 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4391_ok : code_4391.OK := by native_decide
/-- Code #4391 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4391_qec :
    ∃ ψ, SS.IsAmplitudes code_4391 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4391 code_4391_ok (by decide) (by decide)

/-- Catalogue code #4392: ((6,2,2)), m=12, a=[1, 1, 3, 4, 6, 11], S=[0, 5]. -/
def code_4392 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4392_ok : code_4392.OK := by native_decide
/-- Code #4392 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4392_qec :
    ∃ ψ, SS.IsAmplitudes code_4392 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4392 code_4392_ok (by decide) (by decide)

/-- Catalogue code #4393: ((6,2,2)), m=12, a=[1, 1, 3, 5, 5, 7], S=[0, 2]. -/
def code_4393 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4393_ok : code_4393.OK := by native_decide
/-- Code #4393 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4393_qec :
    ∃ ψ, SS.IsAmplitudes code_4393 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4393 code_4393_ok (by decide) (by decide)

/-- Catalogue code #4394: ((6,2,2)), m=12, a=[1, 1, 3, 5, 5, 8], S=[0, 2]. -/
def code_4394 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4394_ok : code_4394.OK := by native_decide
/-- Code #4394 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4394_qec :
    ∃ ψ, SS.IsAmplitudes code_4394 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4394 code_4394_ok (by decide) (by decide)

/-- Catalogue code #4395: ((6,2,2)), m=12, a=[1, 1, 3, 5, 5, 8], S=[0, 10]. -/
def code_4395 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4395_ok : code_4395.OK := by native_decide
/-- Code #4395 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4395_qec :
    ∃ ψ, SS.IsAmplitudes code_4395 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4395 code_4395_ok (by decide) (by decide)

/-- Catalogue code #4396: ((6,2,2)), m=12, a=[1, 1, 3, 5, 5, 9], S=[0, 2]. -/
def code_4396 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_4396_ok : code_4396.OK := by native_decide
/-- Code #4396 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4396_qec :
    ∃ ψ, SS.IsAmplitudes code_4396 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4396 code_4396_ok (by decide) (by decide)

/-- Catalogue code #4397: ((6,2,2)), m=12, a=[1, 1, 3, 5, 5, 11], S=[0, 10]. -/
def code_4397 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ)]
theorem code_4397_ok : code_4397.OK := by native_decide
/-- Code #4397 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4397_qec :
    ∃ ψ, SS.IsAmplitudes code_4397 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4397 code_4397_ok (by decide) (by decide)

/-- Catalogue code #4398: ((6,2,2)), m=12, a=[1, 1, 3, 5, 6, 7], S=[0, 2]. -/
def code_4398 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4398_ok : code_4398.OK := by native_decide
/-- Code #4398 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4398_qec :
    ∃ ψ, SS.IsAmplitudes code_4398 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4398 code_4398_ok (by decide) (by decide)

/-- Catalogue code #4399: ((6,2,2)), m=12, a=[1, 1, 3, 5, 6, 8], S=[0, 10]. -/
def code_4399 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_4399_ok : code_4399.OK := by native_decide
/-- Code #4399 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4399_qec :
    ∃ ψ, SS.IsAmplitudes code_4399 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4399 code_4399_ok (by decide) (by decide)

/-- Catalogue code #4400: ((6,2,2)), m=12, a=[1, 1, 3, 6, 7, 8], S=[0, 10]. -/
def code_4400 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4400_ok : code_4400.OK := by native_decide
/-- Code #4400 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4400_qec :
    ∃ ψ, SS.IsAmplitudes code_4400 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4400 code_4400_ok (by decide) (by decide)

/-- Catalogue code #4401: ((6,2,2)), m=12, a=[1, 1, 3, 6, 7, 9], S=[0, 10]. -/
def code_4401 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4401_ok : code_4401.OK := by native_decide
/-- Code #4401 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4401_qec :
    ∃ ψ, SS.IsAmplitudes code_4401 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4401 code_4401_ok (by decide) (by decide)

/-- Catalogue code #4402: ((6,2,2)), m=12, a=[1, 1, 3, 6, 8, 8], S=[0, 5]. -/
def code_4402 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 2), ((-1 : ℚ) / 3), ((1 : ℚ) / 6)]
theorem code_4402_ok : code_4402.OK := by native_decide
/-- Code #4402 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4402_qec :
    ∃ ψ, SS.IsAmplitudes code_4402 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4402 code_4402_ok (by decide) (by decide)

/-- Catalogue code #4403: ((6,2,2)), m=12, a=[1, 1, 3, 6, 8, 8], S=[0, 10]. -/
def code_4403 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_4403_ok : code_4403.OK := by native_decide
/-- Code #4403 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4403_qec :
    ∃ ψ, SS.IsAmplitudes code_4403 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4403 code_4403_ok (by decide) (by decide)

/-- Catalogue code #4404: ((6,2,2)), m=12, a=[1, 1, 3, 6, 8, 9], S=[0, 5]. -/
def code_4404 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2)]
theorem code_4404_ok : code_4404.OK := by native_decide
/-- Code #4404 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4404_qec :
    ∃ ψ, SS.IsAmplitudes code_4404 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4404 code_4404_ok (by decide) (by decide)

/-- Catalogue code #4405: ((6,2,2)), m=12, a=[1, 1, 3, 6, 8, 10], S=[0, 7]. -/
def code_4405 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 2)]
theorem code_4405_ok : code_4405.OK := by native_decide
/-- Code #4405 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4405_qec :
    ∃ ψ, SS.IsAmplitudes code_4405 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4405 code_4405_ok (by decide) (by decide)

/-- Catalogue code #4406: ((6,2,2)), m=12, a=[1, 1, 3, 7, 7, 7], S=[0, 10]. -/
def code_4406 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_4406_ok : code_4406.OK := by native_decide
/-- Code #4406 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4406_qec :
    ∃ ψ, SS.IsAmplitudes code_4406 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4406 code_4406_ok (by decide) (by decide)

/-- Catalogue code #4407: ((6,2,2)), m=12, a=[1, 1, 3, 7, 7, 8], S=[0, 2]. -/
def code_4407 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4407_ok : code_4407.OK := by native_decide
/-- Code #4407 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4407_qec :
    ∃ ψ, SS.IsAmplitudes code_4407 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4407 code_4407_ok (by decide) (by decide)

/-- Catalogue code #4408: ((6,2,2)), m=12, a=[1, 1, 3, 7, 7, 9], S=[0, 10]. -/
def code_4408 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_4408_ok : code_4408.OK := by native_decide
/-- Code #4408 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4408_qec :
    ∃ ψ, SS.IsAmplitudes code_4408 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4408 code_4408_ok (by decide) (by decide)

/-- Catalogue code #4409: ((6,2,2)), m=12, a=[1, 1, 3, 7, 7, 11], S=[0, 2]. -/
def code_4409 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_4409_ok : code_4409.OK := by native_decide
/-- Code #4409 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4409_qec :
    ∃ ψ, SS.IsAmplitudes code_4409 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4409 code_4409_ok (by decide) (by decide)

/-- Catalogue code #4410: ((6,2,2)), m=12, a=[1, 1, 3, 7, 8, 8], S=[0, 10]. -/
def code_4410 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_4410_ok : code_4410.OK := by native_decide
/-- Code #4410 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4410_qec :
    ∃ ψ, SS.IsAmplitudes code_4410 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4410 code_4410_ok (by decide) (by decide)

/-- Catalogue code #4411: ((6,2,2)), m=12, a=[1, 1, 3, 7, 8, 11], S=[0, 2]. -/
def code_4411 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_4411_ok : code_4411.OK := by native_decide
/-- Code #4411 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4411_qec :
    ∃ ψ, SS.IsAmplitudes code_4411 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4411 code_4411_ok (by decide) (by decide)

/-- Catalogue code #4412: ((6,2,2)), m=12, a=[1, 1, 3, 8, 10, 11], S=[0, 5]. -/
def code_4412 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4412_ok : code_4412.OK := by native_decide
/-- Code #4412 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4412_qec :
    ∃ ψ, SS.IsAmplitudes code_4412 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4412 code_4412_ok (by decide) (by decide)

/-- Catalogue code #4413: ((6,2,2)), m=12, a=[1, 1, 3, 9, 10, 10], S=[0, 5]. -/
def code_4413 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (3 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4413_ok : code_4413.OK := by native_decide
/-- Code #4413 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4413_qec :
    ∃ ψ, SS.IsAmplitudes code_4413 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4413 code_4413_ok (by decide) (by decide)

/-- Catalogue code #4414: ((6,2,2)), m=12, a=[1, 1, 4, 4, 4, 6], S=[0, 2]. -/
def code_4414 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ)]
theorem code_4414_ok : code_4414.OK := by native_decide
/-- Code #4414 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4414_qec :
    ∃ ψ, SS.IsAmplitudes code_4414 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4414 code_4414_ok (by decide) (by decide)

/-- Catalogue code #4415: ((6,2,2)), m=12, a=[1, 1, 4, 4, 4, 6], S=[0, 10]. -/
def code_4415 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4415_ok : code_4415.OK := by native_decide
/-- Code #4415 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4415_qec :
    ∃ ψ, SS.IsAmplitudes code_4415 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4415 code_4415_ok (by decide) (by decide)

/-- Catalogue code #4416: ((6,2,2)), m=12, a=[1, 1, 4, 4, 5, 9], S=[0, 10]. -/
def code_4416 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4416_ok : code_4416.OK := by native_decide
/-- Code #4416 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4416_qec :
    ∃ ψ, SS.IsAmplitudes code_4416 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4416 code_4416_ok (by decide) (by decide)

/-- Catalogue code #4417: ((6,2,2)), m=12, a=[1, 1, 4, 4, 6, 6], S=[0, 2]. -/
def code_4417 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4417_ok : code_4417.OK := by native_decide
/-- Code #4417 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4417_qec :
    ∃ ψ, SS.IsAmplitudes code_4417 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4417 code_4417_ok (by decide) (by decide)

/-- Catalogue code #4418: ((6,2,2)), m=12, a=[1, 1, 4, 4, 6, 7], S=[0, 2]. -/
def code_4418 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3)]
theorem code_4418_ok : code_4418.OK := by native_decide
/-- Code #4418 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4418_qec :
    ∃ ψ, SS.IsAmplitudes code_4418 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4418 code_4418_ok (by decide) (by decide)

/-- Catalogue code #4419: ((6,2,2)), m=12, a=[1, 1, 4, 4, 6, 8], S=[0, 10]. -/
def code_4419 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4419_ok : code_4419.OK := by native_decide
/-- Code #4419 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4419_qec :
    ∃ ψ, SS.IsAmplitudes code_4419 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4419 code_4419_ok (by decide) (by decide)

/-- Catalogue code #4420: ((6,2,2)), m=12, a=[1, 1, 4, 4, 6, 9], S=[0, 10]. -/
def code_4420 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4420_ok : code_4420.OK := by native_decide
/-- Code #4420 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4420_qec :
    ∃ ψ, SS.IsAmplitudes code_4420 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4420 code_4420_ok (by decide) (by decide)

/-- Catalogue code #4421: ((6,2,2)), m=12, a=[1, 1, 4, 4, 6, 10], S=[0, 5]. -/
def code_4421 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4421_ok : code_4421.OK := by native_decide
/-- Code #4421 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4421_qec :
    ∃ ψ, SS.IsAmplitudes code_4421 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4421 code_4421_ok (by decide) (by decide)

/-- Catalogue code #4422: ((6,2,2)), m=12, a=[1, 1, 4, 4, 6, 10], S=[0, 7]. -/
def code_4422 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4422_ok : code_4422.OK := by native_decide
/-- Code #4422 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4422_qec :
    ∃ ψ, SS.IsAmplitudes code_4422 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4422 code_4422_ok (by decide) (by decide)

/-- Catalogue code #4423: ((6,2,2)), m=12, a=[1, 1, 4, 4, 9, 9], S=[0, 10]. -/
def code_4423 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4423_ok : code_4423.OK := by native_decide
/-- Code #4423 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4423_qec :
    ∃ ψ, SS.IsAmplitudes code_4423 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4423 code_4423_ok (by decide) (by decide)

/-- Catalogue code #4424: ((6,2,2)), m=12, a=[1, 1, 4, 5, 5, 7], S=[0, 2]. -/
def code_4424 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4424_ok : code_4424.OK := by native_decide
/-- Code #4424 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4424_qec :
    ∃ ψ, SS.IsAmplitudes code_4424 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4424 code_4424_ok (by decide) (by decide)

/-- Catalogue code #4425: ((6,2,2)), m=12, a=[1, 1, 4, 5, 5, 8], S=[0, 2]. -/
def code_4425 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4425_ok : code_4425.OK := by native_decide
/-- Code #4425 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4425_qec :
    ∃ ψ, SS.IsAmplitudes code_4425 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4425 code_4425_ok (by decide) (by decide)

/-- Catalogue code #4426: ((6,2,2)), m=12, a=[1, 1, 4, 5, 5, 8], S=[0, 10]. -/
def code_4426 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4426_ok : code_4426.OK := by native_decide
/-- Code #4426 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4426_qec :
    ∃ ψ, SS.IsAmplitudes code_4426 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4426 code_4426_ok (by decide) (by decide)

/-- Catalogue code #4427: ((6,2,2)), m=12, a=[1, 1, 4, 5, 5, 9], S=[0, 2]. -/
def code_4427 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4427_ok : code_4427.OK := by native_decide
/-- Code #4427 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4427_qec :
    ∃ ψ, SS.IsAmplitudes code_4427 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4427 code_4427_ok (by decide) (by decide)

/-- Catalogue code #4428: ((6,2,2)), m=12, a=[1, 1, 4, 5, 5, 9], S=[0, 10]. -/
def code_4428 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4428_ok : code_4428.OK := by native_decide
/-- Code #4428 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4428_qec :
    ∃ ψ, SS.IsAmplitudes code_4428 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4428 code_4428_ok (by decide) (by decide)

/-- Catalogue code #4429: ((6,2,2)), m=12, a=[1, 1, 4, 5, 6, 8], S=[0, 10]. -/
def code_4429 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4429_ok : code_4429.OK := by native_decide
/-- Code #4429 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4429_qec :
    ∃ ψ, SS.IsAmplitudes code_4429 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4429 code_4429_ok (by decide) (by decide)

/-- Catalogue code #4430: ((6,2,2)), m=12, a=[1, 1, 4, 5, 6, 9], S=[0, 10]. -/
def code_4430 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4430_ok : code_4430.OK := by native_decide
/-- Code #4430 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4430_qec :
    ∃ ψ, SS.IsAmplitudes code_4430 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4430 code_4430_ok (by decide) (by decide)

/-- Catalogue code #4431: ((6,2,2)), m=12, a=[1, 1, 4, 5, 8, 9], S=[0, 10]. -/
def code_4431 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_4431_ok : code_4431.OK := by native_decide
/-- Code #4431 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4431_qec :
    ∃ ψ, SS.IsAmplitudes code_4431 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4431 code_4431_ok (by decide) (by decide)

/-- Catalogue code #4432: ((6,2,2)), m=12, a=[1, 1, 4, 6, 6, 8], S=[0, 10]. -/
def code_4432 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4432_ok : code_4432.OK := by native_decide
/-- Code #4432 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4432_qec :
    ∃ ψ, SS.IsAmplitudes code_4432 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4432 code_4432_ok (by decide) (by decide)

/-- Catalogue code #4433: ((6,2,2)), m=12, a=[1, 1, 4, 6, 7, 9], S=[0, 2]. -/
def code_4433 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4433_ok : code_4433.OK := by native_decide
/-- Code #4433 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4433_qec :
    ∃ ψ, SS.IsAmplitudes code_4433 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4433 code_4433_ok (by decide) (by decide)

/-- Catalogue code #4434: ((6,2,2)), m=12, a=[1, 1, 4, 6, 8, 8], S=[0, 10]. -/
def code_4434 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_4434_ok : code_4434.OK := by native_decide
/-- Code #4434 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4434_qec :
    ∃ ψ, SS.IsAmplitudes code_4434 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4434 code_4434_ok (by decide) (by decide)

/-- Catalogue code #4435: ((6,2,2)), m=12, a=[1, 1, 4, 6, 8, 9], S=[0, 7]. -/
def code_4435 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4435_ok : code_4435.OK := by native_decide
/-- Code #4435 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4435_qec :
    ∃ ψ, SS.IsAmplitudes code_4435 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4435 code_4435_ok (by decide) (by decide)

/-- Catalogue code #4436: ((6,2,2)), m=12, a=[1, 1, 4, 6, 9, 9], S=[0, 2]. -/
def code_4436 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4436_ok : code_4436.OK := by native_decide
/-- Code #4436 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4436_qec :
    ∃ ψ, SS.IsAmplitudes code_4436 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4436 code_4436_ok (by decide) (by decide)

/-- Catalogue code #4437: ((6,2,2)), m=12, a=[1, 1, 4, 6, 9, 9], S=[0, 5]. -/
def code_4437 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4437_ok : code_4437.OK := by native_decide
/-- Code #4437 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4437_qec :
    ∃ ψ, SS.IsAmplitudes code_4437 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4437 code_4437_ok (by decide) (by decide)

/-- Catalogue code #4438: ((6,2,2)), m=12, a=[1, 1, 4, 6, 9, 9], S=[0, 7]. -/
def code_4438 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4438_ok : code_4438.OK := by native_decide
/-- Code #4438 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4438_qec :
    ∃ ψ, SS.IsAmplitudes code_4438 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4438 code_4438_ok (by decide) (by decide)

/-- Catalogue code #4439: ((6,2,2)), m=12, a=[1, 1, 4, 6, 9, 10], S=[0, 5]. -/
def code_4439 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 2)]
theorem code_4439_ok : code_4439.OK := by native_decide
/-- Code #4439 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4439_qec :
    ∃ ψ, SS.IsAmplitudes code_4439 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4439 code_4439_ok (by decide) (by decide)

/-- Catalogue code #4440: ((6,2,2)), m=12, a=[1, 1, 4, 6, 9, 11], S=[0, 5]. -/
def code_4440 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), ((1 : ℚ) / 2)]
theorem code_4440_ok : code_4440.OK := by native_decide
/-- Code #4440 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4440_qec :
    ∃ ψ, SS.IsAmplitudes code_4440 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4440 code_4440_ok (by decide) (by decide)

/-- Catalogue code #4441: ((6,2,2)), m=12, a=[1, 1, 4, 6, 10, 10], S=[0, 5]. -/
def code_4441 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2), ((2 : ℚ) / 3)]
theorem code_4441_ok : code_4441.OK := by native_decide
/-- Code #4441 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4441_qec :
    ∃ ψ, SS.IsAmplitudes code_4441 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4441 code_4441_ok (by decide) (by decide)

/-- Catalogue code #4442: ((6,2,2)), m=12, a=[1, 1, 4, 8, 9, 9], S=[0, 2]. -/
def code_4442 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4442_ok : code_4442.OK := by native_decide
/-- Code #4442 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4442_qec :
    ∃ ψ, SS.IsAmplitudes code_4442 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4442 code_4442_ok (by decide) (by decide)

/-- Catalogue code #4443: ((6,2,2)), m=12, a=[1, 1, 4, 9, 9, 10], S=[0, 5]. -/
def code_4443 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4443_ok : code_4443.OK := by native_decide
/-- Code #4443 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4443_qec :
    ∃ ψ, SS.IsAmplitudes code_4443 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4443 code_4443_ok (by decide) (by decide)

/-- Catalogue code #4444: ((6,2,2)), m=12, a=[1, 1, 4, 9, 9, 11], S=[0, 5]. -/
def code_4444 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4444_ok : code_4444.OK := by native_decide
/-- Code #4444 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4444_qec :
    ∃ ψ, SS.IsAmplitudes code_4444 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4444 code_4444_ok (by decide) (by decide)

/-- Catalogue code #4445: ((6,2,2)), m=12, a=[1, 1, 4, 9, 10, 10], S=[0, 5]. -/
def code_4445 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4445_ok : code_4445.OK := by native_decide
/-- Code #4445 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4445_qec :
    ∃ ψ, SS.IsAmplitudes code_4445 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4445 code_4445_ok (by decide) (by decide)

/-- Catalogue code #4446: ((6,2,2)), m=12, a=[1, 1, 5, 5, 5, 8], S=[0, 10]. -/
def code_4446 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4446_ok : code_4446.OK := by native_decide
/-- Code #4446 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4446_qec :
    ∃ ψ, SS.IsAmplitudes code_4446 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4446 code_4446_ok (by decide) (by decide)

/-- Catalogue code #4447: ((6,2,2)), m=12, a=[1, 1, 5, 5, 5, 9], S=[0, 10]. -/
def code_4447 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4447_ok : code_4447.OK := by native_decide
/-- Code #4447 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4447_qec :
    ∃ ψ, SS.IsAmplitudes code_4447 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4447 code_4447_ok (by decide) (by decide)

/-- Catalogue code #4448: ((6,2,2)), m=12, a=[1, 1, 5, 5, 8, 9], S=[0, 10]. -/
def code_4448 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4448_ok : code_4448.OK := by native_decide
/-- Code #4448 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4448_qec :
    ∃ ψ, SS.IsAmplitudes code_4448 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4448 code_4448_ok (by decide) (by decide)

/-- Catalogue code #4449: ((6,2,2)), m=12, a=[1, 1, 5, 5, 8, 11], S=[0, 10]. -/
def code_4449 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (5 : ZMod 12), (8 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]
theorem code_4449_ok : code_4449.OK := by native_decide
/-- Code #4449 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4449_qec :
    ∃ ψ, SS.IsAmplitudes code_4449 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4449 code_4449_ok (by decide) (by decide)

/-- Catalogue code #4450: ((6,2,2)), m=12, a=[1, 1, 5, 6, 7, 9], S=[0, 2]. -/
def code_4450 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_4450_ok : code_4450.OK := by native_decide
/-- Code #4450 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4450_qec :
    ∃ ψ, SS.IsAmplitudes code_4450 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4450 code_4450_ok (by decide) (by decide)

/-- Catalogue code #4451: ((6,2,2)), m=12, a=[1, 1, 5, 6, 8, 8], S=[0, 2]. -/
def code_4451 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4451_ok : code_4451.OK := by native_decide
/-- Code #4451 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4451_qec :
    ∃ ψ, SS.IsAmplitudes code_4451 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4451 code_4451_ok (by decide) (by decide)

/-- Catalogue code #4452: ((6,2,2)), m=12, a=[1, 1, 5, 6, 8, 9], S=[0, 2]. -/
def code_4452 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4452_ok : code_4452.OK := by native_decide
/-- Code #4452 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4452_qec :
    ∃ ψ, SS.IsAmplitudes code_4452 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4452 code_4452_ok (by decide) (by decide)

/-- Catalogue code #4453: ((6,2,2)), m=12, a=[1, 1, 5, 6, 9, 9], S=[0, 2]. -/
def code_4453 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4453_ok : code_4453.OK := by native_decide
/-- Code #4453 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4453_qec :
    ∃ ψ, SS.IsAmplitudes code_4453 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4453 code_4453_ok (by decide) (by decide)

/-- Catalogue code #4454: ((6,2,2)), m=12, a=[1, 1, 5, 7, 8, 9], S=[0, 2]. -/
def code_4454 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (5 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_4454_ok : code_4454.OK := by native_decide
/-- Code #4454 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4454_qec :
    ∃ ψ, SS.IsAmplitudes code_4454 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4454 code_4454_ok (by decide) (by decide)

/-- Catalogue code #4455: ((6,2,2)), m=12, a=[1, 1, 6, 7, 7, 9], S=[0, 10]. -/
def code_4455 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_4455_ok : code_4455.OK := by native_decide
/-- Code #4455 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4455_qec :
    ∃ ψ, SS.IsAmplitudes code_4455 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4455 code_4455_ok (by decide) (by decide)

/-- Catalogue code #4456: ((6,2,2)), m=12, a=[1, 1, 6, 7, 9, 9], S=[0, 2]. -/
def code_4456 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (7 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_4456_ok : code_4456.OK := by native_decide
/-- Code #4456 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4456_qec :
    ∃ ψ, SS.IsAmplitudes code_4456 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4456 code_4456_ok (by decide) (by decide)

/-- Catalogue code #4457: ((6,2,2)), m=12, a=[1, 1, 6, 8, 8, 8], S=[0, 2]. -/
def code_4457 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (2 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ)]
theorem code_4457_ok : code_4457.OK := by native_decide
/-- Code #4457 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4457_qec :
    ∃ ψ, SS.IsAmplitudes code_4457 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4457 code_4457_ok (by decide) (by decide)

/-- Catalogue code #4458: ((6,2,2)), m=12, a=[1, 1, 6, 8, 8, 9], S=[0, 7]. -/
def code_4458 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_4458_ok : code_4458.OK := by native_decide
/-- Code #4458 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4458_qec :
    ∃ ψ, SS.IsAmplitudes code_4458 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4458 code_4458_ok (by decide) (by decide)

/-- Catalogue code #4459: ((6,2,2)), m=12, a=[1, 1, 6, 8, 8, 10], S=[0, 7]. -/
def code_4459 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((2 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_4459_ok : code_4459.OK := by native_decide
/-- Code #4459 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4459_qec :
    ∃ ψ, SS.IsAmplitudes code_4459 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4459 code_4459_ok (by decide) (by decide)

/-- Catalogue code #4460: ((6,2,2)), m=12, a=[1, 1, 6, 8, 9, 10], S=[0, 7]. -/
def code_4460 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4460_ok : code_4460.OK := by native_decide
/-- Code #4460 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4460_qec :
    ∃ ψ, SS.IsAmplitudes code_4460 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4460 code_4460_ok (by decide) (by decide)

/-- Catalogue code #4461: ((6,2,2)), m=12, a=[1, 1, 6, 9, 9, 10], S=[0, 5]. -/
def code_4461 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_4461_ok : code_4461.OK := by native_decide
/-- Code #4461 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4461_qec :
    ∃ ψ, SS.IsAmplitudes code_4461 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4461 code_4461_ok (by decide) (by decide)

/-- Catalogue code #4462: ((6,2,2)), m=12, a=[1, 1, 6, 9, 9, 10], S=[0, 7]. -/
def code_4462 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4462_ok : code_4462.OK := by native_decide
/-- Code #4462 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4462_qec :
    ∃ ψ, SS.IsAmplitudes code_4462 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4462 code_4462_ok (by decide) (by decide)

/-- Catalogue code #4463: ((6,2,2)), m=12, a=[1, 1, 6, 9, 9, 11], S=[0, 5]. -/
def code_4463 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_4463_ok : code_4463.OK := by native_decide
/-- Code #4463 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4463_qec :
    ∃ ψ, SS.IsAmplitudes code_4463 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4463 code_4463_ok (by decide) (by decide)

/-- Catalogue code #4464: ((6,2,2)), m=12, a=[1, 1, 6, 9, 10, 10], S=[0, 5]. -/
def code_4464 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_4464_ok : code_4464.OK := by native_decide
/-- Code #4464 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4464_qec :
    ∃ ψ, SS.IsAmplitudes code_4464 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4464 code_4464_ok (by decide) (by decide)

/-- Catalogue code #4465: ((6,2,2)), m=12, a=[1, 1, 6, 10, 10, 10], S=[0, 7]. -/
def code_4465 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (6 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4465_ok : code_4465.OK := by native_decide
/-- Code #4465 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4465_qec :
    ∃ ψ, SS.IsAmplitudes code_4465 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4465 code_4465_ok (by decide) (by decide)

/-- Catalogue code #4466: ((6,2,2)), m=12, a=[1, 1, 7, 7, 7, 8], S=[0, 10]. -/
def code_4466 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_4466_ok : code_4466.OK := by native_decide
/-- Code #4466 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4466_qec :
    ∃ ψ, SS.IsAmplitudes code_4466 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4466 code_4466_ok (by decide) (by decide)

/-- Catalogue code #4467: ((6,2,2)), m=12, a=[1, 1, 7, 7, 8, 9], S=[0, 10]. -/
def code_4467 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (7 : ZMod 12), (7 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (10 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4467_ok : code_4467.OK := by native_decide
/-- Code #4467 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4467_qec :
    ∃ ψ, SS.IsAmplitudes code_4467 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4467 code_4467_ok (by decide) (by decide)

/-- Catalogue code #4468: ((6,2,2)), m=12, a=[1, 1, 8, 8, 9, 10], S=[0, 7]. -/
def code_4468 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (1 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12), (10 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 2)]
theorem code_4468_ok : code_4468.OK := by native_decide
/-- Code #4468 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4468_qec :
    ∃ ψ, SS.IsAmplitudes code_4468 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4468 code_4468_ok (by decide) (by decide)

/-- Catalogue code #4469: ((6,2,2)), m=12, a=[1, 2, 2, 2, 6, 11], S=[0, 5]. -/
def code_4469 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_4469_ok : code_4469.OK := by native_decide
/-- Code #4469 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4469_qec :
    ∃ ψ, SS.IsAmplitudes code_4469 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4469 code_4469_ok (by decide) (by decide)

/-- Catalogue code #4470: ((6,2,2)), m=12, a=[1, 2, 2, 3, 3, 4], S=[0, 7]. -/
def code_4470 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((5 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6)]
theorem code_4470_ok : code_4470.OK := by native_decide
/-- Code #4470 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4470_qec :
    ∃ ψ, SS.IsAmplitudes code_4470 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4470 code_4470_ok (by decide) (by decide)

/-- Catalogue code #4471: ((6,2,2)), m=12, a=[1, 2, 2, 3, 4, 4], S=[0, 7]. -/
def code_4471 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_4471_ok : code_4471.OK := by native_decide
/-- Code #4471 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4471_qec :
    ∃ ψ, SS.IsAmplitudes code_4471 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4471 code_4471_ok (by decide) (by decide)

/-- Catalogue code #4472: ((6,2,2)), m=12, a=[1, 2, 2, 3, 4, 6], S=[0, 5]. -/
def code_4472 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_4472_ok : code_4472.OK := by native_decide
/-- Code #4472 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4472_qec :
    ∃ ψ, SS.IsAmplitudes code_4472 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4472 code_4472_ok (by decide) (by decide)

/-- Catalogue code #4473: ((6,2,2)), m=12, a=[1, 2, 2, 3, 4, 6], S=[0, 7]. -/
def code_4473 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_4473_ok : code_4473.OK := by native_decide
/-- Code #4473 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4473_qec :
    ∃ ψ, SS.IsAmplitudes code_4473 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4473 code_4473_ok (by decide) (by decide)

/-- Catalogue code #4474: ((6,2,2)), m=12, a=[1, 2, 2, 3, 4, 8], S=[0, 5]. -/
def code_4474 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6)]
theorem code_4474_ok : code_4474.OK := by native_decide
/-- Code #4474 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4474_qec :
    ∃ ψ, SS.IsAmplitudes code_4474 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4474 code_4474_ok (by decide) (by decide)

/-- Catalogue code #4475: ((6,2,2)), m=12, a=[1, 2, 2, 3, 4, 9], S=[0, 5]. -/
def code_4475 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((-5 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4475_ok : code_4475.OK := by native_decide
/-- Code #4475 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4475_qec :
    ∃ ψ, SS.IsAmplitudes code_4475 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4475 code_4475_ok (by decide) (by decide)

/-- Catalogue code #4476: ((6,2,2)), m=12, a=[1, 2, 2, 3, 4, 11], S=[0, 5]. -/
def code_4476 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((5 : ℚ) / 6)]
theorem code_4476_ok : code_4476.OK := by native_decide
/-- Code #4476 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4476_qec :
    ∃ ψ, SS.IsAmplitudes code_4476 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4476 code_4476_ok (by decide) (by decide)

/-- Catalogue code #4477: ((6,2,2)), m=12, a=[1, 2, 2, 3, 6, 8], S=[0, 5]. -/
def code_4477 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4477_ok : code_4477.OK := by native_decide
/-- Code #4477 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4477_qec :
    ∃ ψ, SS.IsAmplitudes code_4477 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4477 code_4477_ok (by decide) (by decide)

/-- Catalogue code #4478: ((6,2,2)), m=12, a=[1, 2, 2, 3, 6, 11], S=[0, 5]. -/
def code_4478 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4478_ok : code_4478.OK := by native_decide
/-- Code #4478 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4478_qec :
    ∃ ψ, SS.IsAmplitudes code_4478 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4478 code_4478_ok (by decide) (by decide)

/-- Catalogue code #4479: ((6,2,2)), m=12, a=[1, 2, 2, 3, 8, 8], S=[0, 5]. -/
def code_4479 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4479_ok : code_4479.OK := by native_decide
/-- Code #4479 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4479_qec :
    ∃ ψ, SS.IsAmplitudes code_4479 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4479 code_4479_ok (by decide) (by decide)

/-- Catalogue code #4480: ((6,2,2)), m=12, a=[1, 2, 2, 3, 8, 8], S=[0, 7]. -/
def code_4480 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4480_ok : code_4480.OK := by native_decide
/-- Code #4480 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4480_qec :
    ∃ ψ, SS.IsAmplitudes code_4480 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4480 code_4480_ok (by decide) (by decide)

/-- Catalogue code #4481: ((6,2,2)), m=12, a=[1, 2, 2, 3, 8, 9], S=[0, 5]. -/
def code_4481 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4481_ok : code_4481.OK := by native_decide
/-- Code #4481 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4481_qec :
    ∃ ψ, SS.IsAmplitudes code_4481 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4481 code_4481_ok (by decide) (by decide)

/-- Catalogue code #4482: ((6,2,2)), m=12, a=[1, 2, 2, 4, 4, 9], S=[0, 5]. -/
def code_4482 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_4482_ok : code_4482.OK := by native_decide
/-- Code #4482 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4482_qec :
    ∃ ψ, SS.IsAmplitudes code_4482 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4482 code_4482_ok (by decide) (by decide)

/-- Catalogue code #4483: ((6,2,2)), m=12, a=[1, 2, 2, 4, 4, 11], S=[0, 7]. -/
def code_4483 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]
theorem code_4483_ok : code_4483.OK := by native_decide
/-- Code #4483 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4483_qec :
    ∃ ψ, SS.IsAmplitudes code_4483 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4483 code_4483_ok (by decide) (by decide)

/-- Catalogue code #4484: ((6,2,2)), m=12, a=[1, 2, 2, 4, 6, 9], S=[0, 5]. -/
def code_4484 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_4484_ok : code_4484.OK := by native_decide
/-- Code #4484 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4484_qec :
    ∃ ψ, SS.IsAmplitudes code_4484 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4484 code_4484_ok (by decide) (by decide)

/-- Catalogue code #4485: ((6,2,2)), m=12, a=[1, 2, 2, 4, 6, 9], S=[0, 7]. -/
def code_4485 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ)]
theorem code_4485_ok : code_4485.OK := by native_decide
/-- Code #4485 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4485_qec :
    ∃ ψ, SS.IsAmplitudes code_4485 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4485 code_4485_ok (by decide) (by decide)

/-- Catalogue code #4486: ((6,2,2)), m=12, a=[1, 2, 2, 4, 6, 11], S=[0, 5]. -/
def code_4486 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_4486_ok : code_4486.OK := by native_decide
/-- Code #4486 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4486_qec :
    ∃ ψ, SS.IsAmplitudes code_4486 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4486 code_4486_ok (by decide) (by decide)

/-- Catalogue code #4487: ((6,2,2)), m=12, a=[1, 2, 2, 6, 8, 9], S=[0, 5]. -/
def code_4487 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((5 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_4487_ok : code_4487.OK := by native_decide
/-- Code #4487 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4487_qec :
    ∃ ψ, SS.IsAmplitudes code_4487 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4487 code_4487_ok (by decide) (by decide)

/-- Catalogue code #4488: ((6,2,2)), m=12, a=[1, 2, 2, 9, 9, 11], S=[0, 5]. -/
def code_4488 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (2 : ZMod 12), (9 : ZMod 12), (9 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4488_ok : code_4488.OK := by native_decide
/-- Code #4488 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4488_qec :
    ∃ ψ, SS.IsAmplitudes code_4488 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4488 code_4488_ok (by decide) (by decide)

/-- Catalogue code #4489: ((6,2,2)), m=12, a=[1, 2, 3, 3, 4, 4], S=[0, 7]. -/
def code_4489 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((1 : ℚ) / 6), (0 : ℚ)]
theorem code_4489_ok : code_4489.OK := by native_decide
/-- Code #4489 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4489_qec :
    ∃ ψ, SS.IsAmplitudes code_4489 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4489 code_4489_ok (by decide) (by decide)

/-- Catalogue code #4490: ((6,2,2)), m=12, a=[1, 2, 3, 3, 4, 11], S=[0, 5]. -/
def code_4490 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4490_ok : code_4490.OK := by native_decide
/-- Code #4490 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4490_qec :
    ∃ ψ, SS.IsAmplitudes code_4490 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4490 code_4490_ok (by decide) (by decide)

/-- Catalogue code #4491: ((6,2,2)), m=12, a=[1, 2, 3, 3, 6, 8], S=[0, 7]. -/
def code_4491 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4491_ok : code_4491.OK := by native_decide
/-- Code #4491 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4491_qec :
    ∃ ψ, SS.IsAmplitudes code_4491 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4491 code_4491_ok (by decide) (by decide)

/-- Catalogue code #4492: ((6,2,2)), m=12, a=[1, 2, 3, 3, 6, 11], S=[0, 7]. -/
def code_4492 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (6 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4492_ok : code_4492.OK := by native_decide
/-- Code #4492 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4492_qec :
    ∃ ψ, SS.IsAmplitudes code_4492 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4492 code_4492_ok (by decide) (by decide)

/-- Catalogue code #4493: ((6,2,2)), m=12, a=[1, 2, 3, 3, 8, 8], S=[0, 7]. -/
def code_4493 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (3 : ZMod 12), (8 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((-1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_4493_ok : code_4493.OK := by native_decide
/-- Code #4493 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4493_qec :
    ∃ ψ, SS.IsAmplitudes code_4493 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4493 code_4493_ok (by decide) (by decide)

/-- Catalogue code #4494: ((6,2,2)), m=12, a=[1, 2, 3, 4, 4, 6], S=[0, 5]. -/
def code_4494 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_4494_ok : code_4494.OK := by native_decide
/-- Code #4494 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4494_qec :
    ∃ ψ, SS.IsAmplitudes code_4494 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4494 code_4494_ok (by decide) (by decide)

/-- Catalogue code #4495: ((6,2,2)), m=12, a=[1, 2, 3, 4, 4, 6], S=[0, 7]. -/
def code_4495 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 3), ((-1 : ℚ) / 6)]
theorem code_4495_ok : code_4495.OK := by native_decide
/-- Code #4495 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4495_qec :
    ∃ ψ, SS.IsAmplitudes code_4495 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4495 code_4495_ok (by decide) (by decide)

/-- Catalogue code #4496: ((6,2,2)), m=12, a=[1, 2, 3, 4, 4, 9], S=[0, 5]. -/
def code_4496 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (9 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 2), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 6), ((1 : ℚ) / 2)]
theorem code_4496_ok : code_4496.OK := by native_decide
/-- Code #4496 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4496_qec :
    ∃ ψ, SS.IsAmplitudes code_4496 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4496 code_4496_ok (by decide) (by decide)

/-- Catalogue code #4497: ((6,2,2)), m=12, a=[1, 2, 3, 4, 4, 11], S=[0, 7]. -/
def code_4497 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (4 : ZMod 12), (11 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6), ((-1 : ℚ) / 3)]
theorem code_4497_ok : code_4497.OK := by native_decide
/-- Code #4497 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4497_qec :
    ∃ ψ, SS.IsAmplitudes code_4497 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4497 code_4497_ok (by decide) (by decide)

/-- Catalogue code #4498: ((6,2,2)), m=12, a=[1, 2, 3, 4, 6, 8], S=[0, 5]. -/
def code_4498 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (5 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 6), ((1 : ℚ) / 6)]
theorem code_4498_ok : code_4498.OK := by native_decide
/-- Code #4498 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4498_qec :
    ∃ ψ, SS.IsAmplitudes code_4498 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4498 code_4498_ok (by decide) (by decide)

/-- Catalogue code #4499: ((6,2,2)), m=12, a=[1, 2, 3, 4, 6, 8], S=[0, 7]. -/
def code_4499 : ExampleData 6 12 2 where
  a := ![(1 : ZMod 12), (2 : ZMod 12), (3 : ZMod 12), (4 : ZMod 12), (6 : ZMod 12), (8 : ZMod 12)]
  S := ![(0 : ZMod 12), (7 : ZMod 12)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 6), (0 : ℚ), ((1 : ℚ) / 6), ((-1 : ℚ) / 6), ((1 : ℚ) / 3)]
theorem code_4499_ok : code_4499.OK := by native_decide
/-- Code #4499 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4499_qec :
    ∃ ψ, SS.IsAmplitudes code_4499 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4499 code_4499_ok (by decide) (by decide)

end Catalogue.Chunk008
