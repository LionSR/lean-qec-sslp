import SS

namespace Catalogue.Chunk000

open SS SS.Verify

/-- Catalogue code #0: ((4,2,2)), m=4, a=[1, 1, 1, 1], S=[0, 2]. -/
def code_0 : ExampleData 4 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, false, false], ![true, true, true, true]}, {![false, false, true, true], ![true, true, false, false]}]
  prob := ![(fun s : BitString 4 =>
      if s = (![false, false, false, false] : BitString 4) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true] : BitString 4) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 4 =>
      if s = (![false, false, true, true] : BitString 4) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false] : BitString 4) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_0_ok : code_0.OK := by native_decide
/-- Code #0 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_0_qec :
    ∃ ψ, SS.IsAmplitudes code_0 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_0 code_0_ok (by decide) (by decide)

/-- Catalogue code #1: ((5,2,2)), m=4, a=[1, 1, 1, 1, 1], S=[0, 2]. -/
def code_1 : ExampleData 5 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, false, false, false], ![true, false, true, true, true]}, {![false, false, false, true, true], ![true, false, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (1 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_1_ok : code_1.OK := by native_decide
/-- Code #1 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_1_qec :
    ∃ ψ, SS.IsAmplitudes code_1 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_1 code_1_ok (by decide) (by decide)

/-- Catalogue code #2: ((5,2,2)), m=4, a=[1, 3, 3, 3, 3], S=[0, 2]. -/
def code_2 : ExampleData 5 4 2 where
  a := ![(1 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, false, false, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![false, true, false, false, true], ![true, true, true, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2)]
theorem code_2_ok : code_2.OK := by native_decide
/-- Code #2 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_2_qec :
    ∃ ψ, SS.IsAmplitudes code_2 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_2 code_2_ok (by decide) (by decide)

/-- Catalogue code #3: ((5,2,2)), m=5, a=[1, 1, 1, 1, 1], S=[0, 2]. -/
def code_3 : ExampleData 5 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, true, false, true], ![false, true, false, true, false], ![true, false, false, false, true], ![true, false, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false] : BitString 5) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_3_ok : code_3.OK := by native_decide
/-- Code #3 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_3_qec :
    ∃ ψ, SS.IsAmplitudes code_3 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_3 code_3_ok (by decide) (by decide)

/-- Catalogue code #4: ((5,2,2)), m=5, a=[1, 1, 1, 1, 1], S=[0, 3]. -/
def code_4 : ExampleData 5 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, true, false, true, true], ![false, true, true, false, true], ![true, false, true, true, false], ![true, true, false, false, true]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_4_ok : code_4.OK := by native_decide
/-- Code #4 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_4_qec :
    ∃ ψ, SS.IsAmplitudes code_4 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_4 code_4_ok (by decide) (by decide)

/-- Catalogue code #5: ((5,2,2)), m=5, a=[1, 1, 1, 4, 4], S=[0, 3]. -/
def code_5 : ExampleData 5 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, false], ![false, false, true, false, true], ![false, true, true, true, true], ![true, false, false, true, false], ![true, true, false, true, true]}, {![false, false, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true] : BitString 5) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_5_ok : code_5.OK := by native_decide
/-- Code #5 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_5_qec :
    ∃ ψ, SS.IsAmplitudes code_5 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_5 code_5_ok (by decide) (by decide)

/-- Catalogue code #6: ((5,2,2)), m=6, a=[1, 1, 1, 1, 2], S=[0, 3]. -/
def code_6 : ExampleData 5 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, true, false, false, true], ![true, false, true, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_6_ok : code_6.OK := by native_decide
/-- Code #6 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_6_qec :
    ∃ ψ, SS.IsAmplitudes code_6 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_6 code_6_ok (by decide) (by decide)

/-- Catalogue code #7: ((5,2,2)), m=6, a=[1, 1, 1, 1, 3], S=[0, 4]. -/
def code_7 : ExampleData 5 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, true, true, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![true, true, true, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_7_ok : code_7.OK := by native_decide
/-- Code #7 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_7_qec :
    ∃ ψ, SS.IsAmplitudes code_7 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_7 code_7_ok (by decide) (by decide)

/-- Catalogue code #8: ((5,2,2)), m=6, a=[1, 1, 1, 3, 3], S=[0, 4]. -/
def code_8 : ExampleData 5 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false], ![false, false, false, true, true], ![true, true, true, false, true]}, {![false, false, true, false, true], ![false, true, false, false, true], ![true, false, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_8_ok : code_8.OK := by native_decide
/-- Code #8 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_8_qec :
    ∃ ψ, SS.IsAmplitudes code_8 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_8 code_8_ok (by decide) (by decide)

/-- Catalogue code #9: ((5,2,2)), m=6, a=[2, 2, 2, 3, 3], S=[0, 1]. -/
def code_9 : ExampleData 5 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, true, true], ![true, true, true, false, false], ![true, true, true, true, true]}, {![false, true, true, true, false], ![true, false, true, false, true], ![true, true, false, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, true, true, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_9_ok : code_9.OK := by native_decide
/-- Code #9 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_9_qec :
    ∃ ψ, SS.IsAmplitudes code_9 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_9 code_9_ok (by decide) (by decide)

/-- Catalogue code #10: ((5,2,2)), m=7, a=[1, 1, 1, 2, 2], S=[0, 3]. -/
def code_10 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, true, false, true], ![false, true, false, true, false], ![true, false, false, false, true], ![true, false, false, true, false], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_10_ok : code_10.OK := by native_decide
/-- Code #10 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_10_qec :
    ∃ ψ, SS.IsAmplitudes code_10 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_10 code_10_ok (by decide) (by decide)

/-- Catalogue code #11: ((5,2,2)), m=7, a=[1, 1, 1, 2, 2], S=[0, 4]. -/
def code_11 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, false, true, true], ![false, true, true, true, false], ![true, false, true, false, true], ![true, true, false, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_11_ok : code_11.OK := by native_decide
/-- Code #11 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_11_qec :
    ∃ ψ, SS.IsAmplitudes code_11 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_11 code_11_ok (by decide) (by decide)

/-- Catalogue code #12: ((5,2,2)), m=7, a=[1, 1, 1, 3, 4], S=[0, 5]. -/
def code_12 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, false, false, true, true], ![true, true, true, false, true]}, {![false, false, true, false, true], ![false, true, false, false, true], ![true, false, false, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_12_ok : code_12.OK := by native_decide
/-- Code #12 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_12_qec :
    ∃ ψ, SS.IsAmplitudes code_12 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_12 code_12_ok (by decide) (by decide)

/-- Catalogue code #13: ((5,2,2)), m=7, a=[1, 1, 1, 4, 4], S=[0, 2]. -/
def code_13 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![false, true, true, false, false], ![true, false, true, false, false], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_13_ok : code_13.OK := by native_decide
/-- Code #13 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_13_qec :
    ∃ ψ, SS.IsAmplitudes code_13 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_13 code_13_ok (by decide) (by decide)

/-- Catalogue code #14: ((5,2,2)), m=7, a=[1, 1, 2, 2, 2], S=[0, 4]. -/
def code_14 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, true, true, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![false, false, true, true, false], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_14_ok : code_14.OK := by native_decide
/-- Code #14 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14_qec :
    ∃ ψ, SS.IsAmplitudes code_14 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14 code_14_ok (by decide) (by decide)

/-- Catalogue code #15: ((5,2,2)), m=7, a=[1, 1, 2, 5, 5], S=[0, 3]. -/
def code_15 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, false, true, false, true], ![false, false, true, true, false], ![true, true, false, false, true]}, {![false, false, false, true, true], ![false, true, true, false, false], ![true, false, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_15_ok : code_15.OK := by native_decide
/-- Code #15 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_15_qec :
    ∃ ψ, SS.IsAmplitudes code_15 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_15 code_15_ok (by decide) (by decide)

/-- Catalogue code #16: ((5,2,2)), m=7, a=[1, 1, 2, 5, 6], S=[0, 4]. -/
def code_16 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false], ![false, true, false, false, true], ![false, true, true, true, true], ![true, false, false, false, true], ![true, true, false, true, false]}, {![false, false, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_16_ok : code_16.OK := by native_decide
/-- Code #16 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_16_qec :
    ∃ ψ, SS.IsAmplitudes code_16 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_16 code_16_ok (by decide) (by decide)

/-- Catalogue code #17: ((5,2,2)), m=7, a=[1, 1, 3, 3, 3], S=[0, 2]. -/
def code_17 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, true, false, true], ![false, true, true, true, false], ![true, false, false, true, true], ![true, false, true, false, true]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_17_ok : code_17.OK := by native_decide
/-- Code #17 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_17_qec :
    ∃ ψ, SS.IsAmplitudes code_17 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_17 code_17_ok (by decide) (by decide)

/-- Catalogue code #18: ((5,2,2)), m=7, a=[1, 1, 3, 3, 6], S=[0, 2]. -/
def code_18 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, false, false, true], ![false, true, true, true, false], ![true, false, false, false, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_18_ok : code_18.OK := by native_decide
/-- Code #18 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_18_qec :
    ∃ ψ, SS.IsAmplitudes code_18 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_18 code_18_ok (by decide) (by decide)

/-- Catalogue code #19: ((5,2,2)), m=7, a=[1, 1, 4, 4, 4], S=[0, 2]. -/
def code_19 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, true, true, false, true], ![false, true, true, true, false], ![true, false, false, true, true], ![true, false, true, false, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_19_ok : code_19.OK := by native_decide
/-- Code #19 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_19_qec :
    ∃ ψ, SS.IsAmplitudes code_19 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_19 code_19_ok (by decide) (by decide)

/-- Catalogue code #20: ((5,2,2)), m=7, a=[1, 1, 4, 4, 4], S=[0, 5]. -/
def code_20 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, true, true, true], ![false, true, false, true, false], ![false, true, true, false, false], ![true, false, false, false, true], ![true, false, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_20_ok : code_20.OK := by native_decide
/-- Code #20 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_20_qec :
    ∃ ψ, SS.IsAmplitudes code_20 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_20 code_20_ok (by decide) (by decide)

/-- Catalogue code #21: ((5,2,2)), m=7, a=[1, 2, 2, 2, 6], S=[0, 3]. -/
def code_21 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![true, false, false, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, false, false, true, false], ![true, false, true, false, false], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_21_ok : code_21.OK := by native_decide
/-- Code #21 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_21_qec :
    ∃ ψ, SS.IsAmplitudes code_21 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_21 code_21_ok (by decide) (by decide)

/-- Catalogue code #22: ((5,2,2)), m=7, a=[1, 2, 5, 6, 6], S=[0, 3]. -/
def code_22 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, false, true, true], ![true, false, false, true, false], ![true, true, true, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_22_ok : code_22.OK := by native_decide
/-- Code #22 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_22_qec :
    ∃ ψ, SS.IsAmplitudes code_22 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_22 code_22_ok (by decide) (by decide)

/-- Catalogue code #23: ((5,2,2)), m=7, a=[1, 3, 3, 4, 6], S=[0, 5]. -/
def code_23 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, false], ![false, true, false, true, false], ![true, false, false, false, true], ![true, true, false, true, true], ![true, true, true, false, false]}, {![false, true, true, false, true], ![true, false, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, true, false, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_23_ok : code_23.OK := by native_decide
/-- Code #23 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_23_qec :
    ∃ ψ, SS.IsAmplitudes code_23 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_23 code_23_ok (by decide) (by decide)

/-- Catalogue code #24: ((5,2,2)), m=7, a=[1, 4, 4, 6, 6], S=[0, 2]. -/
def code_24 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, true, false, true], ![false, true, true, true, false], ![true, false, false, false, true], ![true, true, true, true, true]}, {![false, false, true, true, true], ![false, true, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, true, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_24_ok : code_24.OK := by native_decide
/-- Code #24 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_24_qec :
    ∃ ψ, SS.IsAmplitudes code_24 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_24 code_24_ok (by decide) (by decide)

/-- Catalogue code #25: ((5,2,2)), m=7, a=[1, 5, 5, 5, 6], S=[0, 4]. -/
def code_25 : ExampleData 5 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, false, false, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![false, true, false, false, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_25_ok : code_25.OK := by native_decide
/-- Code #25 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_25_qec :
    ∃ ψ, SS.IsAmplitudes code_25 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_25 code_25_ok (by decide) (by decide)

/-- Catalogue code #26: ((5,2,2)), m=7, a=[2, 2, 3, 4, 5], S=[0, 1]. -/
def code_26 : ExampleData 5 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, true, false], ![false, true, false, false, true], ![false, true, true, true, true], ![true, false, false, false, true], ![true, true, true, false, false]}, {![false, false, true, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, true, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, false, true] : BitString 5) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_26_ok : code_26.OK := by native_decide
/-- Code #26 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_26_qec :
    ∃ ψ, SS.IsAmplitudes code_26 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_26 code_26_ok (by decide) (by decide)

/-- Catalogue code #27: ((5,2,2)), m=7, a=[2, 2, 5, 6, 6], S=[0, 3]. -/
def code_27 : ExampleData 5 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, true, true], ![false, true, true, false, false], ![true, false, false, true, true], ![true, true, true, true, true]}, {![false, false, true, true, true], ![true, true, false, false, true], ![true, true, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_27_ok : code_27.OK := by native_decide
/-- Code #27 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_27_qec :
    ∃ ψ, SS.IsAmplitudes code_27 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_27 code_27_ok (by decide) (by decide)

/-- Catalogue code #28: ((5,2,2)), m=8, a=[1, 1, 2, 2, 4], S=[0, 5]. -/
def code_28 : ExampleData 5 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false], ![false, false, true, true, true], ![true, true, false, true, true], ![true, true, true, false, true]}, {![false, true, false, false, true], ![false, true, true, true, false], ![true, false, false, false, true]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, true] : BitString 5) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_28_ok : code_28.OK := by native_decide
/-- Code #28 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_28_qec :
    ∃ ψ, SS.IsAmplitudes code_28 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_28 code_28_ok (by decide) (by decide)

/-- Catalogue code #29: ((5,2,2)), m=8, a=[1, 1, 3, 3, 4], S=[0, 2]. -/
def code_29 : ExampleData 5 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false], ![false, true, false, true, true], ![true, false, true, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true] : BitString 5) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_29_ok : code_29.OK := by native_decide
/-- Code #29 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_29_qec :
    ∃ ψ, SS.IsAmplitudes code_29 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_29 code_29_ok (by decide) (by decide)

/-- Catalogue code #30: ((5,2,2)), m=9, a=[1, 1, 2, 2, 3], S=[0, 4]. -/
def code_30 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, true, true, false], ![false, true, false, false, true], ![true, false, false, false, true], ![true, true, false, true, false], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_30_ok : code_30.OK := by native_decide
/-- Code #30 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_30_qec :
    ∃ ψ, SS.IsAmplitudes code_30 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_30 code_30_ok (by decide) (by decide)

/-- Catalogue code #31: ((5,2,2)), m=9, a=[1, 1, 2, 6, 7], S=[0, 4]. -/
def code_31 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, false, true, false, true], ![false, true, true, true, false], ![true, false, true, true, false], ![true, true, false, false, true]}, {![false, false, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_31_ok : code_31.OK := by native_decide
/-- Code #31 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_31_qec :
    ∃ ψ, SS.IsAmplitudes code_31 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_31 code_31_ok (by decide) (by decide)

/-- Catalogue code #32: ((5,2,2)), m=9, a=[1, 1, 3, 4, 4], S=[0, 2]. -/
def code_32 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, true, false, true, true], ![true, false, false, true, true], ![true, true, true, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_32_ok : code_32.OK := by native_decide
/-- Code #32 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_32_qec :
    ∃ ψ, SS.IsAmplitudes code_32 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_32 code_32_ok (by decide) (by decide)

/-- Catalogue code #33: ((5,2,2)), m=9, a=[1, 1, 3, 7, 7], S=[0, 5]. -/
def code_33 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, true, true, true, true], ![true, false, true, true, true], ![true, true, false, false, true], ![true, true, false, true, false]}, {![false, false, false, true, true], ![true, true, true, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_33_ok : code_33.OK := by native_decide
/-- Code #33 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_33_qec :
    ∃ ψ, SS.IsAmplitudes code_33 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_33 code_33_ok (by decide) (by decide)

/-- Catalogue code #34: ((5,2,2)), m=9, a=[1, 1, 5, 5, 6], S=[0, 2]. -/
def code_34 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![true, true, true, true, true]}, {![false, false, false, true, true], ![false, false, true, false, true], ![false, true, true, true, false], ![true, false, true, true, false], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true] : BitString 5) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, false, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_34_ok : code_34.OK := by native_decide
/-- Code #34 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_34_qec :
    ∃ ψ, SS.IsAmplitudes code_34 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_34 code_34_ok (by decide) (by decide)

/-- Catalogue code #35: ((5,2,2)), m=9, a=[1, 3, 5, 5, 8], S=[0, 2]. -/
def code_35 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, false, true, true, true], ![true, false, false, false, true], ![true, true, false, true, false], ![true, true, true, false, false]}, {![false, true, false, false, true], ![true, false, true, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true] : BitString 5) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, false, false, true] : BitString 5) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false] : BitString 5) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_35_ok : code_35.OK := by native_decide
/-- Code #35 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_35_qec :
    ∃ ψ, SS.IsAmplitudes code_35 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_35 code_35_ok (by decide) (by decide)

/-- Catalogue code #36: ((5,2,2)), m=9, a=[1, 4, 4, 6, 8], S=[0, 7]. -/
def code_36 : ExampleData 5 9 2 where
  a := ![(1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false], ![false, false, true, true, true], ![false, true, false, true, true], ![true, false, false, false, true], ![true, true, true, false, false]}, {![false, true, true, false, true], ![true, false, false, true, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true] : BitString 5) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false] : BitString 5) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 5 =>
      if s = (![false, true, true, false, true] : BitString 5) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false] : BitString 5) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_36_ok : code_36.OK := by native_decide
/-- Code #36 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_36_qec :
    ∃ ψ, SS.IsAmplitudes code_36 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_36 code_36_ok (by decide) (by decide)

/-- Catalogue code #37: ((5,2,2)), m=10, a=[2, 2, 3, 3, 8], S=[0, 4]. -/
def code_37 : ExampleData 5 10 2 where
  a := ![(2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false], ![false, true, false, false, true], ![true, false, false, false, true], ![true, true, true, true, false]}, {![false, false, true, true, true], ![true, true, false, false, false]}]
  prob := ![(fun s : BitString 5 =>
      if s = (![false, false, false, false, false] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true] : BitString 5) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false] : BitString 5) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 5 =>
      if s = (![false, false, true, true, true] : BitString 5) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false] : BitString 5) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_37_ok : code_37.OK := by native_decide
/-- Code #37 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_37_qec :
    ∃ ψ, SS.IsAmplitudes code_37 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_37 code_37_ok (by decide) (by decide)

/-- Catalogue code #38: ((6,2,2)), m=4, a=[1, 1, 1, 1, 1, 1], S=[0, 2]. -/
def code_38 : ExampleData 6 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_38_ok : code_38.OK := by native_decide
/-- Code #38 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_38_qec :
    ∃ ψ, SS.IsAmplitudes code_38 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_38 code_38_ok (by decide) (by decide)

/-- Catalogue code #39: ((6,2,2)), m=4, a=[1, 1, 1, 1, 1, 3], S=[0, 2]. -/
def code_39 : ExampleData 6 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (3 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(-1 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (1 : ℚ), (0 : ℚ)]
theorem code_39_ok : code_39.OK := by native_decide
/-- Code #39 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_39_qec :
    ∃ ψ, SS.IsAmplitudes code_39 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_39 code_39_ok (by decide) (by decide)

/-- Catalogue code #40: ((6,2,2)), m=4, a=[1, 1, 1, 1, 3, 3], S=[0, 2]. -/
def code_40 : ExampleData 6 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (-1 : ℚ)]
theorem code_40_ok : code_40.OK := by native_decide
/-- Code #40 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_40_qec :
    ∃ ψ, SS.IsAmplitudes code_40 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_40 code_40_ok (by decide) (by decide)

/-- Catalogue code #41: ((6,2,2)), m=4, a=[1, 1, 1, 3, 3, 3], S=[0, 2]. -/
def code_41 : ExampleData 6 4 2 where
  a := ![(1 : ZMod 4), (1 : ZMod 4), (1 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4), (3 : ZMod 4)]
  S := ![(0 : ZMod 4), (2 : ZMod 4)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_41_ok : code_41.OK := by native_decide
/-- Code #41 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_41_qec :
    ∃ ψ, SS.IsAmplitudes code_41 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_41 code_41_ok (by decide) (by decide)

/-- Catalogue code #42: ((6,2,2)), m=5, a=[1, 1, 1, 1, 1, 1], S=[0, 2]. -/
def code_42 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_42_ok : code_42.OK := by native_decide
/-- Code #42 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_42_qec :
    ∃ ψ, SS.IsAmplitudes code_42 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_42 code_42_ok (by decide) (by decide)

/-- Catalogue code #43: ((6,2,2)), m=5, a=[1, 1, 1, 1, 1, 1], S=[0, 3]. -/
def code_43 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_43_ok : code_43.OK := by native_decide
/-- Code #43 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_43_qec :
    ∃ ψ, SS.IsAmplitudes code_43 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_43 code_43_ok (by decide) (by decide)

/-- Catalogue code #44: ((6,2,2)), m=5, a=[1, 1, 1, 1, 1, 4], S=[0, 2]. -/
def code_44 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]
theorem code_44_ok : code_44.OK := by native_decide
/-- Code #44 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_44_qec :
    ∃ ψ, SS.IsAmplitudes code_44 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_44 code_44_ok (by decide) (by decide)

/-- Catalogue code #45: ((6,2,2)), m=5, a=[1, 1, 1, 1, 1, 4], S=[0, 3]. -/
def code_45 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_45_ok : code_45.OK := by native_decide
/-- Code #45 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_45_qec :
    ∃ ψ, SS.IsAmplitudes code_45 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_45 code_45_ok (by decide) (by decide)

/-- Catalogue code #46: ((6,2,2)), m=5, a=[1, 1, 1, 1, 4, 4], S=[0, 3]. -/
def code_46 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]
theorem code_46_ok : code_46.OK := by native_decide
/-- Code #46 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_46_qec :
    ∃ ψ, SS.IsAmplitudes code_46 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_46 code_46_ok (by decide) (by decide)

/-- Catalogue code #47: ((6,2,2)), m=5, a=[1, 1, 1, 4, 4, 4], S=[0, 2]. -/
def code_47 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-11 : ℚ) / 15)]
theorem code_47_ok : code_47.OK := by native_decide
/-- Code #47 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_47_qec :
    ∃ ψ, SS.IsAmplitudes code_47 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_47 code_47_ok (by decide) (by decide)

/-- Catalogue code #48: ((6,2,2)), m=5, a=[1, 1, 1, 4, 4, 4], S=[0, 3]. -/
def code_48 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]
theorem code_48_ok : code_48.OK := by native_decide
/-- Code #48 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_48_qec :
    ∃ ψ, SS.IsAmplitudes code_48 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_48 code_48_ok (by decide) (by decide)

/-- Catalogue code #49: ((6,2,2)), m=5, a=[1, 1, 4, 4, 4, 4], S=[0, 2]. -/
def code_49 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (-1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]
theorem code_49_ok : code_49.OK := by native_decide
/-- Code #49 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_49_qec :
    ∃ ψ, SS.IsAmplitudes code_49 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_49 code_49_ok (by decide) (by decide)

/-- Catalogue code #50: ((6,2,2)), m=5, a=[1, 4, 4, 4, 4, 4], S=[0, 2]. -/
def code_50 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (2 : ZMod 5)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (-1 : ℚ), ((-1 : ℚ) / 5)]
theorem code_50_ok : code_50.OK := by native_decide
/-- Code #50 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_50_qec :
    ∃ ψ, SS.IsAmplitudes code_50 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_50 code_50_ok (by decide) (by decide)

/-- Catalogue code #51: ((6,2,2)), m=5, a=[1, 4, 4, 4, 4, 4], S=[0, 3]. -/
def code_51 : ExampleData 6 5 2 where
  a := ![(1 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5), (4 : ZMod 5)]
  S := ![(0 : ZMod 5), (3 : ZMod 5)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15)]
theorem code_51_ok : code_51.OK := by native_decide
/-- Code #51 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_51_qec :
    ∃ ψ, SS.IsAmplitudes code_51 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_51 code_51_ok (by decide) (by decide)

/-- Catalogue code #52: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 1], S=[0, 2]. -/
def code_52 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_52_ok : code_52.OK := by native_decide
/-- Code #52 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_52_qec :
    ∃ ψ, SS.IsAmplitudes code_52 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_52 code_52_ok (by decide) (by decide)

/-- Catalogue code #53: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 1], S=[0, 3]. -/
def code_53 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_53_ok : code_53.OK := by native_decide
/-- Code #53 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_53_qec :
    ∃ ψ, SS.IsAmplitudes code_53 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_53 code_53_ok (by decide) (by decide)

/-- Catalogue code #54: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 1], S=[0, 4]. -/
def code_54 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_54_ok : code_54.OK := by native_decide
/-- Code #54 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_54_qec :
    ∃ ψ, SS.IsAmplitudes code_54 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_54 code_54_ok (by decide) (by decide)

/-- Catalogue code #55: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 2], S=[0, 3]. -/
def code_55 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(1 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_55_ok : code_55.OK := by native_decide
/-- Code #55 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_55_qec :
    ∃ ψ, SS.IsAmplitudes code_55 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_55 code_55_ok (by decide) (by decide)

/-- Catalogue code #56: ((6,2,2)), m=6, a=[1, 1, 1, 1, 1, 3], S=[0, 4]. -/
def code_56 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_56_ok : code_56.OK := by native_decide
/-- Code #56 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_56_qec :
    ∃ ψ, SS.IsAmplitudes code_56 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_56 code_56_ok (by decide) (by decide)

/-- Catalogue code #57: ((6,2,2)), m=6, a=[1, 1, 1, 1, 2, 5], S=[0, 3]. -/
def code_57 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_57_ok : code_57.OK := by native_decide
/-- Code #57 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_57_qec :
    ∃ ψ, SS.IsAmplitudes code_57 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_57 code_57_ok (by decide) (by decide)

/-- Catalogue code #58: ((6,2,2)), m=6, a=[1, 1, 1, 1, 3, 3], S=[0, 2]. -/
def code_58 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_58_ok : code_58.OK := by native_decide
/-- Code #58 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_58_qec :
    ∃ ψ, SS.IsAmplitudes code_58 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_58 code_58_ok (by decide) (by decide)

/-- Catalogue code #59: ((6,2,2)), m=6, a=[1, 1, 1, 1, 3, 3], S=[0, 4]. -/
def code_59 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]
theorem code_59_ok : code_59.OK := by native_decide
/-- Code #59 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_59_qec :
    ∃ ψ, SS.IsAmplitudes code_59 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_59 code_59_ok (by decide) (by decide)

/-- Catalogue code #60: ((6,2,2)), m=6, a=[1, 1, 1, 1, 3, 5], S=[0, 2]. -/
def code_60 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_60_ok : code_60.OK := by native_decide
/-- Code #60 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_60_qec :
    ∃ ψ, SS.IsAmplitudes code_60 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_60 code_60_ok (by decide) (by decide)

/-- Catalogue code #61: ((6,2,2)), m=6, a=[1, 1, 1, 1, 3, 5], S=[0, 4]. -/
def code_61 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_61_ok : code_61.OK := by native_decide
/-- Code #61 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_61_qec :
    ∃ ψ, SS.IsAmplitudes code_61 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_61 code_61_ok (by decide) (by decide)

/-- Catalogue code #62: ((6,2,2)), m=6, a=[1, 1, 1, 1, 5, 5], S=[0, 4]. -/
def code_62 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_62_ok : code_62.OK := by native_decide
/-- Code #62 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_62_qec :
    ∃ ψ, SS.IsAmplitudes code_62 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_62 code_62_ok (by decide) (by decide)

/-- Catalogue code #63: ((6,2,2)), m=6, a=[1, 1, 1, 2, 2, 4], S=[0, 3]. -/
def code_63 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_63_ok : code_63.OK := by native_decide
/-- Code #63 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_63_qec :
    ∃ ψ, SS.IsAmplitudes code_63 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_63 code_63_ok (by decide) (by decide)

/-- Catalogue code #64: ((6,2,2)), m=6, a=[1, 1, 1, 3, 3, 3], S=[0, 4]. -/
def code_64 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (1 : ℚ), ((-1 : ℚ) / 3)]
theorem code_64_ok : code_64.OK := by native_decide
/-- Code #64 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_64_qec :
    ∃ ψ, SS.IsAmplitudes code_64 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_64 code_64_ok (by decide) (by decide)

/-- Catalogue code #65: ((6,2,2)), m=6, a=[1, 1, 1, 3, 3, 5], S=[0, 2]. -/
def code_65 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (-1 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_65_ok : code_65.OK := by native_decide
/-- Code #65 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_65_qec :
    ∃ ψ, SS.IsAmplitudes code_65 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_65 code_65_ok (by decide) (by decide)

/-- Catalogue code #66: ((6,2,2)), m=6, a=[1, 1, 1, 3, 3, 5], S=[0, 4]. -/
def code_66 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_66_ok : code_66.OK := by native_decide
/-- Code #66 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_66_qec :
    ∃ ψ, SS.IsAmplitudes code_66 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_66 code_66_ok (by decide) (by decide)

/-- Catalogue code #67: ((6,2,2)), m=6, a=[1, 1, 2, 4, 4, 4], S=[0, 3]. -/
def code_67 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_67_ok : code_67.OK := by native_decide
/-- Code #67 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_67_qec :
    ∃ ψ, SS.IsAmplitudes code_67 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_67 code_67_ok (by decide) (by decide)

/-- Catalogue code #68: ((6,2,2)), m=6, a=[1, 1, 3, 3, 5, 5], S=[0, 4]. -/
def code_68 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_68_ok : code_68.OK := by native_decide
/-- Code #68 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_68_qec :
    ∃ ψ, SS.IsAmplitudes code_68 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_68 code_68_ok (by decide) (by decide)

/-- Catalogue code #69: ((6,2,2)), m=6, a=[1, 2, 2, 2, 4, 5], S=[0, 3]. -/
def code_69 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_69_ok : code_69.OK := by native_decide
/-- Code #69 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_69_qec :
    ∃ ψ, SS.IsAmplitudes code_69 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_69 code_69_ok (by decide) (by decide)

/-- Catalogue code #70: ((6,2,2)), m=6, a=[1, 2, 2, 4, 4, 5], S=[0, 3]. -/
def code_70 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ)]
theorem code_70_ok : code_70.OK := by native_decide
/-- Code #70 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_70_qec :
    ∃ ψ, SS.IsAmplitudes code_70 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_70 code_70_ok (by decide) (by decide)

/-- Catalogue code #71: ((6,2,2)), m=6, a=[1, 3, 3, 5, 5, 5], S=[0, 2]. -/
def code_71 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_71_ok : code_71.OK := by native_decide
/-- Code #71 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_71_qec :
    ∃ ψ, SS.IsAmplitudes code_71 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_71 code_71_ok (by decide) (by decide)

/-- Catalogue code #72: ((6,2,2)), m=6, a=[1, 3, 5, 5, 5, 5], S=[0, 4]. -/
def code_72 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (4 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_72_ok : code_72.OK := by native_decide
/-- Code #72 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_72_qec :
    ∃ ψ, SS.IsAmplitudes code_72 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_72 code_72_ok (by decide) (by decide)

/-- Catalogue code #73: ((6,2,2)), m=6, a=[1, 4, 4, 5, 5, 5], S=[0, 3]. -/
def code_73 : ExampleData 6 6 2 where
  a := ![(1 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_73_ok : code_73.OK := by native_decide
/-- Code #73 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_73_qec :
    ∃ ψ, SS.IsAmplitudes code_73 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_73 code_73_ok (by decide) (by decide)

/-- Catalogue code #74: ((6,2,2)), m=6, a=[2, 2, 2, 2, 3, 3], S=[0, 1]. -/
def code_74 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]
theorem code_74_ok : code_74.OK := by native_decide
/-- Code #74 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_74_qec :
    ∃ ψ, SS.IsAmplitudes code_74 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_74 code_74_ok (by decide) (by decide)

/-- Catalogue code #75: ((6,2,2)), m=6, a=[2, 2, 2, 2, 3, 3], S=[0, 5]. -/
def code_75 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_75_ok : code_75.OK := by native_decide
/-- Code #75 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_75_qec :
    ∃ ψ, SS.IsAmplitudes code_75 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_75 code_75_ok (by decide) (by decide)

/-- Catalogue code #76: ((6,2,2)), m=6, a=[2, 2, 2, 3, 3, 3], S=[0, 1]. -/
def code_76 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_76_ok : code_76.OK := by native_decide
/-- Code #76 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_76_qec :
    ∃ ψ, SS.IsAmplitudes code_76 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_76 code_76_ok (by decide) (by decide)

/-- Catalogue code #77: ((6,2,2)), m=6, a=[2, 2, 2, 3, 3, 3], S=[0, 5]. -/
def code_77 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_77_ok : code_77.OK := by native_decide
/-- Code #77 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_77_qec :
    ∃ ψ, SS.IsAmplitudes code_77 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_77 code_77_ok (by decide) (by decide)

/-- Catalogue code #78: ((6,2,2)), m=6, a=[2, 2, 2, 3, 3, 4], S=[0, 1]. -/
def code_78 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, true, false, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (-1 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3)]
theorem code_78_ok : code_78.OK := by native_decide
/-- Code #78 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_78_qec :
    ∃ ψ, SS.IsAmplitudes code_78 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_78 code_78_ok (by decide) (by decide)

/-- Catalogue code #79: ((6,2,2)), m=6, a=[2, 2, 2, 3, 3, 4], S=[0, 5]. -/
def code_79 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_79_ok : code_79.OK := by native_decide
/-- Code #79 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_79_qec :
    ∃ ψ, SS.IsAmplitudes code_79 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_79 code_79_ok (by decide) (by decide)

/-- Catalogue code #80: ((6,2,2)), m=6, a=[2, 2, 3, 3, 3, 4], S=[0, 1]. -/
def code_80 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_80_ok : code_80.OK := by native_decide
/-- Code #80 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_80_qec :
    ∃ ψ, SS.IsAmplitudes code_80 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_80 code_80_ok (by decide) (by decide)

/-- Catalogue code #81: ((6,2,2)), m=6, a=[2, 2, 3, 3, 4, 4], S=[0, 1]. -/
def code_81 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ)]
theorem code_81_ok : code_81.OK := by native_decide
/-- Code #81 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_81_qec :
    ∃ ψ, SS.IsAmplitudes code_81 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_81 code_81_ok (by decide) (by decide)

/-- Catalogue code #82: ((6,2,2)), m=6, a=[2, 2, 3, 3, 4, 4], S=[0, 5]. -/
def code_82 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 12)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 12)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 12)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 6), ((-1 : ℚ) / 6), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 6), ((-1 : ℚ) / 6)]
theorem code_82_ok : code_82.OK := by native_decide
/-- Code #82 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_82_qec :
    ∃ ψ, SS.IsAmplitudes code_82 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_82 code_82_ok (by decide) (by decide)

/-- Catalogue code #83: ((6,2,2)), m=6, a=[2, 2, 4, 5, 5, 5], S=[0, 3]. -/
def code_83 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (2 : ZMod 6), (4 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (3 : ZMod 6)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_83_ok : code_83.OK := by native_decide
/-- Code #83 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_83_qec :
    ∃ ψ, SS.IsAmplitudes code_83 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_83 code_83_ok (by decide) (by decide)

/-- Catalogue code #84: ((6,2,2)), m=6, a=[2, 3, 3, 3, 4, 4], S=[0, 5]. -/
def code_84 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_84_ok : code_84.OK := by native_decide
/-- Code #84 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_84_qec :
    ∃ ψ, SS.IsAmplitudes code_84 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_84 code_84_ok (by decide) (by decide)

/-- Catalogue code #85: ((6,2,2)), m=6, a=[2, 3, 3, 4, 4, 4], S=[0, 1]. -/
def code_85 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_85_ok : code_85.OK := by native_decide
/-- Code #85 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_85_qec :
    ∃ ψ, SS.IsAmplitudes code_85 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_85 code_85_ok (by decide) (by decide)

/-- Catalogue code #86: ((6,2,2)), m=6, a=[2, 3, 3, 4, 4, 4], S=[0, 5]. -/
def code_86 : ExampleData 6 6 2 where
  a := ![(2 : ZMod 6), (3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_86_ok : code_86.OK := by native_decide
/-- Code #86 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_86_qec :
    ∃ ψ, SS.IsAmplitudes code_86 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_86 code_86_ok (by decide) (by decide)

/-- Catalogue code #87: ((6,2,2)), m=6, a=[3, 3, 4, 4, 4, 4], S=[0, 1]. -/
def code_87 : ExampleData 6 6 2 where
  a := ![(3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (1 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]
theorem code_87_ok : code_87.OK := by native_decide
/-- Code #87 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_87_qec :
    ∃ ψ, SS.IsAmplitudes code_87 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_87 code_87_ok (by decide) (by decide)

/-- Catalogue code #88: ((6,2,2)), m=6, a=[3, 3, 4, 4, 4, 4], S=[0, 5]. -/
def code_88 : ExampleData 6 6 2 where
  a := ![(3 : ZMod 6), (3 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6), (4 : ZMod 6)]
  S := ![(0 : ZMod 6), (5 : ZMod 6)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_88_ok : code_88.OK := by native_decide
/-- Code #88 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_88_qec :
    ∃ ψ, SS.IsAmplitudes code_88 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_88 code_88_ok (by decide) (by decide)

/-- Catalogue code #89: ((6,2,2)), m=6, a=[3, 3, 5, 5, 5, 5], S=[0, 2]. -/
def code_89 : ExampleData 6 6 2 where
  a := ![(3 : ZMod 6), (3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 3)]
theorem code_89_ok : code_89.OK := by native_decide
/-- Code #89 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_89_qec :
    ∃ ψ, SS.IsAmplitudes code_89 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_89 code_89_ok (by decide) (by decide)

/-- Catalogue code #90: ((6,2,2)), m=6, a=[3, 5, 5, 5, 5, 5], S=[0, 2]. -/
def code_90 : ExampleData 6 6 2 where
  a := ![(3 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6), (5 : ZMod 6)]
  S := ![(0 : ZMod 6), (2 : ZMod 6)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]
theorem code_90_ok : code_90.OK := by native_decide
/-- Code #90 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_90_qec :
    ∃ ψ, SS.IsAmplitudes code_90 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_90 code_90_ok (by decide) (by decide)

/-- Catalogue code #91: ((6,2,2)), m=7, a=[1, 1, 1, 1, 1, 2], S=[0, 3]. -/
def code_91 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_91_ok : code_91.OK := by native_decide
/-- Code #91 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_91_qec :
    ∃ ψ, SS.IsAmplitudes code_91 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_91 code_91_ok (by decide) (by decide)

/-- Catalogue code #92: ((6,2,2)), m=7, a=[1, 1, 1, 1, 1, 2], S=[0, 4]. -/
def code_92 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_92_ok : code_92.OK := by native_decide
/-- Code #92 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_92_qec :
    ∃ ψ, SS.IsAmplitudes code_92 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_92 code_92_ok (by decide) (by decide)

/-- Catalogue code #93: ((6,2,2)), m=7, a=[1, 1, 1, 1, 1, 3], S=[0, 5]. -/
def code_93 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_93_ok : code_93.OK := by native_decide
/-- Code #93 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_93_qec :
    ∃ ψ, SS.IsAmplitudes code_93 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_93 code_93_ok (by decide) (by decide)

/-- Catalogue code #94: ((6,2,2)), m=7, a=[1, 1, 1, 1, 1, 4], S=[0, 5]. -/
def code_94 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_94_ok : code_94.OK := by native_decide
/-- Code #94 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_94_qec :
    ∃ ψ, SS.IsAmplitudes code_94 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_94 code_94_ok (by decide) (by decide)

/-- Catalogue code #95: ((6,2,2)), m=7, a=[1, 1, 1, 1, 2, 2], S=[0, 3]. -/
def code_95 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_95_ok : code_95.OK := by native_decide
/-- Code #95 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_95_qec :
    ∃ ψ, SS.IsAmplitudes code_95 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_95 code_95_ok (by decide) (by decide)

/-- Catalogue code #96: ((6,2,2)), m=7, a=[1, 1, 1, 1, 2, 2], S=[0, 4]. -/
def code_96 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((6 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_96_ok : code_96.OK := by native_decide
/-- Code #96 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_96_qec :
    ∃ ψ, SS.IsAmplitudes code_96 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_96 code_96_ok (by decide) (by decide)

/-- Catalogue code #97: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 3], S=[0, 2]. -/
def code_97 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_97_ok : code_97.OK := by native_decide
/-- Code #97 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_97_qec :
    ∃ ψ, SS.IsAmplitudes code_97 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_97 code_97_ok (by decide) (by decide)

/-- Catalogue code #98: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 3], S=[0, 5]. -/
def code_98 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_98_ok : code_98.OK := by native_decide
/-- Code #98 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_98_qec :
    ∃ ψ, SS.IsAmplitudes code_98 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_98 code_98_ok (by decide) (by decide)

/-- Catalogue code #99: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 4], S=[0, 2]. -/
def code_99 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_99_ok : code_99.OK := by native_decide
/-- Code #99 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_99_qec :
    ∃ ψ, SS.IsAmplitudes code_99 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_99 code_99_ok (by decide) (by decide)

/-- Catalogue code #100: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 4], S=[0, 5]. -/
def code_100 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_100_ok : code_100.OK := by native_decide
/-- Code #100 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_100_qec :
    ∃ ψ, SS.IsAmplitudes code_100 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_100 code_100_ok (by decide) (by decide)

/-- Catalogue code #101: ((6,2,2)), m=7, a=[1, 1, 1, 1, 3, 6], S=[0, 2]. -/
def code_101 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_101_ok : code_101.OK := by native_decide
/-- Code #101 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_101_qec :
    ∃ ψ, SS.IsAmplitudes code_101 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_101 code_101_ok (by decide) (by decide)

/-- Catalogue code #102: ((6,2,2)), m=7, a=[1, 1, 1, 1, 4, 4], S=[0, 2]. -/
def code_102 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_102_ok : code_102.OK := by native_decide
/-- Code #102 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_102_qec :
    ∃ ψ, SS.IsAmplitudes code_102 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_102 code_102_ok (by decide) (by decide)

/-- Catalogue code #103: ((6,2,2)), m=7, a=[1, 1, 1, 1, 5, 5], S=[0, 3]. -/
def code_103 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_103_ok : code_103.OK := by native_decide
/-- Code #103 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_103_qec :
    ∃ ψ, SS.IsAmplitudes code_103 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_103 code_103_ok (by decide) (by decide)

/-- Catalogue code #104: ((6,2,2)), m=7, a=[1, 1, 1, 1, 5, 6], S=[0, 4]. -/
def code_104 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_104_ok : code_104.OK := by native_decide
/-- Code #104 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_104_qec :
    ∃ ψ, SS.IsAmplitudes code_104 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_104 code_104_ok (by decide) (by decide)

/-- Catalogue code #105: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 2], S=[0, 3]. -/
def code_105 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_105_ok : code_105.OK := by native_decide
/-- Code #105 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_105_qec :
    ∃ ψ, SS.IsAmplitudes code_105 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_105 code_105_ok (by decide) (by decide)

/-- Catalogue code #106: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 2], S=[0, 4]. -/
def code_106 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_106_ok : code_106.OK := by native_decide
/-- Code #106 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_106_qec :
    ∃ ψ, SS.IsAmplitudes code_106 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_106 code_106_ok (by decide) (by decide)

/-- Catalogue code #107: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 5], S=[0, 3]. -/
def code_107 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_107_ok : code_107.OK := by native_decide
/-- Code #107 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_107_qec :
    ∃ ψ, SS.IsAmplitudes code_107 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_107 code_107_ok (by decide) (by decide)

/-- Catalogue code #108: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 5], S=[0, 4]. -/
def code_108 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_108_ok : code_108.OK := by native_decide
/-- Code #108 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_108_qec :
    ∃ ψ, SS.IsAmplitudes code_108 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_108 code_108_ok (by decide) (by decide)

/-- Catalogue code #109: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 6], S=[0, 3]. -/
def code_109 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-6 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_109_ok : code_109.OK := by native_decide
/-- Code #109 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_109_qec :
    ∃ ψ, SS.IsAmplitudes code_109 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_109 code_109_ok (by decide) (by decide)

/-- Catalogue code #110: ((6,2,2)), m=7, a=[1, 1, 1, 2, 2, 6], S=[0, 4]. -/
def code_110 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_110_ok : code_110.OK := by native_decide
/-- Code #110 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_110_qec :
    ∃ ψ, SS.IsAmplitudes code_110 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_110 code_110_ok (by decide) (by decide)

/-- Catalogue code #111: ((6,2,2)), m=7, a=[1, 1, 1, 2, 5, 5], S=[0, 3]. -/
def code_111 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_111_ok : code_111.OK := by native_decide
/-- Code #111 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_111_qec :
    ∃ ψ, SS.IsAmplitudes code_111 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_111 code_111_ok (by decide) (by decide)

/-- Catalogue code #112: ((6,2,2)), m=7, a=[1, 1, 1, 2, 5, 5], S=[0, 4]. -/
def code_112 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (1 : ℚ), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_112_ok : code_112.OK := by native_decide
/-- Code #112 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_112_qec :
    ∃ ψ, SS.IsAmplitudes code_112 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_112 code_112_ok (by decide) (by decide)

/-- Catalogue code #113: ((6,2,2)), m=7, a=[1, 1, 1, 2, 5, 6], S=[0, 4]. -/
def code_113 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_113_ok : code_113.OK := by native_decide
/-- Code #113 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_113_qec :
    ∃ ψ, SS.IsAmplitudes code_113 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_113 code_113_ok (by decide) (by decide)

/-- Catalogue code #114: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 3], S=[0, 2]. -/
def code_114 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_114_ok : code_114.OK := by native_decide
/-- Code #114 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_114_qec :
    ∃ ψ, SS.IsAmplitudes code_114 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_114 code_114_ok (by decide) (by decide)

/-- Catalogue code #115: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 4], S=[0, 2]. -/
def code_115 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_115_ok : code_115.OK := by native_decide
/-- Code #115 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_115_qec :
    ∃ ψ, SS.IsAmplitudes code_115 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_115 code_115_ok (by decide) (by decide)

/-- Catalogue code #116: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 4], S=[0, 5]. -/
def code_116 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (-1 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_116_ok : code_116.OK := by native_decide
/-- Code #116 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_116_qec :
    ∃ ψ, SS.IsAmplitudes code_116 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_116 code_116_ok (by decide) (by decide)

/-- Catalogue code #117: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 6], S=[0, 2]. -/
def code_117 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_117_ok : code_117.OK := by native_decide
/-- Code #117 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_117_qec :
    ∃ ψ, SS.IsAmplitudes code_117 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_117 code_117_ok (by decide) (by decide)

/-- Catalogue code #118: ((6,2,2)), m=7, a=[1, 1, 1, 3, 3, 6], S=[0, 5]. -/
def code_118 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_118_ok : code_118.OK := by native_decide
/-- Code #118 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_118_qec :
    ∃ ψ, SS.IsAmplitudes code_118 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_118 code_118_ok (by decide) (by decide)

/-- Catalogue code #119: ((6,2,2)), m=7, a=[1, 1, 1, 3, 4, 4], S=[0, 2]. -/
def code_119 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_119_ok : code_119.OK := by native_decide
/-- Code #119 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_119_qec :
    ∃ ψ, SS.IsAmplitudes code_119 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_119 code_119_ok (by decide) (by decide)

/-- Catalogue code #120: ((6,2,2)), m=7, a=[1, 1, 1, 3, 4, 4], S=[0, 5]. -/
def code_120 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_120_ok : code_120.OK := by native_decide
/-- Code #120 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_120_qec :
    ∃ ψ, SS.IsAmplitudes code_120 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_120 code_120_ok (by decide) (by decide)

/-- Catalogue code #121: ((6,2,2)), m=7, a=[1, 1, 1, 3, 4, 6], S=[0, 5]. -/
def code_121 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_121_ok : code_121.OK := by native_decide
/-- Code #121 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_121_qec :
    ∃ ψ, SS.IsAmplitudes code_121 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_121 code_121_ok (by decide) (by decide)

/-- Catalogue code #122: ((6,2,2)), m=7, a=[1, 1, 1, 4, 4, 4], S=[0, 2]. -/
def code_122 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_122_ok : code_122.OK := by native_decide
/-- Code #122 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_122_qec :
    ∃ ψ, SS.IsAmplitudes code_122 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_122 code_122_ok (by decide) (by decide)

/-- Catalogue code #123: ((6,2,2)), m=7, a=[1, 1, 1, 4, 4, 4], S=[0, 5]. -/
def code_123 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_123_ok : code_123.OK := by native_decide
/-- Code #123 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_123_qec :
    ∃ ψ, SS.IsAmplitudes code_123 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_123 code_123_ok (by decide) (by decide)

/-- Catalogue code #124: ((6,2,2)), m=7, a=[1, 1, 1, 4, 4, 6], S=[0, 2]. -/
def code_124 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_124_ok : code_124.OK := by native_decide
/-- Code #124 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_124_qec :
    ∃ ψ, SS.IsAmplitudes code_124 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_124 code_124_ok (by decide) (by decide)

/-- Catalogue code #125: ((6,2,2)), m=7, a=[1, 1, 1, 4, 4, 6], S=[0, 5]. -/
def code_125 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_125_ok : code_125.OK := by native_decide
/-- Code #125 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_125_qec :
    ∃ ψ, SS.IsAmplitudes code_125 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_125 code_125_ok (by decide) (by decide)

/-- Catalogue code #126: ((6,2,2)), m=7, a=[1, 1, 1, 4, 6, 6], S=[0, 2]. -/
def code_126 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_126_ok : code_126.OK := by native_decide
/-- Code #126 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_126_qec :
    ∃ ψ, SS.IsAmplitudes code_126 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_126 code_126_ok (by decide) (by decide)

/-- Catalogue code #127: ((6,2,2)), m=7, a=[1, 1, 1, 5, 5, 5], S=[0, 3]. -/
def code_127 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7)]
theorem code_127_ok : code_127.OK := by native_decide
/-- Code #127 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_127_qec :
    ∃ ψ, SS.IsAmplitudes code_127 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_127 code_127_ok (by decide) (by decide)

/-- Catalogue code #128: ((6,2,2)), m=7, a=[1, 1, 1, 5, 5, 6], S=[0, 3]. -/
def code_128 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_128_ok : code_128.OK := by native_decide
/-- Code #128 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_128_qec :
    ∃ ψ, SS.IsAmplitudes code_128 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_128 code_128_ok (by decide) (by decide)

/-- Catalogue code #129: ((6,2,2)), m=7, a=[1, 1, 1, 5, 6, 6], S=[0, 3]. -/
def code_129 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_129_ok : code_129.OK := by native_decide
/-- Code #129 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_129_qec :
    ∃ ψ, SS.IsAmplitudes code_129 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_129 code_129_ok (by decide) (by decide)

/-- Catalogue code #130: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 2], S=[0, 4]. -/
def code_130 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7)]
theorem code_130_ok : code_130.OK := by native_decide
/-- Code #130 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_130_qec :
    ∃ ψ, SS.IsAmplitudes code_130 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_130 code_130_ok (by decide) (by decide)

/-- Catalogue code #131: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 5], S=[0, 3]. -/
def code_131 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_131_ok : code_131.OK := by native_decide
/-- Code #131 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_131_qec :
    ∃ ψ, SS.IsAmplitudes code_131 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_131 code_131_ok (by decide) (by decide)

/-- Catalogue code #132: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 5], S=[0, 4]. -/
def code_132 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_132_ok : code_132.OK := by native_decide
/-- Code #132 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_132_qec :
    ∃ ψ, SS.IsAmplitudes code_132 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_132 code_132_ok (by decide) (by decide)

/-- Catalogue code #133: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 6], S=[0, 3]. -/
def code_133 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_133_ok : code_133.OK := by native_decide
/-- Code #133 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_133_qec :
    ∃ ψ, SS.IsAmplitudes code_133 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_133 code_133_ok (by decide) (by decide)

/-- Catalogue code #134: ((6,2,2)), m=7, a=[1, 1, 2, 2, 2, 6], S=[0, 4]. -/
def code_134 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ)]
theorem code_134_ok : code_134.OK := by native_decide
/-- Code #134 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_134_qec :
    ∃ ψ, SS.IsAmplitudes code_134 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_134 code_134_ok (by decide) (by decide)

/-- Catalogue code #135: ((6,2,2)), m=7, a=[1, 1, 2, 2, 5, 5], S=[0, 3]. -/
def code_135 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_135_ok : code_135.OK := by native_decide
/-- Code #135 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_135_qec :
    ∃ ψ, SS.IsAmplitudes code_135 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_135 code_135_ok (by decide) (by decide)

/-- Catalogue code #136: ((6,2,2)), m=7, a=[1, 1, 2, 2, 5, 5], S=[0, 4]. -/
def code_136 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]
theorem code_136_ok : code_136.OK := by native_decide
/-- Code #136 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_136_qec :
    ∃ ψ, SS.IsAmplitudes code_136 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_136 code_136_ok (by decide) (by decide)

/-- Catalogue code #137: ((6,2,2)), m=7, a=[1, 1, 2, 2, 5, 6], S=[0, 4]. -/
def code_137 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_137_ok : code_137.OK := by native_decide
/-- Code #137 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_137_qec :
    ∃ ψ, SS.IsAmplitudes code_137 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_137 code_137_ok (by decide) (by decide)

/-- Catalogue code #138: ((6,2,2)), m=7, a=[1, 1, 2, 5, 5, 5], S=[0, 3]. -/
def code_138 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_138_ok : code_138.OK := by native_decide
/-- Code #138 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_138_qec :
    ∃ ψ, SS.IsAmplitudes code_138 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_138 code_138_ok (by decide) (by decide)

/-- Catalogue code #139: ((6,2,2)), m=7, a=[1, 1, 2, 5, 5, 5], S=[0, 4]. -/
def code_139 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_139_ok : code_139.OK := by native_decide
/-- Code #139 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_139_qec :
    ∃ ψ, SS.IsAmplitudes code_139 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_139 code_139_ok (by decide) (by decide)

/-- Catalogue code #140: ((6,2,2)), m=7, a=[1, 1, 2, 5, 5, 6], S=[0, 3]. -/
def code_140 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_140_ok : code_140.OK := by native_decide
/-- Code #140 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_140_qec :
    ∃ ψ, SS.IsAmplitudes code_140 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_140 code_140_ok (by decide) (by decide)

/-- Catalogue code #141: ((6,2,2)), m=7, a=[1, 1, 2, 5, 5, 6], S=[0, 4]. -/
def code_141 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_141_ok : code_141.OK := by native_decide
/-- Code #141 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_141_qec :
    ∃ ψ, SS.IsAmplitudes code_141 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_141 code_141_ok (by decide) (by decide)

/-- Catalogue code #142: ((6,2,2)), m=7, a=[1, 1, 2, 5, 6, 6], S=[0, 3]. -/
def code_142 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_142_ok : code_142.OK := by native_decide
/-- Code #142 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_142_qec :
    ∃ ψ, SS.IsAmplitudes code_142 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_142 code_142_ok (by decide) (by decide)

/-- Catalogue code #143: ((6,2,2)), m=7, a=[1, 1, 2, 6, 6, 6], S=[0, 4]. -/
def code_143 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_143_ok : code_143.OK := by native_decide
/-- Code #143 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_143_qec :
    ∃ ψ, SS.IsAmplitudes code_143 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_143 code_143_ok (by decide) (by decide)

/-- Catalogue code #144: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 3], S=[0, 2]. -/
def code_144 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_144_ok : code_144.OK := by native_decide
/-- Code #144 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_144_qec :
    ∃ ψ, SS.IsAmplitudes code_144 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_144 code_144_ok (by decide) (by decide)

/-- Catalogue code #145: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 3], S=[0, 5]. -/
def code_145 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_145_ok : code_145.OK := by native_decide
/-- Code #145 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_145_qec :
    ∃ ψ, SS.IsAmplitudes code_145 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_145 code_145_ok (by decide) (by decide)

/-- Catalogue code #146: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 4], S=[0, 2]. -/
def code_146 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_146_ok : code_146.OK := by native_decide
/-- Code #146 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_146_qec :
    ∃ ψ, SS.IsAmplitudes code_146 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_146 code_146_ok (by decide) (by decide)

/-- Catalogue code #147: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 6], S=[0, 2]. -/
def code_147 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_147_ok : code_147.OK := by native_decide
/-- Code #147 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_147_qec :
    ∃ ψ, SS.IsAmplitudes code_147 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_147 code_147_ok (by decide) (by decide)

/-- Catalogue code #148: ((6,2,2)), m=7, a=[1, 1, 3, 3, 3, 6], S=[0, 5]. -/
def code_148 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_148_ok : code_148.OK := by native_decide
/-- Code #148 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_148_qec :
    ∃ ψ, SS.IsAmplitudes code_148 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_148 code_148_ok (by decide) (by decide)

/-- Catalogue code #149: ((6,2,2)), m=7, a=[1, 1, 3, 3, 4, 6], S=[0, 2]. -/
def code_149 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), (-1 : ℚ), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_149_ok : code_149.OK := by native_decide
/-- Code #149 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_149_qec :
    ∃ ψ, SS.IsAmplitudes code_149 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_149 code_149_ok (by decide) (by decide)

/-- Catalogue code #150: ((6,2,2)), m=7, a=[1, 1, 3, 3, 4, 6], S=[0, 5]. -/
def code_150 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_150_ok : code_150.OK := by native_decide
/-- Code #150 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_150_qec :
    ∃ ψ, SS.IsAmplitudes code_150 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_150 code_150_ok (by decide) (by decide)

/-- Catalogue code #151: ((6,2,2)), m=7, a=[1, 1, 3, 3, 6, 6], S=[0, 2]. -/
def code_151 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_151_ok : code_151.OK := by native_decide
/-- Code #151 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_151_qec :
    ∃ ψ, SS.IsAmplitudes code_151 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_151 code_151_ok (by decide) (by decide)

/-- Catalogue code #152: ((6,2,2)), m=7, a=[1, 1, 3, 3, 6, 6], S=[0, 5]. -/
def code_152 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_152_ok : code_152.OK := by native_decide
/-- Code #152 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_152_qec :
    ∃ ψ, SS.IsAmplitudes code_152 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_152 code_152_ok (by decide) (by decide)

/-- Catalogue code #153: ((6,2,2)), m=7, a=[1, 1, 3, 4, 4, 4], S=[0, 2]. -/
def code_153 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_153_ok : code_153.OK := by native_decide
/-- Code #153 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_153_qec :
    ∃ ψ, SS.IsAmplitudes code_153 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_153 code_153_ok (by decide) (by decide)

/-- Catalogue code #154: ((6,2,2)), m=7, a=[1, 1, 3, 4, 4, 4], S=[0, 5]. -/
def code_154 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_154_ok : code_154.OK := by native_decide
/-- Code #154 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_154_qec :
    ∃ ψ, SS.IsAmplitudes code_154 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_154 code_154_ok (by decide) (by decide)

/-- Catalogue code #155: ((6,2,2)), m=7, a=[1, 1, 3, 4, 4, 6], S=[0, 2]. -/
def code_155 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_155_ok : code_155.OK := by native_decide
/-- Code #155 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_155_qec :
    ∃ ψ, SS.IsAmplitudes code_155 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_155 code_155_ok (by decide) (by decide)

/-- Catalogue code #156: ((6,2,2)), m=7, a=[1, 1, 3, 4, 6, 6], S=[0, 2]. -/
def code_156 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_156_ok : code_156.OK := by native_decide
/-- Code #156 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_156_qec :
    ∃ ψ, SS.IsAmplitudes code_156 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_156 code_156_ok (by decide) (by decide)

/-- Catalogue code #157: ((6,2,2)), m=7, a=[1, 1, 3, 4, 6, 6], S=[0, 5]. -/
def code_157 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_157_ok : code_157.OK := by native_decide
/-- Code #157 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_157_qec :
    ∃ ψ, SS.IsAmplitudes code_157 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_157 code_157_ok (by decide) (by decide)

/-- Catalogue code #158: ((6,2,2)), m=7, a=[1, 1, 3, 6, 6, 6], S=[0, 5]. -/
def code_158 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_158_ok : code_158.OK := by native_decide
/-- Code #158 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_158_qec :
    ∃ ψ, SS.IsAmplitudes code_158 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_158 code_158_ok (by decide) (by decide)

/-- Catalogue code #159: ((6,2,2)), m=7, a=[1, 1, 4, 4, 4, 4], S=[0, 2]. -/
def code_159 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_159_ok : code_159.OK := by native_decide
/-- Code #159 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_159_qec :
    ∃ ψ, SS.IsAmplitudes code_159 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_159 code_159_ok (by decide) (by decide)

/-- Catalogue code #160: ((6,2,2)), m=7, a=[1, 1, 4, 4, 4, 4], S=[0, 5]. -/
def code_160 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_160_ok : code_160.OK := by native_decide
/-- Code #160 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_160_qec :
    ∃ ψ, SS.IsAmplitudes code_160 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_160 code_160_ok (by decide) (by decide)

/-- Catalogue code #161: ((6,2,2)), m=7, a=[1, 1, 4, 4, 4, 6], S=[0, 5]. -/
def code_161 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), (-1 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_161_ok : code_161.OK := by native_decide
/-- Code #161 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_161_qec :
    ∃ ψ, SS.IsAmplitudes code_161 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_161 code_161_ok (by decide) (by decide)

/-- Catalogue code #162: ((6,2,2)), m=7, a=[1, 1, 4, 4, 6, 6], S=[0, 2]. -/
def code_162 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_162_ok : code_162.OK := by native_decide
/-- Code #162 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_162_qec :
    ∃ ψ, SS.IsAmplitudes code_162 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_162 code_162_ok (by decide) (by decide)

/-- Catalogue code #163: ((6,2,2)), m=7, a=[1, 1, 4, 4, 6, 6], S=[0, 5]. -/
def code_163 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_163_ok : code_163.OK := by native_decide
/-- Code #163 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_163_qec :
    ∃ ψ, SS.IsAmplitudes code_163 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_163 code_163_ok (by decide) (by decide)

/-- Catalogue code #164: ((6,2,2)), m=7, a=[1, 1, 5, 5, 5, 5], S=[0, 3]. -/
def code_164 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_164_ok : code_164.OK := by native_decide
/-- Code #164 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_164_qec :
    ∃ ψ, SS.IsAmplitudes code_164 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_164 code_164_ok (by decide) (by decide)

/-- Catalogue code #165: ((6,2,2)), m=7, a=[1, 1, 5, 5, 5, 5], S=[0, 4]. -/
def code_165 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_165_ok : code_165.OK := by native_decide
/-- Code #165 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_165_qec :
    ∃ ψ, SS.IsAmplitudes code_165 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_165 code_165_ok (by decide) (by decide)

/-- Catalogue code #166: ((6,2,2)), m=7, a=[1, 1, 5, 5, 5, 6], S=[0, 3]. -/
def code_166 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_166_ok : code_166.OK := by native_decide
/-- Code #166 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_166_qec :
    ∃ ψ, SS.IsAmplitudes code_166 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_166 code_166_ok (by decide) (by decide)

/-- Catalogue code #167: ((6,2,2)), m=7, a=[1, 1, 5, 5, 5, 6], S=[0, 4]. -/
def code_167 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_167_ok : code_167.OK := by native_decide
/-- Code #167 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_167_qec :
    ∃ ψ, SS.IsAmplitudes code_167 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_167 code_167_ok (by decide) (by decide)

/-- Catalogue code #168: ((6,2,2)), m=7, a=[1, 2, 2, 2, 2, 2], S=[0, 3]. -/
def code_168 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_168_ok : code_168.OK := by native_decide
/-- Code #168 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_168_qec :
    ∃ ψ, SS.IsAmplitudes code_168 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_168 code_168_ok (by decide) (by decide)

/-- Catalogue code #169: ((6,2,2)), m=7, a=[1, 2, 2, 2, 2, 6], S=[0, 3]. -/
def code_169 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_169_ok : code_169.OK := by native_decide
/-- Code #169 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_169_qec :
    ∃ ψ, SS.IsAmplitudes code_169 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_169 code_169_ok (by decide) (by decide)

/-- Catalogue code #170: ((6,2,2)), m=7, a=[1, 2, 2, 2, 2, 6], S=[0, 4]. -/
def code_170 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_170_ok : code_170.OK := by native_decide
/-- Code #170 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_170_qec :
    ∃ ψ, SS.IsAmplitudes code_170 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_170 code_170_ok (by decide) (by decide)

/-- Catalogue code #171: ((6,2,2)), m=7, a=[1, 2, 2, 2, 5, 5], S=[0, 4]. -/
def code_171 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_171_ok : code_171.OK := by native_decide
/-- Code #171 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_171_qec :
    ∃ ψ, SS.IsAmplitudes code_171 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_171 code_171_ok (by decide) (by decide)

/-- Catalogue code #172: ((6,2,2)), m=7, a=[1, 2, 2, 2, 5, 6], S=[0, 3]. -/
def code_172 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_172_ok : code_172.OK := by native_decide
/-- Code #172 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_172_qec :
    ∃ ψ, SS.IsAmplitudes code_172 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_172 code_172_ok (by decide) (by decide)

/-- Catalogue code #173: ((6,2,2)), m=7, a=[1, 2, 2, 2, 6, 6], S=[0, 3]. -/
def code_173 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_173_ok : code_173.OK := by native_decide
/-- Code #173 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_173_qec :
    ∃ ψ, SS.IsAmplitudes code_173 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_173 code_173_ok (by decide) (by decide)

/-- Catalogue code #174: ((6,2,2)), m=7, a=[1, 2, 2, 2, 6, 6], S=[0, 4]. -/
def code_174 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_174_ok : code_174.OK := by native_decide
/-- Code #174 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_174_qec :
    ∃ ψ, SS.IsAmplitudes code_174 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_174 code_174_ok (by decide) (by decide)

/-- Catalogue code #175: ((6,2,2)), m=7, a=[1, 2, 2, 5, 5, 6], S=[0, 3]. -/
def code_175 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_175_ok : code_175.OK := by native_decide
/-- Code #175 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_175_qec :
    ∃ ψ, SS.IsAmplitudes code_175 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_175 code_175_ok (by decide) (by decide)

/-- Catalogue code #176: ((6,2,2)), m=7, a=[1, 2, 2, 5, 5, 6], S=[0, 4]. -/
def code_176 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_176_ok : code_176.OK := by native_decide
/-- Code #176 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_176_qec :
    ∃ ψ, SS.IsAmplitudes code_176 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_176 code_176_ok (by decide) (by decide)

/-- Catalogue code #177: ((6,2,2)), m=7, a=[1, 2, 2, 5, 6, 6], S=[0, 3]. -/
def code_177 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_177_ok : code_177.OK := by native_decide
/-- Code #177 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_177_qec :
    ∃ ψ, SS.IsAmplitudes code_177 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_177 code_177_ok (by decide) (by decide)

/-- Catalogue code #178: ((6,2,2)), m=7, a=[1, 2, 2, 5, 6, 6], S=[0, 4]. -/
def code_178 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_178_ok : code_178.OK := by native_decide
/-- Code #178 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_178_qec :
    ∃ ψ, SS.IsAmplitudes code_178 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_178 code_178_ok (by decide) (by decide)

/-- Catalogue code #179: ((6,2,2)), m=7, a=[1, 2, 2, 6, 6, 6], S=[0, 4]. -/
def code_179 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_179_ok : code_179.OK := by native_decide
/-- Code #179 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_179_qec :
    ∃ ψ, SS.IsAmplitudes code_179 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_179 code_179_ok (by decide) (by decide)

/-- Catalogue code #180: ((6,2,2)), m=7, a=[1, 2, 5, 5, 5, 5], S=[0, 3]. -/
def code_180 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_180_ok : code_180.OK := by native_decide
/-- Code #180 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_180_qec :
    ∃ ψ, SS.IsAmplitudes code_180 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_180 code_180_ok (by decide) (by decide)

/-- Catalogue code #181: ((6,2,2)), m=7, a=[1, 2, 5, 5, 6, 6], S=[0, 3]. -/
def code_181 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_181_ok : code_181.OK := by native_decide
/-- Code #181 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_181_qec :
    ∃ ψ, SS.IsAmplitudes code_181 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_181 code_181_ok (by decide) (by decide)

/-- Catalogue code #182: ((6,2,2)), m=7, a=[1, 2, 5, 6, 6, 6], S=[0, 3]. -/
def code_182 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_182_ok : code_182.OK := by native_decide
/-- Code #182 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_182_qec :
    ∃ ψ, SS.IsAmplitudes code_182 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_182 code_182_ok (by decide) (by decide)

/-- Catalogue code #183: ((6,2,2)), m=7, a=[1, 2, 6, 6, 6, 6], S=[0, 3]. -/
def code_183 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (2 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_183_ok : code_183.OK := by native_decide
/-- Code #183 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_183_qec :
    ∃ ψ, SS.IsAmplitudes code_183 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_183 code_183_ok (by decide) (by decide)

/-- Catalogue code #184: ((6,2,2)), m=7, a=[1, 3, 3, 3, 3, 4], S=[0, 5]. -/
def code_184 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_184_ok : code_184.OK := by native_decide
/-- Code #184 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_184_qec :
    ∃ ψ, SS.IsAmplitudes code_184 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_184 code_184_ok (by decide) (by decide)

/-- Catalogue code #185: ((6,2,2)), m=7, a=[1, 3, 3, 3, 4, 4], S=[0, 2]. -/
def code_185 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_185_ok : code_185.OK := by native_decide
/-- Code #185 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_185_qec :
    ∃ ψ, SS.IsAmplitudes code_185 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_185 code_185_ok (by decide) (by decide)

/-- Catalogue code #186: ((6,2,2)), m=7, a=[1, 3, 3, 3, 4, 6], S=[0, 5]. -/
def code_186 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_186_ok : code_186.OK := by native_decide
/-- Code #186 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_186_qec :
    ∃ ψ, SS.IsAmplitudes code_186 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_186 code_186_ok (by decide) (by decide)

/-- Catalogue code #187: ((6,2,2)), m=7, a=[1, 3, 3, 3, 6, 6], S=[0, 2]. -/
def code_187 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (-1 : ℚ), ((1 : ℚ) / 7)]
theorem code_187_ok : code_187.OK := by native_decide
/-- Code #187 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_187_qec :
    ∃ ψ, SS.IsAmplitudes code_187 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_187 code_187_ok (by decide) (by decide)

/-- Catalogue code #188: ((6,2,2)), m=7, a=[1, 3, 3, 3, 6, 6], S=[0, 5]. -/
def code_188 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_188_ok : code_188.OK := by native_decide
/-- Code #188 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_188_qec :
    ∃ ψ, SS.IsAmplitudes code_188 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_188 code_188_ok (by decide) (by decide)

/-- Catalogue code #189: ((6,2,2)), m=7, a=[1, 3, 3, 4, 4, 6], S=[0, 2]. -/
def code_189 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_189_ok : code_189.OK := by native_decide
/-- Code #189 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_189_qec :
    ∃ ψ, SS.IsAmplitudes code_189 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_189 code_189_ok (by decide) (by decide)

/-- Catalogue code #190: ((6,2,2)), m=7, a=[1, 3, 3, 4, 6, 6], S=[0, 5]. -/
def code_190 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ)]
theorem code_190_ok : code_190.OK := by native_decide
/-- Code #190 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_190_qec :
    ∃ ψ, SS.IsAmplitudes code_190 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_190 code_190_ok (by decide) (by decide)

/-- Catalogue code #191: ((6,2,2)), m=7, a=[1, 3, 3, 6, 6, 6], S=[0, 2]. -/
def code_191 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_191_ok : code_191.OK := by native_decide
/-- Code #191 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_191_qec :
    ∃ ψ, SS.IsAmplitudes code_191 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_191 code_191_ok (by decide) (by decide)

/-- Catalogue code #192: ((6,2,2)), m=7, a=[1, 3, 4, 4, 4, 6], S=[0, 2]. -/
def code_192 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_192_ok : code_192.OK := by native_decide
/-- Code #192 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_192_qec :
    ∃ ψ, SS.IsAmplitudes code_192 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_192 code_192_ok (by decide) (by decide)

/-- Catalogue code #193: ((6,2,2)), m=7, a=[1, 3, 4, 4, 6, 6], S=[0, 2]. -/
def code_193 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7)]
theorem code_193_ok : code_193.OK := by native_decide
/-- Code #193 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_193_qec :
    ∃ ψ, SS.IsAmplitudes code_193 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_193 code_193_ok (by decide) (by decide)

/-- Catalogue code #194: ((6,2,2)), m=7, a=[1, 3, 4, 4, 6, 6], S=[0, 5]. -/
def code_194 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_194_ok : code_194.OK := by native_decide
/-- Code #194 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_194_qec :
    ∃ ψ, SS.IsAmplitudes code_194 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_194 code_194_ok (by decide) (by decide)

/-- Catalogue code #195: ((6,2,2)), m=7, a=[1, 3, 4, 6, 6, 6], S=[0, 2]. -/
def code_195 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_195_ok : code_195.OK := by native_decide
/-- Code #195 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_195_qec :
    ∃ ψ, SS.IsAmplitudes code_195 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_195 code_195_ok (by decide) (by decide)

/-- Catalogue code #196: ((6,2,2)), m=7, a=[1, 4, 4, 4, 4, 4], S=[0, 2]. -/
def code_196 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_196_ok : code_196.OK := by native_decide
/-- Code #196 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_196_qec :
    ∃ ψ, SS.IsAmplitudes code_196 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_196 code_196_ok (by decide) (by decide)

/-- Catalogue code #197: ((6,2,2)), m=7, a=[1, 4, 4, 4, 4, 4], S=[0, 5]. -/
def code_197 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_197_ok : code_197.OK := by native_decide
/-- Code #197 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_197_qec :
    ∃ ψ, SS.IsAmplitudes code_197 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_197 code_197_ok (by decide) (by decide)

/-- Catalogue code #198: ((6,2,2)), m=7, a=[1, 4, 4, 4, 6, 6], S=[0, 2]. -/
def code_198 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_198_ok : code_198.OK := by native_decide
/-- Code #198 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_198_qec :
    ∃ ψ, SS.IsAmplitudes code_198 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_198 code_198_ok (by decide) (by decide)

/-- Catalogue code #199: ((6,2,2)), m=7, a=[1, 4, 4, 4, 6, 6], S=[0, 5]. -/
def code_199 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_199_ok : code_199.OK := by native_decide
/-- Code #199 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_199_qec :
    ∃ ψ, SS.IsAmplitudes code_199 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_199 code_199_ok (by decide) (by decide)

/-- Catalogue code #200: ((6,2,2)), m=7, a=[1, 4, 4, 6, 6, 6], S=[0, 2]. -/
def code_200 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_200_ok : code_200.OK := by native_decide
/-- Code #200 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_200_qec :
    ∃ ψ, SS.IsAmplitudes code_200 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_200 code_200_ok (by decide) (by decide)

/-- Catalogue code #201: ((6,2,2)), m=7, a=[1, 4, 4, 6, 6, 6], S=[0, 5]. -/
def code_201 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_201_ok : code_201.OK := by native_decide
/-- Code #201 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_201_qec :
    ∃ ψ, SS.IsAmplitudes code_201 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_201 code_201_ok (by decide) (by decide)

/-- Catalogue code #202: ((6,2,2)), m=7, a=[1, 4, 6, 6, 6, 6], S=[0, 5]. -/
def code_202 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_202_ok : code_202.OK := by native_decide
/-- Code #202 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_202_qec :
    ∃ ψ, SS.IsAmplitudes code_202 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_202 code_202_ok (by decide) (by decide)

/-- Catalogue code #203: ((6,2,2)), m=7, a=[1, 5, 5, 5, 5, 5], S=[0, 4]. -/
def code_203 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_203_ok : code_203.OK := by native_decide
/-- Code #203 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_203_qec :
    ∃ ψ, SS.IsAmplitudes code_203 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_203 code_203_ok (by decide) (by decide)

/-- Catalogue code #204: ((6,2,2)), m=7, a=[1, 5, 5, 5, 5, 6], S=[0, 3]. -/
def code_204 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_204_ok : code_204.OK := by native_decide
/-- Code #204 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_204_qec :
    ∃ ψ, SS.IsAmplitudes code_204 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_204 code_204_ok (by decide) (by decide)

/-- Catalogue code #205: ((6,2,2)), m=7, a=[1, 5, 5, 5, 5, 6], S=[0, 4]. -/
def code_205 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_205_ok : code_205.OK := by native_decide
/-- Code #205 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_205_qec :
    ∃ ψ, SS.IsAmplitudes code_205 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_205 code_205_ok (by decide) (by decide)

/-- Catalogue code #206: ((6,2,2)), m=7, a=[1, 5, 5, 5, 6, 6], S=[0, 3]. -/
def code_206 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_206_ok : code_206.OK := by native_decide
/-- Code #206 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_206_qec :
    ∃ ψ, SS.IsAmplitudes code_206 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_206 code_206_ok (by decide) (by decide)

/-- Catalogue code #207: ((6,2,2)), m=7, a=[1, 5, 5, 5, 6, 6], S=[0, 4]. -/
def code_207 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((-3 : ℚ) / 7)]
theorem code_207_ok : code_207.OK := by native_decide
/-- Code #207 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_207_qec :
    ∃ ψ, SS.IsAmplitudes code_207 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_207 code_207_ok (by decide) (by decide)

/-- Catalogue code #208: ((6,2,2)), m=7, a=[1, 5, 5, 6, 6, 6], S=[0, 3]. -/
def code_208 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (-1 : ℚ)]
theorem code_208_ok : code_208.OK := by native_decide
/-- Code #208 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_208_qec :
    ∃ ψ, SS.IsAmplitudes code_208 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_208 code_208_ok (by decide) (by decide)

/-- Catalogue code #209: ((6,2,2)), m=7, a=[1, 5, 5, 6, 6, 6], S=[0, 4]. -/
def code_209 : ExampleData 6 7 2 where
  a := ![(1 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-6 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_209_ok : code_209.OK := by native_decide
/-- Code #209 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_209_qec :
    ∃ ψ, SS.IsAmplitudes code_209 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_209 code_209_ok (by decide) (by decide)

/-- Catalogue code #210: ((6,2,2)), m=7, a=[2, 2, 2, 2, 5, 6], S=[0, 4]. -/
def code_210 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_210_ok : code_210.OK := by native_decide
/-- Code #210 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_210_qec :
    ∃ ψ, SS.IsAmplitudes code_210 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_210 code_210_ok (by decide) (by decide)

/-- Catalogue code #211: ((6,2,2)), m=7, a=[2, 2, 2, 3, 3, 4], S=[0, 1]. -/
def code_211 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (1 : ℚ), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_211_ok : code_211.OK := by native_decide
/-- Code #211 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_211_qec :
    ∃ ψ, SS.IsAmplitudes code_211 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_211 code_211_ok (by decide) (by decide)

/-- Catalogue code #212: ((6,2,2)), m=7, a=[2, 2, 2, 3, 3, 4], S=[0, 6]. -/
def code_212 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_212_ok : code_212.OK := by native_decide
/-- Code #212 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_212_qec :
    ∃ ψ, SS.IsAmplitudes code_212 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_212 code_212_ok (by decide) (by decide)

/-- Catalogue code #213: ((6,2,2)), m=7, a=[2, 2, 2, 3, 4, 4], S=[0, 1]. -/
def code_213 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_213_ok : code_213.OK := by native_decide
/-- Code #213 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_213_qec :
    ∃ ψ, SS.IsAmplitudes code_213 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_213 code_213_ok (by decide) (by decide)

/-- Catalogue code #214: ((6,2,2)), m=7, a=[2, 2, 2, 3, 4, 4], S=[0, 6]. -/
def code_214 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_214_ok : code_214.OK := by native_decide
/-- Code #214 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_214_qec :
    ∃ ψ, SS.IsAmplitudes code_214 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_214 code_214_ok (by decide) (by decide)

/-- Catalogue code #215: ((6,2,2)), m=7, a=[2, 2, 2, 3, 4, 5], S=[0, 1]. -/
def code_215 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]
theorem code_215_ok : code_215.OK := by native_decide
/-- Code #215 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_215_qec :
    ∃ ψ, SS.IsAmplitudes code_215 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_215 code_215_ok (by decide) (by decide)

/-- Catalogue code #216: ((6,2,2)), m=7, a=[2, 2, 2, 5, 6, 6], S=[0, 3]. -/
def code_216 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_216_ok : code_216.OK := by native_decide
/-- Code #216 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_216_qec :
    ∃ ψ, SS.IsAmplitudes code_216 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_216 code_216_ok (by decide) (by decide)

/-- Catalogue code #217: ((6,2,2)), m=7, a=[2, 2, 2, 5, 6, 6], S=[0, 4]. -/
def code_217 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_217_ok : code_217.OK := by native_decide
/-- Code #217 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_217_qec :
    ∃ ψ, SS.IsAmplitudes code_217 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_217 code_217_ok (by decide) (by decide)

/-- Catalogue code #218: ((6,2,2)), m=7, a=[2, 2, 3, 3, 3, 4], S=[0, 1]. -/
def code_218 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_218_ok : code_218.OK := by native_decide
/-- Code #218 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_218_qec :
    ∃ ψ, SS.IsAmplitudes code_218 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_218 code_218_ok (by decide) (by decide)

/-- Catalogue code #219: ((6,2,2)), m=7, a=[2, 2, 3, 3, 3, 4], S=[0, 6]. -/
def code_219 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_219_ok : code_219.OK := by native_decide
/-- Code #219 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_219_qec :
    ∃ ψ, SS.IsAmplitudes code_219 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_219 code_219_ok (by decide) (by decide)

/-- Catalogue code #220: ((6,2,2)), m=7, a=[2, 2, 3, 3, 4, 4], S=[0, 6]. -/
def code_220 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_220_ok : code_220.OK := by native_decide
/-- Code #220 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_220_qec :
    ∃ ψ, SS.IsAmplitudes code_220 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_220 code_220_ok (by decide) (by decide)

/-- Catalogue code #221: ((6,2,2)), m=7, a=[2, 2, 3, 3, 4, 5], S=[0, 1]. -/
def code_221 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_221_ok : code_221.OK := by native_decide
/-- Code #221 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_221_qec :
    ∃ ψ, SS.IsAmplitudes code_221 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_221 code_221_ok (by decide) (by decide)

/-- Catalogue code #222: ((6,2,2)), m=7, a=[2, 2, 3, 3, 4, 5], S=[0, 6]. -/
def code_222 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(-1 : ℚ), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_222_ok : code_222.OK := by native_decide
/-- Code #222 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_222_qec :
    ∃ ψ, SS.IsAmplitudes code_222 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_222 code_222_ok (by decide) (by decide)

/-- Catalogue code #223: ((6,2,2)), m=7, a=[2, 2, 3, 4, 4, 4], S=[0, 1]. -/
def code_223 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_223_ok : code_223.OK := by native_decide
/-- Code #223 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_223_qec :
    ∃ ψ, SS.IsAmplitudes code_223 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_223 code_223_ok (by decide) (by decide)

/-- Catalogue code #224: ((6,2,2)), m=7, a=[2, 2, 3, 4, 4, 4], S=[0, 6]. -/
def code_224 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_224_ok : code_224.OK := by native_decide
/-- Code #224 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_224_qec :
    ∃ ψ, SS.IsAmplitudes code_224 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_224 code_224_ok (by decide) (by decide)

/-- Catalogue code #225: ((6,2,2)), m=7, a=[2, 2, 3, 4, 4, 5], S=[0, 1]. -/
def code_225 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_225_ok : code_225.OK := by native_decide
/-- Code #225 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_225_qec :
    ∃ ψ, SS.IsAmplitudes code_225 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_225 code_225_ok (by decide) (by decide)

/-- Catalogue code #226: ((6,2,2)), m=7, a=[2, 2, 3, 4, 5, 5], S=[0, 1]. -/
def code_226 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_226_ok : code_226.OK := by native_decide
/-- Code #226 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_226_qec :
    ∃ ψ, SS.IsAmplitudes code_226 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_226 code_226_ok (by decide) (by decide)

/-- Catalogue code #227: ((6,2,2)), m=7, a=[2, 2, 5, 5, 6, 6], S=[0, 3]. -/
def code_227 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_227_ok : code_227.OK := by native_decide
/-- Code #227 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_227_qec :
    ∃ ψ, SS.IsAmplitudes code_227 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_227 code_227_ok (by decide) (by decide)

/-- Catalogue code #228: ((6,2,2)), m=7, a=[2, 2, 5, 5, 6, 6], S=[0, 4]. -/
def code_228 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_228_ok : code_228.OK := by native_decide
/-- Code #228 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_228_qec :
    ∃ ψ, SS.IsAmplitudes code_228 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_228 code_228_ok (by decide) (by decide)

/-- Catalogue code #229: ((6,2,2)), m=7, a=[2, 2, 5, 6, 6, 6], S=[0, 3]. -/
def code_229 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_229_ok : code_229.OK := by native_decide
/-- Code #229 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_229_qec :
    ∃ ψ, SS.IsAmplitudes code_229 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_229 code_229_ok (by decide) (by decide)

/-- Catalogue code #230: ((6,2,2)), m=7, a=[2, 2, 5, 6, 6, 6], S=[0, 4]. -/
def code_230 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (2 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_230_ok : code_230.OK := by native_decide
/-- Code #230 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_230_qec :
    ∃ ψ, SS.IsAmplitudes code_230 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_230 code_230_ok (by decide) (by decide)

/-- Catalogue code #231: ((6,2,2)), m=7, a=[2, 3, 3, 3, 3, 4], S=[0, 6]. -/
def code_231 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_231_ok : code_231.OK := by native_decide
/-- Code #231 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_231_qec :
    ∃ ψ, SS.IsAmplitudes code_231 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_231 code_231_ok (by decide) (by decide)

/-- Catalogue code #232: ((6,2,2)), m=7, a=[2, 3, 3, 3, 4, 5], S=[0, 1]. -/
def code_232 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_232_ok : code_232.OK := by native_decide
/-- Code #232 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_232_qec :
    ∃ ψ, SS.IsAmplitudes code_232 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_232 code_232_ok (by decide) (by decide)

/-- Catalogue code #233: ((6,2,2)), m=7, a=[2, 3, 3, 4, 4, 5], S=[0, 1]. -/
def code_233 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_233_ok : code_233.OK := by native_decide
/-- Code #233 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_233_qec :
    ∃ ψ, SS.IsAmplitudes code_233 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_233 code_233_ok (by decide) (by decide)

/-- Catalogue code #234: ((6,2,2)), m=7, a=[2, 3, 3, 4, 4, 5], S=[0, 6]. -/
def code_234 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_234_ok : code_234.OK := by native_decide
/-- Code #234 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_234_qec :
    ∃ ψ, SS.IsAmplitudes code_234 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_234 code_234_ok (by decide) (by decide)

/-- Catalogue code #235: ((6,2,2)), m=7, a=[2, 3, 3, 4, 5, 5], S=[0, 6]. -/
def code_235 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_235_ok : code_235.OK := by native_decide
/-- Code #235 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_235_qec :
    ∃ ψ, SS.IsAmplitudes code_235 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_235 code_235_ok (by decide) (by decide)

/-- Catalogue code #236: ((6,2,2)), m=7, a=[2, 3, 4, 4, 4, 5], S=[0, 6]. -/
def code_236 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_236_ok : code_236.OK := by native_decide
/-- Code #236 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_236_qec :
    ∃ ψ, SS.IsAmplitudes code_236 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_236 code_236_ok (by decide) (by decide)

/-- Catalogue code #237: ((6,2,2)), m=7, a=[2, 3, 4, 4, 5, 5], S=[0, 6]. -/
def code_237 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_237_ok : code_237.OK := by native_decide
/-- Code #237 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_237_qec :
    ∃ ψ, SS.IsAmplitudes code_237 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_237 code_237_ok (by decide) (by decide)

/-- Catalogue code #238: ((6,2,2)), m=7, a=[2, 3, 4, 5, 5, 5], S=[0, 6]. -/
def code_238 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]
theorem code_238_ok : code_238.OK := by native_decide
/-- Code #238 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_238_qec :
    ∃ ψ, SS.IsAmplitudes code_238 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_238 code_238_ok (by decide) (by decide)

/-- Catalogue code #239: ((6,2,2)), m=7, a=[2, 5, 5, 5, 6, 6], S=[0, 3]. -/
def code_239 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (3 : ZMod 7)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]
theorem code_239_ok : code_239.OK := by native_decide
/-- Code #239 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_239_qec :
    ∃ ψ, SS.IsAmplitudes code_239 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_239 code_239_ok (by decide) (by decide)

/-- Catalogue code #240: ((6,2,2)), m=7, a=[2, 5, 5, 5, 6, 6], S=[0, 4]. -/
def code_240 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_240_ok : code_240.OK := by native_decide
/-- Code #240 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_240_qec :
    ∃ ψ, SS.IsAmplitudes code_240 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_240 code_240_ok (by decide) (by decide)

/-- Catalogue code #241: ((6,2,2)), m=7, a=[2, 5, 5, 6, 6, 6], S=[0, 4]. -/
def code_241 : ExampleData 6 7 2 where
  a := ![(2 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (4 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (-1 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_241_ok : code_241.OK := by native_decide
/-- Code #241 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_241_qec :
    ∃ ψ, SS.IsAmplitudes code_241 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_241 code_241_ok (by decide) (by decide)

/-- Catalogue code #242: ((6,2,2)), m=7, a=[3, 3, 3, 4, 4, 5], S=[0, 6]. -/
def code_242 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_242_ok : code_242.OK := by native_decide
/-- Code #242 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_242_qec :
    ∃ ψ, SS.IsAmplitudes code_242 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_242 code_242_ok (by decide) (by decide)

/-- Catalogue code #243: ((6,2,2)), m=7, a=[3, 3, 3, 4, 5, 5], S=[0, 1]. -/
def code_243 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_243_ok : code_243.OK := by native_decide
/-- Code #243 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_243_qec :
    ∃ ψ, SS.IsAmplitudes code_243 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_243 code_243_ok (by decide) (by decide)

/-- Catalogue code #244: ((6,2,2)), m=7, a=[3, 3, 3, 4, 5, 5], S=[0, 6]. -/
def code_244 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_244_ok : code_244.OK := by native_decide
/-- Code #244 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_244_qec :
    ∃ ψ, SS.IsAmplitudes code_244 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_244 code_244_ok (by decide) (by decide)

/-- Catalogue code #245: ((6,2,2)), m=7, a=[3, 3, 3, 4, 6, 6], S=[0, 2]. -/
def code_245 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-6 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_245_ok : code_245.OK := by native_decide
/-- Code #245 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_245_qec :
    ∃ ψ, SS.IsAmplitudes code_245 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_245 code_245_ok (by decide) (by decide)

/-- Catalogue code #246: ((6,2,2)), m=7, a=[3, 3, 3, 4, 6, 6], S=[0, 5]. -/
def code_246 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_246_ok : code_246.OK := by native_decide
/-- Code #246 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_246_qec :
    ∃ ψ, SS.IsAmplitudes code_246 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_246 code_246_ok (by decide) (by decide)

/-- Catalogue code #247: ((6,2,2)), m=7, a=[3, 3, 4, 4, 4, 6], S=[0, 5]. -/
def code_247 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_247_ok : code_247.OK := by native_decide
/-- Code #247 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_247_qec :
    ∃ ψ, SS.IsAmplitudes code_247 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_247 code_247_ok (by decide) (by decide)

/-- Catalogue code #248: ((6,2,2)), m=7, a=[3, 3, 4, 4, 5, 5], S=[0, 6]. -/
def code_248 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]
theorem code_248_ok : code_248.OK := by native_decide
/-- Code #248 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_248_qec :
    ∃ ψ, SS.IsAmplitudes code_248 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_248 code_248_ok (by decide) (by decide)

/-- Catalogue code #249: ((6,2,2)), m=7, a=[3, 3, 4, 5, 5, 5], S=[0, 1]. -/
def code_249 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (-1 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_249_ok : code_249.OK := by native_decide
/-- Code #249 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_249_qec :
    ∃ ψ, SS.IsAmplitudes code_249 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_249 code_249_ok (by decide) (by decide)

/-- Catalogue code #250: ((6,2,2)), m=7, a=[3, 3, 4, 5, 5, 5], S=[0, 6]. -/
def code_250 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (3 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_250_ok : code_250.OK := by native_decide
/-- Code #250 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_250_qec :
    ∃ ψ, SS.IsAmplitudes code_250 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_250 code_250_ok (by decide) (by decide)

/-- Catalogue code #251: ((6,2,2)), m=7, a=[3, 4, 4, 4, 4, 5], S=[0, 1]. -/
def code_251 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]
theorem code_251_ok : code_251.OK := by native_decide
/-- Code #251 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_251_qec :
    ∃ ψ, SS.IsAmplitudes code_251 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_251 code_251_ok (by decide) (by decide)

/-- Catalogue code #252: ((6,2,2)), m=7, a=[3, 4, 4, 4, 5, 5], S=[0, 6]. -/
def code_252 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]
theorem code_252_ok : code_252.OK := by native_decide
/-- Code #252 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_252_qec :
    ∃ ψ, SS.IsAmplitudes code_252 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_252 code_252_ok (by decide) (by decide)

/-- Catalogue code #253: ((6,2,2)), m=7, a=[3, 4, 4, 4, 6, 6], S=[0, 5]. -/
def code_253 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_253_ok : code_253.OK := by native_decide
/-- Code #253 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_253_qec :
    ∃ ψ, SS.IsAmplitudes code_253 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_253 code_253_ok (by decide) (by decide)

/-- Catalogue code #254: ((6,2,2)), m=7, a=[3, 4, 4, 5, 5, 5], S=[0, 1]. -/
def code_254 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (1 : ZMod 7)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_254_ok : code_254.OK := by native_decide
/-- Code #254 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_254_qec :
    ∃ ψ, SS.IsAmplitudes code_254 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_254 code_254_ok (by decide) (by decide)

/-- Catalogue code #255: ((6,2,2)), m=7, a=[3, 4, 4, 5, 5, 5], S=[0, 6]. -/
def code_255 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7), (5 : ZMod 7)]
  S := ![(0 : ZMod 7), (6 : ZMod 7)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_255_ok : code_255.OK := by native_decide
/-- Code #255 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_255_qec :
    ∃ ψ, SS.IsAmplitudes code_255 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_255 code_255_ok (by decide) (by decide)

/-- Catalogue code #256: ((6,2,2)), m=7, a=[3, 4, 4, 6, 6, 6], S=[0, 2]. -/
def code_256 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]
theorem code_256_ok : code_256.OK := by native_decide
/-- Code #256 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_256_qec :
    ∃ ψ, SS.IsAmplitudes code_256 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_256 code_256_ok (by decide) (by decide)

/-- Catalogue code #257: ((6,2,2)), m=7, a=[3, 4, 6, 6, 6, 6], S=[0, 2]. -/
def code_257 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (2 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]
theorem code_257_ok : code_257.OK := by native_decide
/-- Code #257 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_257_qec :
    ∃ ψ, SS.IsAmplitudes code_257 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_257 code_257_ok (by decide) (by decide)

/-- Catalogue code #258: ((6,2,2)), m=7, a=[3, 4, 6, 6, 6, 6], S=[0, 5]. -/
def code_258 : ExampleData 6 7 2 where
  a := ![(3 : ZMod 7), (4 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7), (6 : ZMod 7)]
  S := ![(0 : ZMod 7), (5 : ZMod 7)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, false, false, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]
theorem code_258_ok : code_258.OK := by native_decide
/-- Code #258 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_258_qec :
    ∃ ψ, SS.IsAmplitudes code_258 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_258 code_258_ok (by decide) (by decide)

/-- Catalogue code #259: ((6,2,2)), m=8, a=[1, 1, 1, 1, 1, 3], S=[0, 4]. -/
def code_259 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8)]
  S := ![(0 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_259_ok : code_259.OK := by native_decide
/-- Code #259 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_259_qec :
    ∃ ψ, SS.IsAmplitudes code_259 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_259 code_259_ok (by decide) (by decide)

/-- Catalogue code #260: ((6,2,2)), m=8, a=[1, 1, 1, 1, 1, 4], S=[0, 5]. -/
def code_260 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_260_ok : code_260.OK := by native_decide
/-- Code #260 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_260_qec :
    ∃ ψ, SS.IsAmplitudes code_260 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_260 code_260_ok (by decide) (by decide)

/-- Catalogue code #261: ((6,2,2)), m=8, a=[1, 1, 1, 1, 2, 2], S=[0, 3]. -/
def code_261 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_261_ok : code_261.OK := by native_decide
/-- Code #261 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_261_qec :
    ∃ ψ, SS.IsAmplitudes code_261 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_261 code_261_ok (by decide) (by decide)

/-- Catalogue code #262: ((6,2,2)), m=8, a=[1, 1, 1, 1, 2, 2], S=[0, 4]. -/
def code_262 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_262_ok : code_262.OK := by native_decide
/-- Code #262 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_262_qec :
    ∃ ψ, SS.IsAmplitudes code_262 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_262 code_262_ok (by decide) (by decide)

/-- Catalogue code #263: ((6,2,2)), m=8, a=[1, 1, 1, 1, 2, 2], S=[0, 5]. -/
def code_263 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_263_ok : code_263.OK := by native_decide
/-- Code #263 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_263_qec :
    ∃ ψ, SS.IsAmplitudes code_263 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_263 code_263_ok (by decide) (by decide)

/-- Catalogue code #264: ((6,2,2)), m=8, a=[1, 1, 1, 1, 2, 4], S=[0, 5]. -/
def code_264 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_264_ok : code_264.OK := by native_decide
/-- Code #264 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_264_qec :
    ∃ ψ, SS.IsAmplitudes code_264 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_264 code_264_ok (by decide) (by decide)

/-- Catalogue code #265: ((6,2,2)), m=8, a=[1, 1, 1, 1, 3, 4], S=[0, 6]. -/
def code_265 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_265_ok : code_265.OK := by native_decide
/-- Code #265 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_265_qec :
    ∃ ψ, SS.IsAmplitudes code_265 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_265 code_265_ok (by decide) (by decide)

/-- Catalogue code #266: ((6,2,2)), m=8, a=[1, 1, 1, 1, 4, 4], S=[0, 2]. -/
def code_266 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_266_ok : code_266.OK := by native_decide
/-- Code #266 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_266_qec :
    ∃ ψ, SS.IsAmplitudes code_266 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_266 code_266_ok (by decide) (by decide)

/-- Catalogue code #267: ((6,2,2)), m=8, a=[1, 1, 1, 1, 4, 4], S=[0, 3]. -/
def code_267 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_267_ok : code_267.OK := by native_decide
/-- Code #267 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_267_qec :
    ∃ ψ, SS.IsAmplitudes code_267 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_267 code_267_ok (by decide) (by decide)

/-- Catalogue code #268: ((6,2,2)), m=8, a=[1, 1, 1, 1, 4, 5], S=[0, 2]. -/
def code_268 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_268_ok : code_268.OK := by native_decide
/-- Code #268 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_268_qec :
    ∃ ψ, SS.IsAmplitudes code_268 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_268 code_268_ok (by decide) (by decide)

/-- Catalogue code #269: ((6,2,2)), m=8, a=[1, 1, 1, 1, 4, 6], S=[0, 3]. -/
def code_269 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_269_ok : code_269.OK := by native_decide
/-- Code #269 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_269_qec :
    ∃ ψ, SS.IsAmplitudes code_269 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_269 code_269_ok (by decide) (by decide)

/-- Catalogue code #270: ((6,2,2)), m=8, a=[1, 1, 1, 2, 2, 2], S=[0, 5]. -/
def code_270 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((3 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_270_ok : code_270.OK := by native_decide
/-- Code #270 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_270_qec :
    ∃ ψ, SS.IsAmplitudes code_270 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_270 code_270_ok (by decide) (by decide)

/-- Catalogue code #271: ((6,2,2)), m=8, a=[1, 1, 1, 2, 2, 4], S=[0, 5]. -/
def code_271 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4)]
theorem code_271_ok : code_271.OK := by native_decide
/-- Code #271 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_271_qec :
    ∃ ψ, SS.IsAmplitudes code_271 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_271 code_271_ok (by decide) (by decide)

/-- Catalogue code #272: ((6,2,2)), m=8, a=[1, 1, 1, 2, 4, 4], S=[0, 3]. -/
def code_272 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_272_ok : code_272.OK := by native_decide
/-- Code #272 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_272_qec :
    ∃ ψ, SS.IsAmplitudes code_272 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_272 code_272_ok (by decide) (by decide)

/-- Catalogue code #273: ((6,2,2)), m=8, a=[1, 1, 1, 2, 4, 6], S=[0, 5]. -/
def code_273 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_273_ok : code_273.OK := by native_decide
/-- Code #273 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_273_qec :
    ∃ ψ, SS.IsAmplitudes code_273 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_273 code_273_ok (by decide) (by decide)

/-- Catalogue code #274: ((6,2,2)), m=8, a=[1, 1, 1, 2, 4, 7], S=[0, 3]. -/
def code_274 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_274_ok : code_274.OK := by native_decide
/-- Code #274 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_274_qec :
    ∃ ψ, SS.IsAmplitudes code_274 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_274 code_274_ok (by decide) (by decide)

/-- Catalogue code #275: ((6,2,2)), m=8, a=[1, 1, 1, 2, 6, 6], S=[0, 5]. -/
def code_275 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((-3 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_275_ok : code_275.OK := by native_decide
/-- Code #275 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_275_qec :
    ∃ ψ, SS.IsAmplitudes code_275 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_275 code_275_ok (by decide) (by decide)

/-- Catalogue code #276: ((6,2,2)), m=8, a=[1, 1, 1, 3, 3, 5], S=[0, 6]. -/
def code_276 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2)]
theorem code_276_ok : code_276.OK := by native_decide
/-- Code #276 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_276_qec :
    ∃ ψ, SS.IsAmplitudes code_276 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_276 code_276_ok (by decide) (by decide)

/-- Catalogue code #277: ((6,2,2)), m=8, a=[1, 1, 1, 3, 3, 7], S=[0, 2]. -/
def code_277 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_277_ok : code_277.OK := by native_decide
/-- Code #277 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_277_qec :
    ∃ ψ, SS.IsAmplitudes code_277 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_277 code_277_ok (by decide) (by decide)

/-- Catalogue code #278: ((6,2,2)), m=8, a=[1, 1, 1, 3, 4, 7], S=[0, 6]. -/
def code_278 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_278_ok : code_278.OK := by native_decide
/-- Code #278 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_278_qec :
    ∃ ψ, SS.IsAmplitudes code_278 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_278 code_278_ok (by decide) (by decide)

/-- Catalogue code #279: ((6,2,2)), m=8, a=[1, 1, 1, 3, 5, 7], S=[0, 6]. -/
def code_279 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 2), ((1 : ℚ) / 4)]
theorem code_279_ok : code_279.OK := by native_decide
/-- Code #279 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_279_qec :
    ∃ ψ, SS.IsAmplitudes code_279 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_279 code_279_ok (by decide) (by decide)

/-- Catalogue code #280: ((6,2,2)), m=8, a=[1, 1, 1, 4, 4, 5], S=[0, 2]. -/
def code_280 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_280_ok : code_280.OK := by native_decide
/-- Code #280 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_280_qec :
    ∃ ψ, SS.IsAmplitudes code_280 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_280 code_280_ok (by decide) (by decide)

/-- Catalogue code #281: ((6,2,2)), m=8, a=[1, 1, 1, 4, 4, 6], S=[0, 3]. -/
def code_281 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2)]
theorem code_281_ok : code_281.OK := by native_decide
/-- Code #281 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_281_qec :
    ∃ ψ, SS.IsAmplitudes code_281 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_281 code_281_ok (by decide) (by decide)

/-- Catalogue code #282: ((6,2,2)), m=8, a=[1, 1, 1, 4, 5, 5], S=[0, 2]. -/
def code_282 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((3 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_282_ok : code_282.OK := by native_decide
/-- Code #282 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_282_qec :
    ∃ ψ, SS.IsAmplitudes code_282 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_282 code_282_ok (by decide) (by decide)

/-- Catalogue code #283: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 2], S=[0, 5]. -/
def code_283 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_283_ok : code_283.OK := by native_decide
/-- Code #283 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_283_qec :
    ∃ ψ, SS.IsAmplitudes code_283 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_283 code_283_ok (by decide) (by decide)

/-- Catalogue code #284: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 4], S=[0, 3]. -/
def code_284 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_284_ok : code_284.OK := by native_decide
/-- Code #284 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_284_qec :
    ∃ ψ, SS.IsAmplitudes code_284 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_284 code_284_ok (by decide) (by decide)

/-- Catalogue code #285: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 4], S=[0, 5]. -/
def code_285 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4)]
theorem code_285_ok : code_285.OK := by native_decide
/-- Code #285 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_285_qec :
    ∃ ψ, SS.IsAmplitudes code_285 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_285 code_285_ok (by decide) (by decide)

/-- Catalogue code #286: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 6], S=[0, 3]. -/
def code_286 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2)]
theorem code_286_ok : code_286.OK := by native_decide
/-- Code #286 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_286_qec :
    ∃ ψ, SS.IsAmplitudes code_286 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_286 code_286_ok (by decide) (by decide)

/-- Catalogue code #287: ((6,2,2)), m=8, a=[1, 1, 2, 2, 2, 7], S=[0, 3]. -/
def code_287 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2)]
theorem code_287_ok : code_287.OK := by native_decide
/-- Code #287 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_287_qec :
    ∃ ψ, SS.IsAmplitudes code_287 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_287 code_287_ok (by decide) (by decide)

/-- Catalogue code #288: ((6,2,2)), m=8, a=[1, 1, 2, 2, 3, 7], S=[0, 4]. -/
def code_288 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_288_ok : code_288.OK := by native_decide
/-- Code #288 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_288_qec :
    ∃ ψ, SS.IsAmplitudes code_288 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_288 code_288_ok (by decide) (by decide)

/-- Catalogue code #289: ((6,2,2)), m=8, a=[1, 1, 2, 2, 4, 4], S=[0, 5]. -/
def code_289 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_289_ok : code_289.OK := by native_decide
/-- Code #289 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_289_qec :
    ∃ ψ, SS.IsAmplitudes code_289 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_289 code_289_ok (by decide) (by decide)

/-- Catalogue code #290: ((6,2,2)), m=8, a=[1, 1, 2, 2, 4, 6], S=[0, 3]. -/
def code_290 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_290_ok : code_290.OK := by native_decide
/-- Code #290 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_290_qec :
    ∃ ψ, SS.IsAmplitudes code_290 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_290 code_290_ok (by decide) (by decide)

/-- Catalogue code #291: ((6,2,2)), m=8, a=[1, 1, 2, 2, 4, 7], S=[0, 3]. -/
def code_291 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (-1 : ℚ)]
theorem code_291_ok : code_291.OK := by native_decide
/-- Code #291 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_291_qec :
    ∃ ψ, SS.IsAmplitudes code_291 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_291 code_291_ok (by decide) (by decide)

/-- Catalogue code #292: ((6,2,2)), m=8, a=[1, 1, 2, 2, 6, 6], S=[0, 5]. -/
def code_292 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_292_ok : code_292.OK := by native_decide
/-- Code #292 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_292_qec :
    ∃ ψ, SS.IsAmplitudes code_292 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_292 code_292_ok (by decide) (by decide)

/-- Catalogue code #293: ((6,2,2)), m=8, a=[1, 1, 2, 4, 4, 6], S=[0, 5]. -/
def code_293 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_293_ok : code_293.OK := by native_decide
/-- Code #293 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_293_qec :
    ∃ ψ, SS.IsAmplitudes code_293 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_293 code_293_ok (by decide) (by decide)

/-- Catalogue code #294: ((6,2,2)), m=8, a=[1, 1, 2, 4, 4, 7], S=[0, 5]. -/
def code_294 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2)]
theorem code_294_ok : code_294.OK := by native_decide
/-- Code #294 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_294_qec :
    ∃ ψ, SS.IsAmplitudes code_294 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_294 code_294_ok (by decide) (by decide)

/-- Catalogue code #295: ((6,2,2)), m=8, a=[1, 1, 2, 4, 7, 7], S=[0, 3]. -/
def code_295 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2)]
theorem code_295_ok : code_295.OK := by native_decide
/-- Code #295 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_295_qec :
    ∃ ψ, SS.IsAmplitudes code_295 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_295 code_295_ok (by decide) (by decide)

/-- Catalogue code #296: ((6,2,2)), m=8, a=[1, 1, 3, 3, 3, 4], S=[0, 2]. -/
def code_296 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_296_ok : code_296.OK := by native_decide
/-- Code #296 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_296_qec :
    ∃ ψ, SS.IsAmplitudes code_296 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_296 code_296_ok (by decide) (by decide)

/-- Catalogue code #297: ((6,2,2)), m=8, a=[1, 1, 3, 3, 4, 4], S=[0, 2]. -/
def code_297 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_297_ok : code_297.OK := by native_decide
/-- Code #297 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_297_qec :
    ∃ ψ, SS.IsAmplitudes code_297 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_297 code_297_ok (by decide) (by decide)

/-- Catalogue code #298: ((6,2,2)), m=8, a=[1, 1, 4, 4, 5, 5], S=[0, 2]. -/
def code_298 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_298_ok : code_298.OK := by native_decide
/-- Code #298 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_298_qec :
    ∃ ψ, SS.IsAmplitudes code_298 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_298 code_298_ok (by decide) (by decide)

/-- Catalogue code #299: ((6,2,2)), m=8, a=[1, 1, 4, 4, 6, 6], S=[0, 5]. -/
def code_299 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_299_ok : code_299.OK := by native_decide
/-- Code #299 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_299_qec :
    ∃ ψ, SS.IsAmplitudes code_299 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_299 code_299_ok (by decide) (by decide)

/-- Catalogue code #300: ((6,2,2)), m=8, a=[1, 1, 4, 4, 6, 7], S=[0, 5]. -/
def code_300 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_300_ok : code_300.OK := by native_decide
/-- Code #300 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_300_qec :
    ∃ ψ, SS.IsAmplitudes code_300 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_300 code_300_ok (by decide) (by decide)

/-- Catalogue code #301: ((6,2,2)), m=8, a=[1, 1, 4, 6, 6, 6], S=[0, 3]. -/
def code_301 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_301_ok : code_301.OK := by native_decide
/-- Code #301 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_301_qec :
    ∃ ψ, SS.IsAmplitudes code_301 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_301 code_301_ok (by decide) (by decide)

/-- Catalogue code #302: ((6,2,2)), m=8, a=[1, 1, 4, 6, 6, 6], S=[0, 5]. -/
def code_302 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_302_ok : code_302.OK := by native_decide
/-- Code #302 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_302_qec :
    ∃ ψ, SS.IsAmplitudes code_302 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_302 code_302_ok (by decide) (by decide)

/-- Catalogue code #303: ((6,2,2)), m=8, a=[1, 2, 2, 2, 4, 7], S=[0, 3]. -/
def code_303 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((3 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_303_ok : code_303.OK := by native_decide
/-- Code #303 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_303_qec :
    ∃ ψ, SS.IsAmplitudes code_303 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_303 code_303_ok (by decide) (by decide)

/-- Catalogue code #304: ((6,2,2)), m=8, a=[1, 2, 2, 4, 4, 7], S=[0, 3]. -/
def code_304 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((3 : ℚ) / 4), (0 : ℚ)]
theorem code_304_ok : code_304.OK := by native_decide
/-- Code #304 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_304_qec :
    ∃ ψ, SS.IsAmplitudes code_304 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_304 code_304_ok (by decide) (by decide)

/-- Catalogue code #305: ((6,2,2)), m=8, a=[1, 2, 2, 4, 4, 7], S=[0, 5]. -/
def code_305 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 2), (0 : ℚ)]
theorem code_305_ok : code_305.OK := by native_decide
/-- Code #305 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_305_qec :
    ∃ ψ, SS.IsAmplitudes code_305 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_305 code_305_ok (by decide) (by decide)

/-- Catalogue code #306: ((6,2,2)), m=8, a=[1, 2, 2, 4, 7, 7], S=[0, 3]. -/
def code_306 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((1 : ℚ) / 4)]
theorem code_306_ok : code_306.OK := by native_decide
/-- Code #306 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_306_qec :
    ∃ ψ, SS.IsAmplitudes code_306 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_306 code_306_ok (by decide) (by decide)

/-- Catalogue code #307: ((6,2,2)), m=8, a=[1, 2, 2, 4, 7, 7], S=[0, 5]. -/
def code_307 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_307_ok : code_307.OK := by native_decide
/-- Code #307 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_307_qec :
    ∃ ψ, SS.IsAmplitudes code_307 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_307 code_307_ok (by decide) (by decide)

/-- Catalogue code #308: ((6,2,2)), m=8, a=[1, 2, 2, 6, 6, 7], S=[0, 3]. -/
def code_308 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ)]
theorem code_308_ok : code_308.OK := by native_decide
/-- Code #308 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_308_qec :
    ∃ ψ, SS.IsAmplitudes code_308 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_308 code_308_ok (by decide) (by decide)

/-- Catalogue code #309: ((6,2,2)), m=8, a=[1, 2, 2, 6, 6, 7], S=[0, 5]. -/
def code_309 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ)]
theorem code_309_ok : code_309.OK := by native_decide
/-- Code #309 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_309_qec :
    ∃ ψ, SS.IsAmplitudes code_309 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_309 code_309_ok (by decide) (by decide)

/-- Catalogue code #310: ((6,2,2)), m=8, a=[1, 2, 4, 4, 6, 7], S=[0, 3]. -/
def code_310 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_310_ok : code_310.OK := by native_decide
/-- Code #310 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_310_qec :
    ∃ ψ, SS.IsAmplitudes code_310 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_310 code_310_ok (by decide) (by decide)

/-- Catalogue code #311: ((6,2,2)), m=8, a=[1, 2, 4, 6, 6, 7], S=[0, 5]. -/
def code_311 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_311_ok : code_311.OK := by native_decide
/-- Code #311 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_311_qec :
    ∃ ψ, SS.IsAmplitudes code_311 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_311 code_311_ok (by decide) (by decide)

/-- Catalogue code #312: ((6,2,2)), m=8, a=[1, 3, 3, 3, 4, 7], S=[0, 6]. -/
def code_312 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_312_ok : code_312.OK := by native_decide
/-- Code #312 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_312_qec :
    ∃ ψ, SS.IsAmplitudes code_312 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_312 code_312_ok (by decide) (by decide)

/-- Catalogue code #313: ((6,2,2)), m=8, a=[1, 4, 4, 5, 7, 7], S=[0, 2]. -/
def code_313 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_313_ok : code_313.OK := by native_decide
/-- Code #313 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_313_qec :
    ∃ ψ, SS.IsAmplitudes code_313 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_313 code_313_ok (by decide) (by decide)

/-- Catalogue code #314: ((6,2,2)), m=8, a=[1, 4, 4, 6, 6, 7], S=[0, 5]. -/
def code_314 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_314_ok : code_314.OK := by native_decide
/-- Code #314 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_314_qec :
    ∃ ψ, SS.IsAmplitudes code_314 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_314 code_314_ok (by decide) (by decide)

/-- Catalogue code #315: ((6,2,2)), m=8, a=[1, 4, 6, 6, 6, 7], S=[0, 3]. -/
def code_315 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4), (0 : ℚ)]
theorem code_315_ok : code_315.OK := by native_decide
/-- Code #315 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_315_qec :
    ∃ ψ, SS.IsAmplitudes code_315 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_315 code_315_ok (by decide) (by decide)

/-- Catalogue code #316: ((6,2,2)), m=8, a=[1, 4, 6, 6, 7, 7], S=[0, 3]. -/
def code_316 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((3 : ℚ) / 4)]
theorem code_316_ok : code_316.OK := by native_decide
/-- Code #316 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_316_qec :
    ∃ ψ, SS.IsAmplitudes code_316 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_316 code_316_ok (by decide) (by decide)

/-- Catalogue code #317: ((6,2,2)), m=8, a=[1, 4, 6, 6, 7, 7], S=[0, 5]. -/
def code_317 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_317_ok : code_317.OK := by native_decide
/-- Code #317 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_317_qec :
    ∃ ψ, SS.IsAmplitudes code_317 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_317 code_317_ok (by decide) (by decide)

/-- Catalogue code #318: ((6,2,2)), m=8, a=[1, 5, 5, 5, 5, 7], S=[0, 6]. -/
def code_318 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (6 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2)]
theorem code_318_ok : code_318.OK := by native_decide
/-- Code #318 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_318_qec :
    ∃ ψ, SS.IsAmplitudes code_318 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_318 code_318_ok (by decide) (by decide)

/-- Catalogue code #319: ((6,2,2)), m=8, a=[1, 6, 6, 6, 6, 7], S=[0, 5]. -/
def code_319 : ExampleData 6 8 2 where
  a := ![(1 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_319_ok : code_319.OK := by native_decide
/-- Code #319 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_319_qec :
    ∃ ψ, SS.IsAmplitudes code_319 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_319 code_319_ok (by decide) (by decide)

/-- Catalogue code #320: ((6,2,2)), m=8, a=[2, 2, 2, 3, 4, 5], S=[0, 1]. -/
def code_320 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 4), (0 : ℚ)]
theorem code_320_ok : code_320.OK := by native_decide
/-- Code #320 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_320_qec :
    ∃ ψ, SS.IsAmplitudes code_320 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_320 code_320_ok (by decide) (by decide)

/-- Catalogue code #321: ((6,2,2)), m=8, a=[2, 2, 2, 3, 5, 5], S=[0, 7]. -/
def code_321 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((3 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4)]
theorem code_321_ok : code_321.OK := by native_decide
/-- Code #321 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_321_qec :
    ∃ ψ, SS.IsAmplitudes code_321 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_321 code_321_ok (by decide) (by decide)

/-- Catalogue code #322: ((6,2,2)), m=8, a=[2, 2, 2, 4, 5, 5], S=[0, 1]. -/
def code_322 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_322_ok : code_322.OK := by native_decide
/-- Code #322 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_322_qec :
    ∃ ψ, SS.IsAmplitudes code_322 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_322 code_322_ok (by decide) (by decide)

/-- Catalogue code #323: ((6,2,2)), m=8, a=[2, 2, 2, 4, 7, 7], S=[0, 3]. -/
def code_323 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ)]
theorem code_323_ok : code_323.OK := by native_decide
/-- Code #323 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_323_qec :
    ∃ ψ, SS.IsAmplitudes code_323 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_323 code_323_ok (by decide) (by decide)

/-- Catalogue code #324: ((6,2,2)), m=8, a=[2, 2, 2, 5, 5, 5], S=[0, 1]. -/
def code_324 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (2 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4)]
theorem code_324_ok : code_324.OK := by native_decide
/-- Code #324 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_324_qec :
    ∃ ψ, SS.IsAmplitudes code_324 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_324 code_324_ok (by decide) (by decide)

/-- Catalogue code #325: ((6,2,2)), m=8, a=[2, 2, 3, 3, 3, 4], S=[0, 7]. -/
def code_325 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_325_ok : code_325.OK := by native_decide
/-- Code #325 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_325_qec :
    ∃ ψ, SS.IsAmplitudes code_325 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_325 code_325_ok (by decide) (by decide)

/-- Catalogue code #326: ((6,2,2)), m=8, a=[2, 2, 3, 3, 4, 4], S=[0, 7]. -/
def code_326 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 4), (0 : ℚ)]
theorem code_326_ok : code_326.OK := by native_decide
/-- Code #326 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_326_qec :
    ∃ ψ, SS.IsAmplitudes code_326 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_326 code_326_ok (by decide) (by decide)

/-- Catalogue code #327: ((6,2,2)), m=8, a=[2, 2, 3, 3, 4, 6], S=[0, 1]. -/
def code_327 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_327_ok : code_327.OK := by native_decide
/-- Code #327 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_327_qec :
    ∃ ψ, SS.IsAmplitudes code_327 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_327 code_327_ok (by decide) (by decide)

/-- Catalogue code #328: ((6,2,2)), m=8, a=[2, 2, 3, 3, 5, 6], S=[0, 1]. -/
def code_328 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_328_ok : code_328.OK := by native_decide
/-- Code #328 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_328_qec :
    ∃ ψ, SS.IsAmplitudes code_328 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_328 code_328_ok (by decide) (by decide)

/-- Catalogue code #329: ((6,2,2)), m=8, a=[2, 2, 3, 4, 4, 5], S=[0, 1]. -/
def code_329 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), (0 : ℚ)]
theorem code_329_ok : code_329.OK := by native_decide
/-- Code #329 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_329_qec :
    ∃ ψ, SS.IsAmplitudes code_329 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_329 code_329_ok (by decide) (by decide)

/-- Catalogue code #330: ((6,2,2)), m=8, a=[2, 2, 3, 4, 4, 5], S=[0, 7]. -/
def code_330 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ)]
theorem code_330_ok : code_330.OK := by native_decide
/-- Code #330 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_330_qec :
    ∃ ψ, SS.IsAmplitudes code_330 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_330 code_330_ok (by decide) (by decide)

/-- Catalogue code #331: ((6,2,2)), m=8, a=[2, 2, 3, 4, 5, 5], S=[0, 1]. -/
def code_331 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2)]
theorem code_331_ok : code_331.OK := by native_decide
/-- Code #331 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_331_qec :
    ∃ ψ, SS.IsAmplitudes code_331 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_331 code_331_ok (by decide) (by decide)

/-- Catalogue code #332: ((6,2,2)), m=8, a=[2, 2, 3, 5, 6, 6], S=[0, 1]. -/
def code_332 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-3 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_332_ok : code_332.OK := by native_decide
/-- Code #332 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_332_qec :
    ∃ ψ, SS.IsAmplitudes code_332 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_332 code_332_ok (by decide) (by decide)

/-- Catalogue code #333: ((6,2,2)), m=8, a=[2, 2, 3, 5, 6, 6], S=[0, 7]. -/
def code_333 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_333_ok : code_333.OK := by native_decide
/-- Code #333 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_333_qec :
    ∃ ψ, SS.IsAmplitudes code_333 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_333 code_333_ok (by decide) (by decide)

/-- Catalogue code #334: ((6,2,2)), m=8, a=[2, 2, 4, 4, 5, 5], S=[0, 1]. -/
def code_334 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ)]
theorem code_334_ok : code_334.OK := by native_decide
/-- Code #334 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_334_qec :
    ∃ ψ, SS.IsAmplitudes code_334 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_334 code_334_ok (by decide) (by decide)

/-- Catalogue code #335: ((6,2,2)), m=8, a=[2, 2, 4, 5, 5, 6], S=[0, 7]. -/
def code_335 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4)]
theorem code_335_ok : code_335.OK := by native_decide
/-- Code #335 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_335_qec :
    ∃ ψ, SS.IsAmplitudes code_335 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_335 code_335_ok (by decide) (by decide)

/-- Catalogue code #336: ((6,2,2)), m=8, a=[2, 2, 4, 6, 7, 7], S=[0, 3]. -/
def code_336 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_336_ok : code_336.OK := by native_decide
/-- Code #336 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_336_qec :
    ∃ ψ, SS.IsAmplitudes code_336 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_336 code_336_ok (by decide) (by decide)

/-- Catalogue code #337: ((6,2,2)), m=8, a=[2, 2, 4, 7, 7, 7], S=[0, 3]. -/
def code_337 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (2 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((3 : ℚ) / 4)]
theorem code_337_ok : code_337.OK := by native_decide
/-- Code #337 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_337_qec :
    ∃ ψ, SS.IsAmplitudes code_337 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_337 code_337_ok (by decide) (by decide)

/-- Catalogue code #338: ((6,2,2)), m=8, a=[2, 3, 3, 3, 3, 4], S=[0, 1]. -/
def code_338 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_338_ok : code_338.OK := by native_decide
/-- Code #338 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_338_qec :
    ∃ ψ, SS.IsAmplitudes code_338 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_338 code_338_ok (by decide) (by decide)

/-- Catalogue code #339: ((6,2,2)), m=8, a=[2, 3, 3, 4, 5, 6], S=[0, 1]. -/
def code_339 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_339_ok : code_339.OK := by native_decide
/-- Code #339 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_339_qec :
    ∃ ψ, SS.IsAmplitudes code_339 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_339 code_339_ok (by decide) (by decide)

/-- Catalogue code #340: ((6,2,2)), m=8, a=[2, 3, 3, 4, 6, 6], S=[0, 1]. -/
def code_340 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4)]
theorem code_340_ok : code_340.OK := by native_decide
/-- Code #340 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_340_qec :
    ∃ ψ, SS.IsAmplitudes code_340 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_340 code_340_ok (by decide) (by decide)

/-- Catalogue code #341: ((6,2,2)), m=8, a=[2, 3, 3, 6, 6, 6], S=[0, 4]. -/
def code_341 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (3 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (4 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2)]
theorem code_341_ok : code_341.OK := by native_decide
/-- Code #341 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_341_qec :
    ∃ ψ, SS.IsAmplitudes code_341 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_341 code_341_ok (by decide) (by decide)

/-- Catalogue code #342: ((6,2,2)), m=8, a=[2, 3, 4, 4, 5, 5], S=[0, 1]. -/
def code_342 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_342_ok : code_342.OK := by native_decide
/-- Code #342 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_342_qec :
    ∃ ψ, SS.IsAmplitudes code_342 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_342 code_342_ok (by decide) (by decide)

/-- Catalogue code #343: ((6,2,2)), m=8, a=[2, 3, 4, 5, 6, 6], S=[0, 1]. -/
def code_343 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), (0 : ℚ), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_343_ok : code_343.OK := by native_decide
/-- Code #343 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_343_qec :
    ∃ ψ, SS.IsAmplitudes code_343 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_343 code_343_ok (by decide) (by decide)

/-- Catalogue code #344: ((6,2,2)), m=8, a=[2, 4, 4, 6, 7, 7], S=[0, 3]. -/
def code_344 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ)]
theorem code_344_ok : code_344.OK := by native_decide
/-- Code #344 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_344_qec :
    ∃ ψ, SS.IsAmplitudes code_344 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_344 code_344_ok (by decide) (by decide)

/-- Catalogue code #345: ((6,2,2)), m=8, a=[2, 4, 4, 7, 7, 7], S=[0, 5]. -/
def code_345 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-1 : ℚ) / 4)]
theorem code_345_ok : code_345.OK := by native_decide
/-- Code #345 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_345_qec :
    ∃ ψ, SS.IsAmplitudes code_345 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_345 code_345_ok (by decide) (by decide)

/-- Catalogue code #346: ((6,2,2)), m=8, a=[2, 4, 5, 5, 5, 5], S=[0, 1]. -/
def code_346 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 4), ((1 : ℚ) / 2)]
theorem code_346_ok : code_346.OK := by native_decide
/-- Code #346 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_346_qec :
    ∃ ψ, SS.IsAmplitudes code_346 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_346 code_346_ok (by decide) (by decide)

/-- Catalogue code #347: ((6,2,2)), m=8, a=[2, 4, 5, 5, 5, 6], S=[0, 1]. -/
def code_347 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((-3 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_347_ok : code_347.OK := by native_decide
/-- Code #347 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_347_qec :
    ∃ ψ, SS.IsAmplitudes code_347 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_347 code_347_ok (by decide) (by decide)

/-- Catalogue code #348: ((6,2,2)), m=8, a=[2, 4, 5, 5, 5, 6], S=[0, 7]. -/
def code_348 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_348_ok : code_348.OK := by native_decide
/-- Code #348 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_348_qec :
    ∃ ψ, SS.IsAmplitudes code_348 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_348 code_348_ok (by decide) (by decide)

/-- Catalogue code #349: ((6,2,2)), m=8, a=[2, 4, 5, 5, 6, 6], S=[0, 1]. -/
def code_349 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2)]
theorem code_349_ok : code_349.OK := by native_decide
/-- Code #349 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_349_qec :
    ∃ ψ, SS.IsAmplitudes code_349 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_349 code_349_ok (by decide) (by decide)

/-- Catalogue code #350: ((6,2,2)), m=8, a=[2, 4, 5, 5, 6, 6], S=[0, 7]. -/
def code_350 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 4), (0 : ℚ)]
theorem code_350_ok : code_350.OK := by native_decide
/-- Code #350 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_350_qec :
    ∃ ψ, SS.IsAmplitudes code_350 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_350 code_350_ok (by decide) (by decide)

/-- Catalogue code #351: ((6,2,2)), m=8, a=[2, 4, 6, 7, 7, 7], S=[0, 3]. -/
def code_351 : ExampleData 6 8 2 where
  a := ![(2 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (3 : ZMod 8)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((1 : ℚ) / 4)]
theorem code_351_ok : code_351.OK := by native_decide
/-- Code #351 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_351_qec :
    ∃ ψ, SS.IsAmplitudes code_351 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_351 code_351_ok (by decide) (by decide)

/-- Catalogue code #352: ((6,2,2)), m=8, a=[3, 3, 4, 6, 6, 6], S=[0, 1]. -/
def code_352 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (3 : ZMod 8), (4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4)]
theorem code_352_ok : code_352.OK := by native_decide
/-- Code #352 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_352_qec :
    ∃ ψ, SS.IsAmplitudes code_352 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_352 code_352_ok (by decide) (by decide)

/-- Catalogue code #353: ((6,2,2)), m=8, a=[3, 3, 5, 7, 7, 7], S=[0, 2]. -/
def code_353 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (3 : ZMod 8), (5 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (2 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 2), ((1 : ℚ) / 2), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]
theorem code_353_ok : code_353.OK := by native_decide
/-- Code #353 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_353_qec :
    ∃ ψ, SS.IsAmplitudes code_353 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_353 code_353_ok (by decide) (by decide)

/-- Catalogue code #354: ((6,2,2)), m=8, a=[3, 4, 4, 5, 6, 6], S=[0, 7]. -/
def code_354 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4), (0 : ℚ), ((-1 : ℚ) / 4), ((-1 : ℚ) / 4)]
theorem code_354_ok : code_354.OK := by native_decide
/-- Code #354 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_354_qec :
    ∃ ψ, SS.IsAmplitudes code_354 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_354 code_354_ok (by decide) (by decide)

/-- Catalogue code #355: ((6,2,2)), m=8, a=[3, 4, 5, 5, 6, 6], S=[0, 1]. -/
def code_355 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-3 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]
theorem code_355_ok : code_355.OK := by native_decide
/-- Code #355 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_355_qec :
    ∃ ψ, SS.IsAmplitudes code_355 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_355 code_355_ok (by decide) (by decide)

/-- Catalogue code #356: ((6,2,2)), m=8, a=[3, 4, 5, 6, 6, 6], S=[0, 7]. -/
def code_356 : ExampleData 6 8 2 where
  a := ![(3 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (7 : ZMod 8)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 4), (0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ)]
theorem code_356_ok : code_356.OK := by native_decide
/-- Code #356 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_356_qec :
    ∃ ψ, SS.IsAmplitudes code_356 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_356 code_356_ok (by decide) (by decide)

/-- Catalogue code #357: ((6,2,2)), m=8, a=[4, 4, 5, 5, 6, 6], S=[0, 1]. -/
def code_357 : ExampleData 6 8 2 where
  a := ![(4 : ZMod 8), (4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-3 : ℚ) / 4), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2)]
theorem code_357_ok : code_357.OK := by native_decide
/-- Code #357 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_357_qec :
    ∃ ψ, SS.IsAmplitudes code_357 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_357 code_357_ok (by decide) (by decide)

/-- Catalogue code #358: ((6,2,2)), m=8, a=[4, 5, 5, 5, 6, 6], S=[0, 1]. -/
def code_358 : ExampleData 6 8 2 where
  a := ![(4 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (5 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8)]
  S := ![(0 : ZMod 8), (1 : ZMod 8)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 4), (0 : ℚ), ((3 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 4)]
theorem code_358_ok : code_358.OK := by native_decide
/-- Code #358 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_358_qec :
    ∃ ψ, SS.IsAmplitudes code_358 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_358 code_358_ok (by decide) (by decide)

/-- Catalogue code #359: ((6,2,2)), m=8, a=[4, 6, 6, 6, 7, 7], S=[0, 5]. -/
def code_359 : ExampleData 6 8 2 where
  a := ![(4 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (6 : ZMod 8), (7 : ZMod 8), (7 : ZMod 8)]
  S := ![(0 : ZMod 8), (5 : ZMod 8)]
  supp := ![{![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((-1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-3 : ℚ) / 4), (0 : ℚ), (0 : ℚ)]
theorem code_359_ok : code_359.OK := by native_decide
/-- Code #359 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_359_qec :
    ∃ ψ, SS.IsAmplitudes code_359 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_359 code_359_ok (by decide) (by decide)

/-- Catalogue code #360: ((6,2,2)), m=9, a=[1, 1, 1, 1, 2, 3], S=[0, 4]. -/
def code_360 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_360_ok : code_360.OK := by native_decide
/-- Code #360 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_360_qec :
    ∃ ψ, SS.IsAmplitudes code_360 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_360 code_360_ok (by decide) (by decide)

/-- Catalogue code #361: ((6,2,2)), m=9, a=[1, 1, 1, 1, 2, 3], S=[0, 5]. -/
def code_361 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_361_ok : code_361.OK := by native_decide
/-- Code #361 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_361_qec :
    ∃ ψ, SS.IsAmplitudes code_361 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_361 code_361_ok (by decide) (by decide)

/-- Catalogue code #362: ((6,2,2)), m=9, a=[1, 1, 1, 1, 2, 4], S=[0, 6]. -/
def code_362 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_362_ok : code_362.OK := by native_decide
/-- Code #362 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_362_qec :
    ∃ ψ, SS.IsAmplitudes code_362 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_362 code_362_ok (by decide) (by decide)

/-- Catalogue code #363: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 3], S=[0, 4]. -/
def code_363 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_363_ok : code_363.OK := by native_decide
/-- Code #363 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_363_qec :
    ∃ ψ, SS.IsAmplitudes code_363 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_363 code_363_ok (by decide) (by decide)

/-- Catalogue code #364: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 3], S=[0, 7]. -/
def code_364 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9)]
theorem code_364_ok : code_364.OK := by native_decide
/-- Code #364 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_364_qec :
    ∃ ψ, SS.IsAmplitudes code_364 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_364 code_364_ok (by decide) (by decide)

/-- Catalogue code #365: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 4], S=[0, 7]. -/
def code_365 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9)]
theorem code_365_ok : code_365.OK := by native_decide
/-- Code #365 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_365_qec :
    ∃ ψ, SS.IsAmplitudes code_365 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_365 code_365_ok (by decide) (by decide)

/-- Catalogue code #366: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 5], S=[0, 7]. -/
def code_366 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]
theorem code_366_ok : code_366.OK := by native_decide
/-- Code #366 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_366_qec :
    ∃ ψ, SS.IsAmplitudes code_366 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_366 code_366_ok (by decide) (by decide)

/-- Catalogue code #367: ((6,2,2)), m=9, a=[1, 1, 1, 1, 3, 6], S=[0, 7]. -/
def code_367 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]
theorem code_367_ok : code_367.OK := by native_decide
/-- Code #367 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_367_qec :
    ∃ ψ, SS.IsAmplitudes code_367 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_367 code_367_ok (by decide) (by decide)

/-- Catalogue code #368: ((6,2,2)), m=9, a=[1, 1, 1, 1, 4, 5], S=[0, 6]. -/
def code_368 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_368_ok : code_368.OK := by native_decide
/-- Code #368 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_368_qec :
    ∃ ψ, SS.IsAmplitudes code_368 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_368 code_368_ok (by decide) (by decide)

/-- Catalogue code #369: ((6,2,2)), m=9, a=[1, 1, 1, 1, 4, 5], S=[0, 7]. -/
def code_369 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]
theorem code_369_ok : code_369.OK := by native_decide
/-- Code #369 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_369_qec :
    ∃ ψ, SS.IsAmplitudes code_369 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_369 code_369_ok (by decide) (by decide)

/-- Catalogue code #370: ((6,2,2)), m=9, a=[1, 1, 1, 1, 5, 5], S=[0, 2]. -/
def code_370 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]
theorem code_370_ok : code_370.OK := by native_decide
/-- Code #370 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_370_qec :
    ∃ ψ, SS.IsAmplitudes code_370 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_370 code_370_ok (by decide) (by decide)

/-- Catalogue code #371: ((6,2,2)), m=9, a=[1, 1, 1, 1, 5, 6], S=[0, 2]. -/
def code_371 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]
theorem code_371_ok : code_371.OK := by native_decide
/-- Code #371 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_371_qec :
    ∃ ψ, SS.IsAmplitudes code_371 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_371 code_371_ok (by decide) (by decide)

/-- Catalogue code #372: ((6,2,2)), m=9, a=[1, 1, 1, 1, 5, 7], S=[0, 3]. -/
def code_372 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_372_ok : code_372.OK := by native_decide
/-- Code #372 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_372_qec :
    ∃ ψ, SS.IsAmplitudes code_372 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_372 code_372_ok (by decide) (by decide)

/-- Catalogue code #373: ((6,2,2)), m=9, a=[1, 1, 1, 1, 6, 6], S=[0, 4]. -/
def code_373 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_373_ok : code_373.OK := by native_decide
/-- Code #373 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_373_qec :
    ∃ ψ, SS.IsAmplitudes code_373 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_373 code_373_ok (by decide) (by decide)

/-- Catalogue code #374: ((6,2,2)), m=9, a=[1, 1, 1, 1, 6, 7], S=[0, 4]. -/
def code_374 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_374_ok : code_374.OK := by native_decide
/-- Code #374 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_374_qec :
    ∃ ψ, SS.IsAmplitudes code_374 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_374 code_374_ok (by decide) (by decide)

/-- Catalogue code #375: ((6,2,2)), m=9, a=[1, 1, 1, 2, 2, 2], S=[0, 4]. -/
def code_375 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_375_ok : code_375.OK := by native_decide
/-- Code #375 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_375_qec :
    ∃ ψ, SS.IsAmplitudes code_375 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_375 code_375_ok (by decide) (by decide)

/-- Catalogue code #376: ((6,2,2)), m=9, a=[1, 1, 1, 2, 2, 2], S=[0, 5]. -/
def code_376 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_376_ok : code_376.OK := by native_decide
/-- Code #376 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_376_qec :
    ∃ ψ, SS.IsAmplitudes code_376 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_376 code_376_ok (by decide) (by decide)

/-- Catalogue code #377: ((6,2,2)), m=9, a=[1, 1, 1, 2, 2, 3], S=[0, 4]. -/
def code_377 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_377_ok : code_377.OK := by native_decide
/-- Code #377 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_377_qec :
    ∃ ψ, SS.IsAmplitudes code_377 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_377 code_377_ok (by decide) (by decide)

/-- Catalogue code #378: ((6,2,2)), m=9, a=[1, 1, 1, 2, 2, 3], S=[0, 5]. -/
def code_378 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_378_ok : code_378.OK := by native_decide
/-- Code #378 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_378_qec :
    ∃ ψ, SS.IsAmplitudes code_378 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_378 code_378_ok (by decide) (by decide)

/-- Catalogue code #379: ((6,2,2)), m=9, a=[1, 1, 1, 2, 3, 3], S=[0, 4]. -/
def code_379 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_379_ok : code_379.OK := by native_decide
/-- Code #379 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_379_qec :
    ∃ ψ, SS.IsAmplitudes code_379 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_379 code_379_ok (by decide) (by decide)

/-- Catalogue code #380: ((6,2,2)), m=9, a=[1, 1, 1, 2, 4, 8], S=[0, 3]. -/
def code_380 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_380_ok : code_380.OK := by native_decide
/-- Code #380 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_380_qec :
    ∃ ψ, SS.IsAmplitudes code_380 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_380 code_380_ok (by decide) (by decide)

/-- Catalogue code #381: ((6,2,2)), m=9, a=[1, 1, 1, 2, 6, 6], S=[0, 4]. -/
def code_381 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_381_ok : code_381.OK := by native_decide
/-- Code #381 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_381_qec :
    ∃ ψ, SS.IsAmplitudes code_381 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_381 code_381_ok (by decide) (by decide)

/-- Catalogue code #382: ((6,2,2)), m=9, a=[1, 1, 1, 2, 6, 7], S=[0, 4]. -/
def code_382 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_382_ok : code_382.OK := by native_decide
/-- Code #382 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_382_qec :
    ∃ ψ, SS.IsAmplitudes code_382 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_382 code_382_ok (by decide) (by decide)

/-- Catalogue code #383: ((6,2,2)), m=9, a=[1, 1, 1, 2, 6, 8], S=[0, 5]. -/
def code_383 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_383_ok : code_383.OK := by native_decide
/-- Code #383 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_383_qec :
    ∃ ψ, SS.IsAmplitudes code_383 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_383 code_383_ok (by decide) (by decide)

/-- Catalogue code #384: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 3], S=[0, 2]. -/
def code_384 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_384_ok : code_384.OK := by native_decide
/-- Code #384 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_384_qec :
    ∃ ψ, SS.IsAmplitudes code_384 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_384 code_384_ok (by decide) (by decide)

/-- Catalogue code #385: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 3], S=[0, 4]. -/
def code_385 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_385_ok : code_385.OK := by native_decide
/-- Code #385 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_385_qec :
    ∃ ψ, SS.IsAmplitudes code_385 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_385 code_385_ok (by decide) (by decide)

/-- Catalogue code #386: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 3], S=[0, 7]. -/
def code_386 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_386_ok : code_386.OK := by native_decide
/-- Code #386 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_386_qec :
    ∃ ψ, SS.IsAmplitudes code_386 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_386 code_386_ok (by decide) (by decide)

/-- Catalogue code #387: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 4], S=[0, 2]. -/
def code_387 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_387_ok : code_387.OK := by native_decide
/-- Code #387 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_387_qec :
    ∃ ψ, SS.IsAmplitudes code_387 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_387 code_387_ok (by decide) (by decide)

/-- Catalogue code #388: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 4], S=[0, 7]. -/
def code_388 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_388_ok : code_388.OK := by native_decide
/-- Code #388 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_388_qec :
    ∃ ψ, SS.IsAmplitudes code_388 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_388 code_388_ok (by decide) (by decide)

/-- Catalogue code #389: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 5], S=[0, 2]. -/
def code_389 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_389_ok : code_389.OK := by native_decide
/-- Code #389 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_389_qec :
    ∃ ψ, SS.IsAmplitudes code_389 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_389 code_389_ok (by decide) (by decide)

/-- Catalogue code #390: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 5], S=[0, 7]. -/
def code_390 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_390_ok : code_390.OK := by native_decide
/-- Code #390 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_390_qec :
    ∃ ψ, SS.IsAmplitudes code_390 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_390 code_390_ok (by decide) (by decide)

/-- Catalogue code #391: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 6], S=[0, 2]. -/
def code_391 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]
theorem code_391_ok : code_391.OK := by native_decide
/-- Code #391 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_391_qec :
    ∃ ψ, SS.IsAmplitudes code_391 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_391 code_391_ok (by decide) (by decide)

/-- Catalogue code #392: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 6], S=[0, 5]. -/
def code_392 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_392_ok : code_392.OK := by native_decide
/-- Code #392 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_392_qec :
    ∃ ψ, SS.IsAmplitudes code_392 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_392 code_392_ok (by decide) (by decide)

/-- Catalogue code #393: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 6], S=[0, 7]. -/
def code_393 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_393_ok : code_393.OK := by native_decide
/-- Code #393 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_393_qec :
    ∃ ψ, SS.IsAmplitudes code_393 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_393 code_393_ok (by decide) (by decide)

/-- Catalogue code #394: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 7], S=[0, 5]. -/
def code_394 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]
theorem code_394_ok : code_394.OK := by native_decide
/-- Code #394 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_394_qec :
    ∃ ψ, SS.IsAmplitudes code_394 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_394 code_394_ok (by decide) (by decide)

/-- Catalogue code #395: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 8], S=[0, 2]. -/
def code_395 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_395_ok : code_395.OK := by native_decide
/-- Code #395 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_395_qec :
    ∃ ψ, SS.IsAmplitudes code_395 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_395 code_395_ok (by decide) (by decide)

/-- Catalogue code #396: ((6,2,2)), m=9, a=[1, 1, 1, 3, 3, 8], S=[0, 5]. -/
def code_396 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_396_ok : code_396.OK := by native_decide
/-- Code #396 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_396_qec :
    ∃ ψ, SS.IsAmplitudes code_396 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_396 code_396_ok (by decide) (by decide)

/-- Catalogue code #397: ((6,2,2)), m=9, a=[1, 1, 1, 3, 4, 4], S=[0, 2]. -/
def code_397 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_397_ok : code_397.OK := by native_decide
/-- Code #397 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_397_qec :
    ∃ ψ, SS.IsAmplitudes code_397 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_397 code_397_ok (by decide) (by decide)

/-- Catalogue code #398: ((6,2,2)), m=9, a=[1, 1, 1, 3, 4, 4], S=[0, 7]. -/
def code_398 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_398_ok : code_398.OK := by native_decide
/-- Code #398 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_398_qec :
    ∃ ψ, SS.IsAmplitudes code_398 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_398 code_398_ok (by decide) (by decide)

/-- Catalogue code #399: ((6,2,2)), m=9, a=[1, 1, 1, 3, 4, 5], S=[0, 7]. -/
def code_399 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_399_ok : code_399.OK := by native_decide
/-- Code #399 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_399_qec :
    ∃ ψ, SS.IsAmplitudes code_399 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_399 code_399_ok (by decide) (by decide)

/-- Catalogue code #400: ((6,2,2)), m=9, a=[1, 1, 1, 3, 4, 6], S=[0, 2]. -/
def code_400 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_400_ok : code_400.OK := by native_decide
/-- Code #400 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_400_qec :
    ∃ ψ, SS.IsAmplitudes code_400 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_400 code_400_ok (by decide) (by decide)

/-- Catalogue code #401: ((6,2,2)), m=9, a=[1, 1, 1, 3, 5, 6], S=[0, 2]. -/
def code_401 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]
theorem code_401_ok : code_401.OK := by native_decide
/-- Code #401 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_401_qec :
    ∃ ψ, SS.IsAmplitudes code_401 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_401 code_401_ok (by decide) (by decide)

/-- Catalogue code #402: ((6,2,2)), m=9, a=[1, 1, 1, 3, 6, 6], S=[0, 4]. -/
def code_402 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_402_ok : code_402.OK := by native_decide
/-- Code #402 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_402_qec :
    ∃ ψ, SS.IsAmplitudes code_402 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_402 code_402_ok (by decide) (by decide)

/-- Catalogue code #403: ((6,2,2)), m=9, a=[1, 1, 1, 3, 6, 6], S=[0, 5]. -/
def code_403 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_403_ok : code_403.OK := by native_decide
/-- Code #403 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_403_qec :
    ∃ ψ, SS.IsAmplitudes code_403 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_403 code_403_ok (by decide) (by decide)

/-- Catalogue code #404: ((6,2,2)), m=9, a=[1, 1, 1, 3, 6, 7], S=[0, 5]. -/
def code_404 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_404_ok : code_404.OK := by native_decide
/-- Code #404 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_404_qec :
    ∃ ψ, SS.IsAmplitudes code_404 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_404 code_404_ok (by decide) (by decide)

/-- Catalogue code #405: ((6,2,2)), m=9, a=[1, 1, 1, 3, 6, 8], S=[0, 5]. -/
def code_405 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]
theorem code_405_ok : code_405.OK := by native_decide
/-- Code #405 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_405_qec :
    ∃ ψ, SS.IsAmplitudes code_405 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_405 code_405_ok (by decide) (by decide)

/-- Catalogue code #406: ((6,2,2)), m=9, a=[1, 1, 1, 3, 7, 7], S=[0, 5]. -/
def code_406 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_406_ok : code_406.OK := by native_decide
/-- Code #406 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_406_qec :
    ∃ ψ, SS.IsAmplitudes code_406 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_406 code_406_ok (by decide) (by decide)

/-- Catalogue code #407: ((6,2,2)), m=9, a=[1, 1, 1, 4, 4, 6], S=[0, 2]. -/
def code_407 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_407_ok : code_407.OK := by native_decide
/-- Code #407 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_407_qec :
    ∃ ψ, SS.IsAmplitudes code_407 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_407 code_407_ok (by decide) (by decide)

/-- Catalogue code #408: ((6,2,2)), m=9, a=[1, 1, 1, 4, 4, 6], S=[0, 7]. -/
def code_408 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(-1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_408_ok : code_408.OK := by native_decide
/-- Code #408 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_408_qec :
    ∃ ψ, SS.IsAmplitudes code_408 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_408 code_408_ok (by decide) (by decide)

/-- Catalogue code #409: ((6,2,2)), m=9, a=[1, 1, 1, 4, 4, 8], S=[0, 7]. -/
def code_409 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_409_ok : code_409.OK := by native_decide
/-- Code #409 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_409_qec :
    ∃ ψ, SS.IsAmplitudes code_409 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_409 code_409_ok (by decide) (by decide)

/-- Catalogue code #410: ((6,2,2)), m=9, a=[1, 1, 1, 4, 5, 6], S=[0, 2]. -/
def code_410 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_410_ok : code_410.OK := by native_decide
/-- Code #410 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_410_qec :
    ∃ ψ, SS.IsAmplitudes code_410 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_410 code_410_ok (by decide) (by decide)

/-- Catalogue code #411: ((6,2,2)), m=9, a=[1, 1, 1, 4, 5, 6], S=[0, 7]. -/
def code_411 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_411_ok : code_411.OK := by native_decide
/-- Code #411 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_411_qec :
    ∃ ψ, SS.IsAmplitudes code_411 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_411 code_411_ok (by decide) (by decide)

/-- Catalogue code #412: ((6,2,2)), m=9, a=[1, 1, 1, 4, 6, 6], S=[0, 7]. -/
def code_412 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_412_ok : code_412.OK := by native_decide
/-- Code #412 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_412_qec :
    ∃ ψ, SS.IsAmplitudes code_412 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_412 code_412_ok (by decide) (by decide)

/-- Catalogue code #413: ((6,2,2)), m=9, a=[1, 1, 1, 4, 6, 8], S=[0, 7]. -/
def code_413 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_413_ok : code_413.OK := by native_decide
/-- Code #413 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_413_qec :
    ∃ ψ, SS.IsAmplitudes code_413 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_413 code_413_ok (by decide) (by decide)

/-- Catalogue code #414: ((6,2,2)), m=9, a=[1, 1, 1, 5, 5, 5], S=[0, 2]. -/
def code_414 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_414_ok : code_414.OK := by native_decide
/-- Code #414 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_414_qec :
    ∃ ψ, SS.IsAmplitudes code_414 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_414 code_414_ok (by decide) (by decide)

/-- Catalogue code #415: ((6,2,2)), m=9, a=[1, 1, 1, 5, 5, 5], S=[0, 7]. -/
def code_415 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_415_ok : code_415.OK := by native_decide
/-- Code #415 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_415_qec :
    ∃ ψ, SS.IsAmplitudes code_415 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_415 code_415_ok (by decide) (by decide)

/-- Catalogue code #416: ((6,2,2)), m=9, a=[1, 1, 1, 5, 5, 6], S=[0, 2]. -/
def code_416 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_416_ok : code_416.OK := by native_decide
/-- Code #416 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_416_qec :
    ∃ ψ, SS.IsAmplitudes code_416 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_416 code_416_ok (by decide) (by decide)

/-- Catalogue code #417: ((6,2,2)), m=9, a=[1, 1, 1, 5, 5, 6], S=[0, 7]. -/
def code_417 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_417_ok : code_417.OK := by native_decide
/-- Code #417 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_417_qec :
    ∃ ψ, SS.IsAmplitudes code_417 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_417 code_417_ok (by decide) (by decide)

/-- Catalogue code #418: ((6,2,2)), m=9, a=[1, 1, 1, 5, 6, 6], S=[0, 7]. -/
def code_418 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_418_ok : code_418.OK := by native_decide
/-- Code #418 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_418_qec :
    ∃ ψ, SS.IsAmplitudes code_418 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_418 code_418_ok (by decide) (by decide)

/-- Catalogue code #419: ((6,2,2)), m=9, a=[1, 1, 1, 6, 6, 6], S=[0, 2]. -/
def code_419 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]
theorem code_419_ok : code_419.OK := by native_decide
/-- Code #419 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_419_qec :
    ∃ ψ, SS.IsAmplitudes code_419 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_419 code_419_ok (by decide) (by decide)

/-- Catalogue code #420: ((6,2,2)), m=9, a=[1, 1, 1, 6, 6, 6], S=[0, 4]. -/
def code_420 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]
theorem code_420_ok : code_420.OK := by native_decide
/-- Code #420 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_420_qec :
    ∃ ψ, SS.IsAmplitudes code_420 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_420 code_420_ok (by decide) (by decide)

/-- Catalogue code #421: ((6,2,2)), m=9, a=[1, 1, 1, 6, 6, 6], S=[0, 7]. -/
def code_421 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]
theorem code_421_ok : code_421.OK := by native_decide
/-- Code #421 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_421_qec :
    ∃ ψ, SS.IsAmplitudes code_421 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_421 code_421_ok (by decide) (by decide)

/-- Catalogue code #422: ((6,2,2)), m=9, a=[1, 1, 1, 6, 6, 8], S=[0, 2]. -/
def code_422 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (1 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]
theorem code_422_ok : code_422.OK := by native_decide
/-- Code #422 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_422_qec :
    ∃ ψ, SS.IsAmplitudes code_422 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_422 code_422_ok (by decide) (by decide)

/-- Catalogue code #423: ((6,2,2)), m=9, a=[1, 1, 2, 2, 2, 2], S=[0, 4]. -/
def code_423 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_423_ok : code_423.OK := by native_decide
/-- Code #423 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_423_qec :
    ∃ ψ, SS.IsAmplitudes code_423 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_423 code_423_ok (by decide) (by decide)

/-- Catalogue code #424: ((6,2,2)), m=9, a=[1, 1, 2, 2, 2, 3], S=[0, 4]. -/
def code_424 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_424_ok : code_424.OK := by native_decide
/-- Code #424 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_424_qec :
    ∃ ψ, SS.IsAmplitudes code_424 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_424 code_424_ok (by decide) (by decide)

/-- Catalogue code #425: ((6,2,2)), m=9, a=[1, 1, 2, 2, 2, 3], S=[0, 5]. -/
def code_425 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_425_ok : code_425.OK := by native_decide
/-- Code #425 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_425_qec :
    ∃ ψ, SS.IsAmplitudes code_425 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_425 code_425_ok (by decide) (by decide)

/-- Catalogue code #426: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 3], S=[0, 4]. -/
def code_426 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]
theorem code_426_ok : code_426.OK := by native_decide
/-- Code #426 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_426_qec :
    ∃ ψ, SS.IsAmplitudes code_426 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_426 code_426_ok (by decide) (by decide)

/-- Catalogue code #427: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 3], S=[0, 5]. -/
def code_427 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]
theorem code_427_ok : code_427.OK := by native_decide
/-- Code #427 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_427_qec :
    ∃ ψ, SS.IsAmplitudes code_427 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_427 code_427_ok (by decide) (by decide)

/-- Catalogue code #428: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 6], S=[0, 4]. -/
def code_428 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]
theorem code_428_ok : code_428.OK := by native_decide
/-- Code #428 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_428_qec :
    ∃ ψ, SS.IsAmplitudes code_428 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_428 code_428_ok (by decide) (by decide)

/-- Catalogue code #429: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 6], S=[0, 5]. -/
def code_429 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_429_ok : code_429.OK := by native_decide
/-- Code #429 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_429_qec :
    ∃ ψ, SS.IsAmplitudes code_429 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_429 code_429_ok (by decide) (by decide)

/-- Catalogue code #430: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 7], S=[0, 4]. -/
def code_430 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_430_ok : code_430.OK := by native_decide
/-- Code #430 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_430_qec :
    ∃ ψ, SS.IsAmplitudes code_430 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_430 code_430_ok (by decide) (by decide)

/-- Catalogue code #431: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 7], S=[0, 5]. -/
def code_431 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]
theorem code_431_ok : code_431.OK := by native_decide
/-- Code #431 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_431_qec :
    ∃ ψ, SS.IsAmplitudes code_431 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_431 code_431_ok (by decide) (by decide)

/-- Catalogue code #432: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 8], S=[0, 4]. -/
def code_432 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![(-1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_432_ok : code_432.OK := by native_decide
/-- Code #432 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_432_qec :
    ∃ ψ, SS.IsAmplitudes code_432 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_432 code_432_ok (by decide) (by decide)

/-- Catalogue code #433: ((6,2,2)), m=9, a=[1, 1, 2, 2, 3, 8], S=[0, 5]. -/
def code_433 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_433_ok : code_433.OK := by native_decide
/-- Code #433 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_433_qec :
    ∃ ψ, SS.IsAmplitudes code_433 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_433 code_433_ok (by decide) (by decide)

/-- Catalogue code #434: ((6,2,2)), m=9, a=[1, 1, 2, 2, 5, 7], S=[0, 3]. -/
def code_434 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (3 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_434_ok : code_434.OK := by native_decide
/-- Code #434 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_434_qec :
    ∃ ψ, SS.IsAmplitudes code_434 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_434 code_434_ok (by decide) (by decide)

/-- Catalogue code #435: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 6], S=[0, 4]. -/
def code_435 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_435_ok : code_435.OK := by native_decide
/-- Code #435 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_435_qec :
    ∃ ψ, SS.IsAmplitudes code_435 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_435 code_435_ok (by decide) (by decide)

/-- Catalogue code #436: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 6], S=[0, 5]. -/
def code_436 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_436_ok : code_436.OK := by native_decide
/-- Code #436 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_436_qec :
    ∃ ψ, SS.IsAmplitudes code_436 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_436 code_436_ok (by decide) (by decide)

/-- Catalogue code #437: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 7], S=[0, 4]. -/
def code_437 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_437_ok : code_437.OK := by native_decide
/-- Code #437 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_437_qec :
    ∃ ψ, SS.IsAmplitudes code_437 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_437 code_437_ok (by decide) (by decide)

/-- Catalogue code #438: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 7], S=[0, 5]. -/
def code_438 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_438_ok : code_438.OK := by native_decide
/-- Code #438 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_438_qec :
    ∃ ψ, SS.IsAmplitudes code_438 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_438 code_438_ok (by decide) (by decide)

/-- Catalogue code #439: ((6,2,2)), m=9, a=[1, 1, 2, 2, 6, 8], S=[0, 5]. -/
def code_439 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9)]
theorem code_439_ok : code_439.OK := by native_decide
/-- Code #439 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_439_qec :
    ∃ ψ, SS.IsAmplitudes code_439 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_439 code_439_ok (by decide) (by decide)

/-- Catalogue code #440: ((6,2,2)), m=9, a=[1, 1, 2, 2, 7, 7], S=[0, 5]. -/
def code_440 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (2 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_440_ok : code_440.OK := by native_decide
/-- Code #440 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_440_qec :
    ∃ ψ, SS.IsAmplitudes code_440 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_440 code_440_ok (by decide) (by decide)

/-- Catalogue code #441: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 6], S=[0, 5]. -/
def code_441 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_441_ok : code_441.OK := by native_decide
/-- Code #441 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_441_qec :
    ∃ ψ, SS.IsAmplitudes code_441 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_441 code_441_ok (by decide) (by decide)

/-- Catalogue code #442: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 7], S=[0, 4]. -/
def code_442 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_442_ok : code_442.OK := by native_decide
/-- Code #442 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_442_qec :
    ∃ ψ, SS.IsAmplitudes code_442 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_442 code_442_ok (by decide) (by decide)

/-- Catalogue code #443: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 7], S=[0, 5]. -/
def code_443 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_443_ok : code_443.OK := by native_decide
/-- Code #443 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_443_qec :
    ∃ ψ, SS.IsAmplitudes code_443 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_443 code_443_ok (by decide) (by decide)

/-- Catalogue code #444: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 8], S=[0, 4]. -/
def code_444 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_444_ok : code_444.OK := by native_decide
/-- Code #444 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_444_qec :
    ∃ ψ, SS.IsAmplitudes code_444 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_444 code_444_ok (by decide) (by decide)

/-- Catalogue code #445: ((6,2,2)), m=9, a=[1, 1, 2, 3, 3, 8], S=[0, 5]. -/
def code_445 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_445_ok : code_445.OK := by native_decide
/-- Code #445 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_445_qec :
    ∃ ψ, SS.IsAmplitudes code_445 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_445 code_445_ok (by decide) (by decide)

/-- Catalogue code #446: ((6,2,2)), m=9, a=[1, 1, 2, 3, 6, 6], S=[0, 5]. -/
def code_446 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_446_ok : code_446.OK := by native_decide
/-- Code #446 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_446_qec :
    ∃ ψ, SS.IsAmplitudes code_446 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_446 code_446_ok (by decide) (by decide)

/-- Catalogue code #447: ((6,2,2)), m=9, a=[1, 1, 2, 3, 6, 7], S=[0, 4]. -/
def code_447 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]
theorem code_447_ok : code_447.OK := by native_decide
/-- Code #447 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_447_qec :
    ∃ ψ, SS.IsAmplitudes code_447 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_447 code_447_ok (by decide) (by decide)

/-- Catalogue code #448: ((6,2,2)), m=9, a=[1, 1, 2, 3, 6, 7], S=[0, 5]. -/
def code_448 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_448_ok : code_448.OK := by native_decide
/-- Code #448 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_448_qec :
    ∃ ψ, SS.IsAmplitudes code_448 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_448 code_448_ok (by decide) (by decide)

/-- Catalogue code #449: ((6,2,2)), m=9, a=[1, 1, 2, 3, 6, 8], S=[0, 5]. -/
def code_449 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_449_ok : code_449.OK := by native_decide
/-- Code #449 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_449_qec :
    ∃ ψ, SS.IsAmplitudes code_449 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_449 code_449_ok (by decide) (by decide)

/-- Catalogue code #450: ((6,2,2)), m=9, a=[1, 1, 2, 3, 7, 7], S=[0, 5]. -/
def code_450 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_450_ok : code_450.OK := by native_decide
/-- Code #450 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_450_qec :
    ∃ ψ, SS.IsAmplitudes code_450 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_450 code_450_ok (by decide) (by decide)

/-- Catalogue code #451: ((6,2,2)), m=9, a=[1, 1, 2, 5, 5, 7], S=[0, 6]. -/
def code_451 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (6 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_451_ok : code_451.OK := by native_decide
/-- Code #451 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_451_qec :
    ∃ ψ, SS.IsAmplitudes code_451 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_451 code_451_ok (by decide) (by decide)

/-- Catalogue code #452: ((6,2,2)), m=9, a=[1, 1, 2, 6, 6, 7], S=[0, 4]. -/
def code_452 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]
theorem code_452_ok : code_452.OK := by native_decide
/-- Code #452 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_452_qec :
    ∃ ψ, SS.IsAmplitudes code_452 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_452 code_452_ok (by decide) (by decide)

/-- Catalogue code #453: ((6,2,2)), m=9, a=[1, 1, 2, 6, 6, 8], S=[0, 4]. -/
def code_453 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]
theorem code_453_ok : code_453.OK := by native_decide
/-- Code #453 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_453_qec :
    ∃ ψ, SS.IsAmplitudes code_453 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_453 code_453_ok (by decide) (by decide)

/-- Catalogue code #454: ((6,2,2)), m=9, a=[1, 1, 2, 6, 7, 7], S=[0, 4]. -/
def code_454 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_454_ok : code_454.OK := by native_decide
/-- Code #454 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_454_qec :
    ∃ ψ, SS.IsAmplitudes code_454 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_454 code_454_ok (by decide) (by decide)

/-- Catalogue code #455: ((6,2,2)), m=9, a=[1, 1, 2, 6, 7, 8], S=[0, 4]. -/
def code_455 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9)]
theorem code_455_ok : code_455.OK := by native_decide
/-- Code #455 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_455_qec :
    ∃ ψ, SS.IsAmplitudes code_455 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_455 code_455_ok (by decide) (by decide)

/-- Catalogue code #456: ((6,2,2)), m=9, a=[1, 1, 2, 6, 8, 8], S=[0, 4]. -/
def code_456 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_456_ok : code_456.OK := by native_decide
/-- Code #456 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_456_qec :
    ∃ ψ, SS.IsAmplitudes code_456 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_456 code_456_ok (by decide) (by decide)

/-- Catalogue code #457: ((6,2,2)), m=9, a=[1, 1, 2, 7, 7, 8], S=[0, 4]. -/
def code_457 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (2 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_457_ok : code_457.OK := by native_decide
/-- Code #457 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_457_qec :
    ∃ ψ, SS.IsAmplitudes code_457 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_457 code_457_ok (by decide) (by decide)

/-- Catalogue code #458: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 4], S=[0, 2]. -/
def code_458 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_458_ok : code_458.OK := by native_decide
/-- Code #458 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_458_qec :
    ∃ ψ, SS.IsAmplitudes code_458 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_458 code_458_ok (by decide) (by decide)

/-- Catalogue code #459: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 4], S=[0, 7]. -/
def code_459 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]
theorem code_459_ok : code_459.OK := by native_decide
/-- Code #459 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_459_qec :
    ∃ ψ, SS.IsAmplitudes code_459 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_459 code_459_ok (by decide) (by decide)

/-- Catalogue code #460: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 5], S=[0, 2]. -/
def code_460 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_460_ok : code_460.OK := by native_decide
/-- Code #460 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_460_qec :
    ∃ ψ, SS.IsAmplitudes code_460 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_460 code_460_ok (by decide) (by decide)

/-- Catalogue code #461: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 7], S=[0, 4]. -/
def code_461 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]
theorem code_461_ok : code_461.OK := by native_decide
/-- Code #461 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_461_qec :
    ∃ ψ, SS.IsAmplitudes code_461 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_461 code_461_ok (by decide) (by decide)

/-- Catalogue code #462: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 7], S=[0, 5]. -/
def code_462 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_462_ok : code_462.OK := by native_decide
/-- Code #462 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_462_qec :
    ∃ ψ, SS.IsAmplitudes code_462 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_462 code_462_ok (by decide) (by decide)

/-- Catalogue code #463: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 8], S=[0, 2]. -/
def code_463 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_463_ok : code_463.OK := by native_decide
/-- Code #463 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_463_qec :
    ∃ ψ, SS.IsAmplitudes code_463 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_463 code_463_ok (by decide) (by decide)

/-- Catalogue code #464: ((6,2,2)), m=9, a=[1, 1, 3, 3, 3, 8], S=[0, 5]. -/
def code_464 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_464_ok : code_464.OK := by native_decide
/-- Code #464 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_464_qec :
    ∃ ψ, SS.IsAmplitudes code_464 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_464 code_464_ok (by decide) (by decide)

/-- Catalogue code #465: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 4], S=[0, 2]. -/
def code_465 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_465_ok : code_465.OK := by native_decide
/-- Code #465 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_465_qec :
    ∃ ψ, SS.IsAmplitudes code_465 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_465 code_465_ok (by decide) (by decide)

/-- Catalogue code #466: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 5], S=[0, 2]. -/
def code_466 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_466_ok : code_466.OK := by native_decide
/-- Code #466 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_466_qec :
    ∃ ψ, SS.IsAmplitudes code_466 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_466 code_466_ok (by decide) (by decide)

/-- Catalogue code #467: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 5], S=[0, 7]. -/
def code_467 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]
theorem code_467_ok : code_467.OK := by native_decide
/-- Code #467 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_467_qec :
    ∃ ψ, SS.IsAmplitudes code_467 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_467 code_467_ok (by decide) (by decide)

/-- Catalogue code #468: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 6], S=[0, 2]. -/
def code_468 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]
theorem code_468_ok : code_468.OK := by native_decide
/-- Code #468 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_468_qec :
    ∃ ψ, SS.IsAmplitudes code_468 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_468 code_468_ok (by decide) (by decide)

/-- Catalogue code #469: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 6], S=[0, 7]. -/
def code_469 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]
theorem code_469_ok : code_469.OK := by native_decide
/-- Code #469 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_469_qec :
    ∃ ψ, SS.IsAmplitudes code_469 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_469 code_469_ok (by decide) (by decide)

/-- Catalogue code #470: ((6,2,2)), m=9, a=[1, 1, 3, 3, 4, 8], S=[0, 7]. -/
def code_470 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_470_ok : code_470.OK := by native_decide
/-- Code #470 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_470_qec :
    ∃ ψ, SS.IsAmplitudes code_470 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_470 code_470_ok (by decide) (by decide)

/-- Catalogue code #471: ((6,2,2)), m=9, a=[1, 1, 3, 3, 5, 5], S=[0, 2]. -/
def code_471 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9)]
theorem code_471_ok : code_471.OK := by native_decide
/-- Code #471 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_471_qec :
    ∃ ψ, SS.IsAmplitudes code_471 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_471 code_471_ok (by decide) (by decide)

/-- Catalogue code #472: ((6,2,2)), m=9, a=[1, 1, 3, 3, 5, 5], S=[0, 7]. -/
def code_472 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_472_ok : code_472.OK := by native_decide
/-- Code #472 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_472_qec :
    ∃ ψ, SS.IsAmplitudes code_472 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_472 code_472_ok (by decide) (by decide)

/-- Catalogue code #473: ((6,2,2)), m=9, a=[1, 1, 3, 3, 5, 6], S=[0, 2]. -/
def code_473 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]
theorem code_473_ok : code_473.OK := by native_decide
/-- Code #473 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_473_qec :
    ∃ ψ, SS.IsAmplitudes code_473 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_473 code_473_ok (by decide) (by decide)

/-- Catalogue code #474: ((6,2,2)), m=9, a=[1, 1, 3, 3, 5, 8], S=[0, 7]. -/
def code_474 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_474_ok : code_474.OK := by native_decide
/-- Code #474 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_474_qec :
    ∃ ψ, SS.IsAmplitudes code_474 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_474 code_474_ok (by decide) (by decide)

/-- Catalogue code #475: ((6,2,2)), m=9, a=[1, 1, 3, 3, 6, 7], S=[0, 5]. -/
def code_475 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_475_ok : code_475.OK := by native_decide
/-- Code #475 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_475_qec :
    ∃ ψ, SS.IsAmplitudes code_475 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_475 code_475_ok (by decide) (by decide)

/-- Catalogue code #476: ((6,2,2)), m=9, a=[1, 1, 3, 3, 6, 8], S=[0, 5]. -/
def code_476 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_476_ok : code_476.OK := by native_decide
/-- Code #476 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_476_qec :
    ∃ ψ, SS.IsAmplitudes code_476 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_476 code_476_ok (by decide) (by decide)

/-- Catalogue code #477: ((6,2,2)), m=9, a=[1, 1, 3, 3, 7, 7], S=[0, 5]. -/
def code_477 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_477_ok : code_477.OK := by native_decide
/-- Code #477 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_477_qec :
    ∃ ψ, SS.IsAmplitudes code_477 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_477 code_477_ok (by decide) (by decide)

/-- Catalogue code #478: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 4], S=[0, 2]. -/
def code_478 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_478_ok : code_478.OK := by native_decide
/-- Code #478 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_478_qec :
    ∃ ψ, SS.IsAmplitudes code_478 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_478 code_478_ok (by decide) (by decide)

/-- Catalogue code #479: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 5], S=[0, 2]. -/
def code_479 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (-1 : ℚ), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_479_ok : code_479.OK := by native_decide
/-- Code #479 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_479_qec :
    ∃ ψ, SS.IsAmplitudes code_479 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_479 code_479_ok (by decide) (by decide)

/-- Catalogue code #480: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 6], S=[0, 2]. -/
def code_480 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]
theorem code_480_ok : code_480.OK := by native_decide
/-- Code #480 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_480_qec :
    ∃ ψ, SS.IsAmplitudes code_480 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_480 code_480_ok (by decide) (by decide)

/-- Catalogue code #481: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 6], S=[0, 7]. -/
def code_481 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_481_ok : code_481.OK := by native_decide
/-- Code #481 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_481_qec :
    ∃ ψ, SS.IsAmplitudes code_481 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_481 code_481_ok (by decide) (by decide)

/-- Catalogue code #482: ((6,2,2)), m=9, a=[1, 1, 3, 4, 4, 8], S=[0, 2]. -/
def code_482 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]
theorem code_482_ok : code_482.OK := by native_decide
/-- Code #482 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_482_qec :
    ∃ ψ, SS.IsAmplitudes code_482 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_482 code_482_ok (by decide) (by decide)

/-- Catalogue code #483: ((6,2,2)), m=9, a=[1, 1, 3, 4, 5, 5], S=[0, 7]. -/
def code_483 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]
theorem code_483_ok : code_483.OK := by native_decide
/-- Code #483 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_483_qec :
    ∃ ψ, SS.IsAmplitudes code_483 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_483 code_483_ok (by decide) (by decide)

/-- Catalogue code #484: ((6,2,2)), m=9, a=[1, 1, 3, 4, 5, 6], S=[0, 7]. -/
def code_484 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_484_ok : code_484.OK := by native_decide
/-- Code #484 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_484_qec :
    ∃ ψ, SS.IsAmplitudes code_484 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_484 code_484_ok (by decide) (by decide)

/-- Catalogue code #485: ((6,2,2)), m=9, a=[1, 1, 3, 4, 5, 8], S=[0, 2]. -/
def code_485 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_485_ok : code_485.OK := by native_decide
/-- Code #485 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_485_qec :
    ∃ ψ, SS.IsAmplitudes code_485 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_485 code_485_ok (by decide) (by decide)

/-- Catalogue code #486: ((6,2,2)), m=9, a=[1, 1, 3, 4, 5, 8], S=[0, 7]. -/
def code_486 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_486_ok : code_486.OK := by native_decide
/-- Code #486 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_486_qec :
    ∃ ψ, SS.IsAmplitudes code_486 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_486 code_486_ok (by decide) (by decide)

/-- Catalogue code #487: ((6,2,2)), m=9, a=[1, 1, 3, 4, 6, 6], S=[0, 2]. -/
def code_487 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]
theorem code_487_ok : code_487.OK := by native_decide
/-- Code #487 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_487_qec :
    ∃ ψ, SS.IsAmplitudes code_487 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_487 code_487_ok (by decide) (by decide)

/-- Catalogue code #488: ((6,2,2)), m=9, a=[1, 1, 3, 4, 6, 6], S=[0, 7]. -/
def code_488 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_488_ok : code_488.OK := by native_decide
/-- Code #488 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_488_qec :
    ∃ ψ, SS.IsAmplitudes code_488 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_488 code_488_ok (by decide) (by decide)

/-- Catalogue code #489: ((6,2,2)), m=9, a=[1, 1, 3, 4, 6, 8], S=[0, 2]. -/
def code_489 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_489_ok : code_489.OK := by native_decide
/-- Code #489 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_489_qec :
    ∃ ψ, SS.IsAmplitudes code_489 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_489 code_489_ok (by decide) (by decide)

/-- Catalogue code #490: ((6,2,2)), m=9, a=[1, 1, 3, 4, 6, 8], S=[0, 7]. -/
def code_490 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_490_ok : code_490.OK := by native_decide
/-- Code #490 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_490_qec :
    ∃ ψ, SS.IsAmplitudes code_490 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_490 code_490_ok (by decide) (by decide)

/-- Catalogue code #491: ((6,2,2)), m=9, a=[1, 1, 3, 4, 8, 8], S=[0, 2]. -/
def code_491 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (4 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]
theorem code_491_ok : code_491.OK := by native_decide
/-- Code #491 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_491_qec :
    ∃ ψ, SS.IsAmplitudes code_491 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_491 code_491_ok (by decide) (by decide)

/-- Catalogue code #492: ((6,2,2)), m=9, a=[1, 1, 3, 5, 5, 6], S=[0, 2]. -/
def code_492 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]
theorem code_492_ok : code_492.OK := by native_decide
/-- Code #492 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_492_qec :
    ∃ ψ, SS.IsAmplitudes code_492 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_492 code_492_ok (by decide) (by decide)

/-- Catalogue code #493: ((6,2,2)), m=9, a=[1, 1, 3, 5, 5, 6], S=[0, 7]. -/
def code_493 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]
theorem code_493_ok : code_493.OK := by native_decide
/-- Code #493 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_493_qec :
    ∃ ψ, SS.IsAmplitudes code_493 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_493 code_493_ok (by decide) (by decide)

/-- Catalogue code #494: ((6,2,2)), m=9, a=[1, 1, 3, 5, 5, 8], S=[0, 2]. -/
def code_494 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_494_ok : code_494.OK := by native_decide
/-- Code #494 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_494_qec :
    ∃ ψ, SS.IsAmplitudes code_494 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_494 code_494_ok (by decide) (by decide)

/-- Catalogue code #495: ((6,2,2)), m=9, a=[1, 1, 3, 5, 5, 8], S=[0, 7]. -/
def code_495 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]
theorem code_495_ok : code_495.OK := by native_decide
/-- Code #495 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_495_qec :
    ∃ ψ, SS.IsAmplitudes code_495 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_495 code_495_ok (by decide) (by decide)

/-- Catalogue code #496: ((6,2,2)), m=9, a=[1, 1, 3, 5, 6, 6], S=[0, 2]. -/
def code_496 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]
theorem code_496_ok : code_496.OK := by native_decide
/-- Code #496 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_496_qec :
    ∃ ψ, SS.IsAmplitudes code_496 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_496 code_496_ok (by decide) (by decide)

/-- Catalogue code #497: ((6,2,2)), m=9, a=[1, 1, 3, 5, 6, 8], S=[0, 2]. -/
def code_497 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_497_ok : code_497.OK := by native_decide
/-- Code #497 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_497_qec :
    ∃ ψ, SS.IsAmplitudes code_497 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_497 code_497_ok (by decide) (by decide)

/-- Catalogue code #498: ((6,2,2)), m=9, a=[1, 1, 3, 6, 6, 7], S=[0, 4]. -/
def code_498 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3)]
theorem code_498_ok : code_498.OK := by native_decide
/-- Code #498 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_498_qec :
    ∃ ψ, SS.IsAmplitudes code_498 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_498 code_498_ok (by decide) (by decide)

/-- Catalogue code #499: ((6,2,2)), m=9, a=[1, 1, 3, 6, 6, 8], S=[0, 2]. -/
def code_499 : ExampleData 6 9 2 where
  a := ![(1 : ZMod 9), (1 : ZMod 9), (3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]
theorem code_499_ok : code_499.OK := by native_decide
/-- Code #499 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_499_qec :
    ∃ ψ, SS.IsAmplitudes code_499 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_499 code_499_ok (by decide) (by decide)

end Catalogue.Chunk000
