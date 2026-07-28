import SS

namespace Catalogue.Chunk028

open SS SS.Verify

set_option maxHeartbeats 4000000

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
theorem code_14000_b3 : ∀ k, IsNormalizedProb (code_14000.supp k) (code_14000.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14000], ?_⟩ <;>
    norm_num [code_14000, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14000_b4 : ZTypeKL' 3 code_14000.supp code_14000.prob code_14000.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14000, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14000_ok : code_14000.OK := ⟨by decide, by decide, code_14000_b3, code_14000_b4⟩
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
theorem code_14001_b3 : ∀ k, IsNormalizedProb (code_14001.supp k) (code_14001.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14001], ?_⟩ <;>
    norm_num [code_14001, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14001_b4 : ZTypeKL' 3 code_14001.supp code_14001.prob code_14001.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14001, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14001_ok : code_14001.OK := ⟨by decide, by decide, code_14001_b3, code_14001_b4⟩
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
theorem code_14002_b3 : ∀ k, IsNormalizedProb (code_14002.supp k) (code_14002.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14002], ?_⟩ <;>
    norm_num [code_14002, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14002_b4 : ZTypeKL' 3 code_14002.supp code_14002.prob code_14002.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14002, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14002_ok : code_14002.OK := ⟨by decide, by decide, code_14002_b3, code_14002_b4⟩
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
theorem code_14003_b3 : ∀ k, IsNormalizedProb (code_14003.supp k) (code_14003.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14003], ?_⟩ <;>
    norm_num [code_14003, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14003_b4 : ZTypeKL' 3 code_14003.supp code_14003.prob code_14003.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14003, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14003_ok : code_14003.OK := ⟨by decide, by decide, code_14003_b3, code_14003_b4⟩
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
theorem code_14004_b3 : ∀ k, IsNormalizedProb (code_14004.supp k) (code_14004.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14004], ?_⟩ <;>
    norm_num [code_14004, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14004_b4 : ZTypeKL' 3 code_14004.supp code_14004.prob code_14004.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14004, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14004_ok : code_14004.OK := ⟨by decide, by decide, code_14004_b3, code_14004_b4⟩
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
theorem code_14005_b3 : ∀ k, IsNormalizedProb (code_14005.supp k) (code_14005.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14005], ?_⟩ <;>
    norm_num [code_14005, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14005_b4 : ZTypeKL' 3 code_14005.supp code_14005.prob code_14005.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14005, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14005_ok : code_14005.OK := ⟨by decide, by decide, code_14005_b3, code_14005_b4⟩
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
theorem code_14006_b3 : ∀ k, IsNormalizedProb (code_14006.supp k) (code_14006.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14006], ?_⟩ <;>
    norm_num [code_14006, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14006_b4 : ZTypeKL' 3 code_14006.supp code_14006.prob code_14006.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14006, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14006_ok : code_14006.OK := ⟨by decide, by decide, code_14006_b3, code_14006_b4⟩
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
theorem code_14007_b3 : ∀ k, IsNormalizedProb (code_14007.supp k) (code_14007.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14007], ?_⟩ <;>
    norm_num [code_14007, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14007_b4 : ZTypeKL' 3 code_14007.supp code_14007.prob code_14007.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14007, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14007_ok : code_14007.OK := ⟨by decide, by decide, code_14007_b3, code_14007_b4⟩
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
theorem code_14008_b3 : ∀ k, IsNormalizedProb (code_14008.supp k) (code_14008.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14008], ?_⟩ <;>
    norm_num [code_14008, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14008_b4 : ZTypeKL' 3 code_14008.supp code_14008.prob code_14008.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14008, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14008_ok : code_14008.OK := ⟨by decide, by decide, code_14008_b3, code_14008_b4⟩
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
theorem code_14009_b3 : ∀ k, IsNormalizedProb (code_14009.supp k) (code_14009.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14009], ?_⟩ <;>
    norm_num [code_14009, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14009_b4 : ZTypeKL' 3 code_14009.supp code_14009.prob code_14009.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14009, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14009_ok : code_14009.OK := ⟨by decide, by decide, code_14009_b3, code_14009_b4⟩
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
theorem code_14010_b3 : ∀ k, IsNormalizedProb (code_14010.supp k) (code_14010.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14010], ?_⟩ <;>
    norm_num [code_14010, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14010_b4 : ZTypeKL' 3 code_14010.supp code_14010.prob code_14010.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14010, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14010_ok : code_14010.OK := ⟨by decide, by decide, code_14010_b3, code_14010_b4⟩
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
theorem code_14011_b3 : ∀ k, IsNormalizedProb (code_14011.supp k) (code_14011.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14011], ?_⟩ <;>
    norm_num [code_14011, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14011_b4 : ZTypeKL' 3 code_14011.supp code_14011.prob code_14011.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14011, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14011_ok : code_14011.OK := ⟨by decide, by decide, code_14011_b3, code_14011_b4⟩
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
theorem code_14012_b3 : ∀ k, IsNormalizedProb (code_14012.supp k) (code_14012.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14012], ?_⟩ <;>
    norm_num [code_14012, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14012_b4 : ZTypeKL' 3 code_14012.supp code_14012.prob code_14012.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14012, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14012_ok : code_14012.OK := ⟨by decide, by decide, code_14012_b3, code_14012_b4⟩
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
theorem code_14013_b3 : ∀ k, IsNormalizedProb (code_14013.supp k) (code_14013.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14013], ?_⟩ <;>
    norm_num [code_14013, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14013_b4 : ZTypeKL' 3 code_14013.supp code_14013.prob code_14013.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14013, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14013_ok : code_14013.OK := ⟨by decide, by decide, code_14013_b3, code_14013_b4⟩
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
theorem code_14014_b3 : ∀ k, IsNormalizedProb (code_14014.supp k) (code_14014.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14014], ?_⟩ <;>
    norm_num [code_14014, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14014_b4 : ZTypeKL' 3 code_14014.supp code_14014.prob code_14014.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14014, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14014_ok : code_14014.OK := ⟨by decide, by decide, code_14014_b3, code_14014_b4⟩
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
theorem code_14015_b3 : ∀ k, IsNormalizedProb (code_14015.supp k) (code_14015.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14015], ?_⟩ <;>
    norm_num [code_14015, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14015_b4 : ZTypeKL' 3 code_14015.supp code_14015.prob code_14015.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14015, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14015_ok : code_14015.OK := ⟨by decide, by decide, code_14015_b3, code_14015_b4⟩
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
theorem code_14016_b3 : ∀ k, IsNormalizedProb (code_14016.supp k) (code_14016.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14016], ?_⟩ <;>
    norm_num [code_14016, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14016_b4 : ZTypeKL' 3 code_14016.supp code_14016.prob code_14016.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14016, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14016_ok : code_14016.OK := ⟨by decide, by decide, code_14016_b3, code_14016_b4⟩
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
theorem code_14017_b3 : ∀ k, IsNormalizedProb (code_14017.supp k) (code_14017.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14017], ?_⟩ <;>
    norm_num [code_14017, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14017_b4 : ZTypeKL' 3 code_14017.supp code_14017.prob code_14017.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14017, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14017_ok : code_14017.OK := ⟨by decide, by decide, code_14017_b3, code_14017_b4⟩
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
theorem code_14018_b3 : ∀ k, IsNormalizedProb (code_14018.supp k) (code_14018.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14018], ?_⟩ <;>
    norm_num [code_14018, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14018_b4 : ZTypeKL' 3 code_14018.supp code_14018.prob code_14018.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14018, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14018_ok : code_14018.OK := ⟨by decide, by decide, code_14018_b3, code_14018_b4⟩
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
theorem code_14019_b3 : ∀ k, IsNormalizedProb (code_14019.supp k) (code_14019.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14019], ?_⟩ <;>
    norm_num [code_14019, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14019_b4 : ZTypeKL' 3 code_14019.supp code_14019.prob code_14019.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14019, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14019_ok : code_14019.OK := ⟨by decide, by decide, code_14019_b3, code_14019_b4⟩
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
theorem code_14020_b3 : ∀ k, IsNormalizedProb (code_14020.supp k) (code_14020.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14020], ?_⟩ <;>
    norm_num [code_14020, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14020_b4 : ZTypeKL' 3 code_14020.supp code_14020.prob code_14020.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14020, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14020_ok : code_14020.OK := ⟨by decide, by decide, code_14020_b3, code_14020_b4⟩
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
theorem code_14021_b3 : ∀ k, IsNormalizedProb (code_14021.supp k) (code_14021.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14021], ?_⟩ <;>
    norm_num [code_14021, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14021_b4 : ZTypeKL' 3 code_14021.supp code_14021.prob code_14021.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14021, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14021_ok : code_14021.OK := ⟨by decide, by decide, code_14021_b3, code_14021_b4⟩
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
theorem code_14022_b3 : ∀ k, IsNormalizedProb (code_14022.supp k) (code_14022.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14022], ?_⟩ <;>
    norm_num [code_14022, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14022_b4 : ZTypeKL' 3 code_14022.supp code_14022.prob code_14022.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14022, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14022_ok : code_14022.OK := ⟨by decide, by decide, code_14022_b3, code_14022_b4⟩
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
theorem code_14023_b3 : ∀ k, IsNormalizedProb (code_14023.supp k) (code_14023.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14023], ?_⟩ <;>
    norm_num [code_14023, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14023_b4 : ZTypeKL' 3 code_14023.supp code_14023.prob code_14023.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14023, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14023_ok : code_14023.OK := ⟨by decide, by decide, code_14023_b3, code_14023_b4⟩
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
theorem code_14024_b3 : ∀ k, IsNormalizedProb (code_14024.supp k) (code_14024.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14024], ?_⟩ <;>
    norm_num [code_14024, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14024_b4 : ZTypeKL' 3 code_14024.supp code_14024.prob code_14024.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14024, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14024_ok : code_14024.OK := ⟨by decide, by decide, code_14024_b3, code_14024_b4⟩
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
theorem code_14025_b3 : ∀ k, IsNormalizedProb (code_14025.supp k) (code_14025.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14025], ?_⟩ <;>
    norm_num [code_14025, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14025_b4 : ZTypeKL' 3 code_14025.supp code_14025.prob code_14025.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14025, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14025_ok : code_14025.OK := ⟨by decide, by decide, code_14025_b3, code_14025_b4⟩
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
theorem code_14026_b3 : ∀ k, IsNormalizedProb (code_14026.supp k) (code_14026.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14026], ?_⟩ <;>
    norm_num [code_14026, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14026_b4 : ZTypeKL' 3 code_14026.supp code_14026.prob code_14026.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14026, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14026_ok : code_14026.OK := ⟨by decide, by decide, code_14026_b3, code_14026_b4⟩
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
theorem code_14027_b3 : ∀ k, IsNormalizedProb (code_14027.supp k) (code_14027.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14027], ?_⟩ <;>
    norm_num [code_14027, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14027_b4 : ZTypeKL' 3 code_14027.supp code_14027.prob code_14027.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14027, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14027_ok : code_14027.OK := ⟨by decide, by decide, code_14027_b3, code_14027_b4⟩
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
theorem code_14028_b3 : ∀ k, IsNormalizedProb (code_14028.supp k) (code_14028.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14028], ?_⟩ <;>
    norm_num [code_14028, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14028_b4 : ZTypeKL' 3 code_14028.supp code_14028.prob code_14028.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14028, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14028_ok : code_14028.OK := ⟨by decide, by decide, code_14028_b3, code_14028_b4⟩
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
theorem code_14029_b3 : ∀ k, IsNormalizedProb (code_14029.supp k) (code_14029.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14029], ?_⟩ <;>
    norm_num [code_14029, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14029_b4 : ZTypeKL' 3 code_14029.supp code_14029.prob code_14029.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14029, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14029_ok : code_14029.OK := ⟨by decide, by decide, code_14029_b3, code_14029_b4⟩
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
theorem code_14030_b3 : ∀ k, IsNormalizedProb (code_14030.supp k) (code_14030.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14030], ?_⟩ <;>
    norm_num [code_14030, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14030_b4 : ZTypeKL' 3 code_14030.supp code_14030.prob code_14030.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14030, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14030_ok : code_14030.OK := ⟨by decide, by decide, code_14030_b3, code_14030_b4⟩
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
theorem code_14031_b3 : ∀ k, IsNormalizedProb (code_14031.supp k) (code_14031.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14031], ?_⟩ <;>
    norm_num [code_14031, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14031_b4 : ZTypeKL' 3 code_14031.supp code_14031.prob code_14031.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14031, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14031_ok : code_14031.OK := ⟨by decide, by decide, code_14031_b3, code_14031_b4⟩
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
theorem code_14032_b3 : ∀ k, IsNormalizedProb (code_14032.supp k) (code_14032.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14032], ?_⟩ <;>
    norm_num [code_14032, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14032_b4 : ZTypeKL' 3 code_14032.supp code_14032.prob code_14032.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14032, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14032_ok : code_14032.OK := ⟨by decide, by decide, code_14032_b3, code_14032_b4⟩
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
theorem code_14033_b3 : ∀ k, IsNormalizedProb (code_14033.supp k) (code_14033.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14033], ?_⟩ <;>
    norm_num [code_14033, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14033_b4 : ZTypeKL' 3 code_14033.supp code_14033.prob code_14033.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14033, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14033_ok : code_14033.OK := ⟨by decide, by decide, code_14033_b3, code_14033_b4⟩
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
theorem code_14034_b3 : ∀ k, IsNormalizedProb (code_14034.supp k) (code_14034.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14034], ?_⟩ <;>
    norm_num [code_14034, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14034_b4 : ZTypeKL' 3 code_14034.supp code_14034.prob code_14034.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14034, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14034_ok : code_14034.OK := ⟨by decide, by decide, code_14034_b3, code_14034_b4⟩
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
theorem code_14035_b3 : ∀ k, IsNormalizedProb (code_14035.supp k) (code_14035.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14035], ?_⟩ <;>
    norm_num [code_14035, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14035_b4 : ZTypeKL' 3 code_14035.supp code_14035.prob code_14035.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14035, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14035_ok : code_14035.OK := ⟨by decide, by decide, code_14035_b3, code_14035_b4⟩
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
theorem code_14036_b3 : ∀ k, IsNormalizedProb (code_14036.supp k) (code_14036.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14036], ?_⟩ <;>
    norm_num [code_14036, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14036_b4 : ZTypeKL' 3 code_14036.supp code_14036.prob code_14036.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14036, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14036_ok : code_14036.OK := ⟨by decide, by decide, code_14036_b3, code_14036_b4⟩
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
theorem code_14037_b3 : ∀ k, IsNormalizedProb (code_14037.supp k) (code_14037.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14037], ?_⟩ <;>
    norm_num [code_14037, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14037_b4 : ZTypeKL' 3 code_14037.supp code_14037.prob code_14037.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14037, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14037_ok : code_14037.OK := ⟨by decide, by decide, code_14037_b3, code_14037_b4⟩
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
theorem code_14038_b3 : ∀ k, IsNormalizedProb (code_14038.supp k) (code_14038.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14038], ?_⟩ <;>
    norm_num [code_14038, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14038_b4 : ZTypeKL' 3 code_14038.supp code_14038.prob code_14038.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14038, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14038_ok : code_14038.OK := ⟨by decide, by decide, code_14038_b3, code_14038_b4⟩
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
theorem code_14039_b3 : ∀ k, IsNormalizedProb (code_14039.supp k) (code_14039.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14039], ?_⟩ <;>
    norm_num [code_14039, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14039_b4 : ZTypeKL' 3 code_14039.supp code_14039.prob code_14039.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14039, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14039_ok : code_14039.OK := ⟨by decide, by decide, code_14039_b3, code_14039_b4⟩
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
theorem code_14040_b3 : ∀ k, IsNormalizedProb (code_14040.supp k) (code_14040.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14040], ?_⟩ <;>
    norm_num [code_14040, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14040_b4 : ZTypeKL' 3 code_14040.supp code_14040.prob code_14040.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14040, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14040_ok : code_14040.OK := ⟨by decide, by decide, code_14040_b3, code_14040_b4⟩
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
theorem code_14041_b3 : ∀ k, IsNormalizedProb (code_14041.supp k) (code_14041.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14041], ?_⟩ <;>
    norm_num [code_14041, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14041_b4 : ZTypeKL' 3 code_14041.supp code_14041.prob code_14041.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14041, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14041_ok : code_14041.OK := ⟨by decide, by decide, code_14041_b3, code_14041_b4⟩
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
theorem code_14042_b3 : ∀ k, IsNormalizedProb (code_14042.supp k) (code_14042.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14042], ?_⟩ <;>
    norm_num [code_14042, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14042_b4 : ZTypeKL' 3 code_14042.supp code_14042.prob code_14042.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14042, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14042_ok : code_14042.OK := ⟨by decide, by decide, code_14042_b3, code_14042_b4⟩
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
theorem code_14043_b3 : ∀ k, IsNormalizedProb (code_14043.supp k) (code_14043.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14043], ?_⟩ <;>
    norm_num [code_14043, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14043_b4 : ZTypeKL' 3 code_14043.supp code_14043.prob code_14043.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14043, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14043_ok : code_14043.OK := ⟨by decide, by decide, code_14043_b3, code_14043_b4⟩
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
theorem code_14044_b3 : ∀ k, IsNormalizedProb (code_14044.supp k) (code_14044.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14044], ?_⟩ <;>
    norm_num [code_14044, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14044_b4 : ZTypeKL' 3 code_14044.supp code_14044.prob code_14044.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14044, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14044_ok : code_14044.OK := ⟨by decide, by decide, code_14044_b3, code_14044_b4⟩
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
theorem code_14045_b3 : ∀ k, IsNormalizedProb (code_14045.supp k) (code_14045.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14045], ?_⟩ <;>
    norm_num [code_14045, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14045_b4 : ZTypeKL' 3 code_14045.supp code_14045.prob code_14045.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14045, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14045_ok : code_14045.OK := ⟨by decide, by decide, code_14045_b3, code_14045_b4⟩
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
theorem code_14046_b3 : ∀ k, IsNormalizedProb (code_14046.supp k) (code_14046.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14046], ?_⟩ <;>
    norm_num [code_14046, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14046_b4 : ZTypeKL' 3 code_14046.supp code_14046.prob code_14046.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14046, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14046_ok : code_14046.OK := ⟨by decide, by decide, code_14046_b3, code_14046_b4⟩
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
theorem code_14047_b3 : ∀ k, IsNormalizedProb (code_14047.supp k) (code_14047.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14047], ?_⟩ <;>
    norm_num [code_14047, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14047_b4 : ZTypeKL' 3 code_14047.supp code_14047.prob code_14047.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14047, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14047_ok : code_14047.OK := ⟨by decide, by decide, code_14047_b3, code_14047_b4⟩
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
theorem code_14048_b3 : ∀ k, IsNormalizedProb (code_14048.supp k) (code_14048.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14048], ?_⟩ <;>
    norm_num [code_14048, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14048_b4 : ZTypeKL' 3 code_14048.supp code_14048.prob code_14048.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14048, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14048_ok : code_14048.OK := ⟨by decide, by decide, code_14048_b3, code_14048_b4⟩
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
theorem code_14049_b3 : ∀ k, IsNormalizedProb (code_14049.supp k) (code_14049.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14049], ?_⟩ <;>
    norm_num [code_14049, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14049_b4 : ZTypeKL' 3 code_14049.supp code_14049.prob code_14049.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14049, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14049_ok : code_14049.OK := ⟨by decide, by decide, code_14049_b3, code_14049_b4⟩
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
theorem code_14050_b3 : ∀ k, IsNormalizedProb (code_14050.supp k) (code_14050.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14050], ?_⟩ <;>
    norm_num [code_14050, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14050_b4 : ZTypeKL' 3 code_14050.supp code_14050.prob code_14050.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14050, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14050_ok : code_14050.OK := ⟨by decide, by decide, code_14050_b3, code_14050_b4⟩
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
theorem code_14051_b3 : ∀ k, IsNormalizedProb (code_14051.supp k) (code_14051.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14051], ?_⟩ <;>
    norm_num [code_14051, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14051_b4 : ZTypeKL' 3 code_14051.supp code_14051.prob code_14051.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14051, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14051_ok : code_14051.OK := ⟨by decide, by decide, code_14051_b3, code_14051_b4⟩
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
theorem code_14052_b3 : ∀ k, IsNormalizedProb (code_14052.supp k) (code_14052.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14052], ?_⟩ <;>
    norm_num [code_14052, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14052_b4 : ZTypeKL' 3 code_14052.supp code_14052.prob code_14052.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14052, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14052_ok : code_14052.OK := ⟨by decide, by decide, code_14052_b3, code_14052_b4⟩
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
theorem code_14053_b3 : ∀ k, IsNormalizedProb (code_14053.supp k) (code_14053.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14053], ?_⟩ <;>
    norm_num [code_14053, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14053_b4 : ZTypeKL' 3 code_14053.supp code_14053.prob code_14053.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14053, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14053_ok : code_14053.OK := ⟨by decide, by decide, code_14053_b3, code_14053_b4⟩
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
theorem code_14054_b3 : ∀ k, IsNormalizedProb (code_14054.supp k) (code_14054.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14054], ?_⟩ <;>
    norm_num [code_14054, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14054_b4 : ZTypeKL' 3 code_14054.supp code_14054.prob code_14054.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14054, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14054_ok : code_14054.OK := ⟨by decide, by decide, code_14054_b3, code_14054_b4⟩
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
theorem code_14055_b3 : ∀ k, IsNormalizedProb (code_14055.supp k) (code_14055.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14055], ?_⟩ <;>
    norm_num [code_14055, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14055_b4 : ZTypeKL' 3 code_14055.supp code_14055.prob code_14055.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14055, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14055_ok : code_14055.OK := ⟨by decide, by decide, code_14055_b3, code_14055_b4⟩
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
theorem code_14056_b3 : ∀ k, IsNormalizedProb (code_14056.supp k) (code_14056.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14056], ?_⟩ <;>
    norm_num [code_14056, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14056_b4 : ZTypeKL' 3 code_14056.supp code_14056.prob code_14056.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14056, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14056_ok : code_14056.OK := ⟨by decide, by decide, code_14056_b3, code_14056_b4⟩
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
theorem code_14057_b3 : ∀ k, IsNormalizedProb (code_14057.supp k) (code_14057.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14057], ?_⟩ <;>
    norm_num [code_14057, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14057_b4 : ZTypeKL' 3 code_14057.supp code_14057.prob code_14057.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14057, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14057_ok : code_14057.OK := ⟨by decide, by decide, code_14057_b3, code_14057_b4⟩
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
theorem code_14058_b3 : ∀ k, IsNormalizedProb (code_14058.supp k) (code_14058.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14058], ?_⟩ <;>
    norm_num [code_14058, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14058_b4 : ZTypeKL' 3 code_14058.supp code_14058.prob code_14058.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14058, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14058_ok : code_14058.OK := ⟨by decide, by decide, code_14058_b3, code_14058_b4⟩
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
theorem code_14059_b3 : ∀ k, IsNormalizedProb (code_14059.supp k) (code_14059.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14059], ?_⟩ <;>
    norm_num [code_14059, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14059_b4 : ZTypeKL' 3 code_14059.supp code_14059.prob code_14059.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14059, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14059_ok : code_14059.OK := ⟨by decide, by decide, code_14059_b3, code_14059_b4⟩
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
theorem code_14060_b3 : ∀ k, IsNormalizedProb (code_14060.supp k) (code_14060.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14060], ?_⟩ <;>
    norm_num [code_14060, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14060_b4 : ZTypeKL' 3 code_14060.supp code_14060.prob code_14060.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14060, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14060_ok : code_14060.OK := ⟨by decide, by decide, code_14060_b3, code_14060_b4⟩
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
theorem code_14061_b3 : ∀ k, IsNormalizedProb (code_14061.supp k) (code_14061.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14061], ?_⟩ <;>
    norm_num [code_14061, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14061_b4 : ZTypeKL' 3 code_14061.supp code_14061.prob code_14061.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14061, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14061_ok : code_14061.OK := ⟨by decide, by decide, code_14061_b3, code_14061_b4⟩
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
theorem code_14062_b3 : ∀ k, IsNormalizedProb (code_14062.supp k) (code_14062.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14062], ?_⟩ <;>
    norm_num [code_14062, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14062_b4 : ZTypeKL' 3 code_14062.supp code_14062.prob code_14062.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14062, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14062_ok : code_14062.OK := ⟨by decide, by decide, code_14062_b3, code_14062_b4⟩
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
theorem code_14063_b3 : ∀ k, IsNormalizedProb (code_14063.supp k) (code_14063.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14063], ?_⟩ <;>
    norm_num [code_14063, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14063_b4 : ZTypeKL' 3 code_14063.supp code_14063.prob code_14063.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14063, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14063_ok : code_14063.OK := ⟨by decide, by decide, code_14063_b3, code_14063_b4⟩
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
theorem code_14064_b3 : ∀ k, IsNormalizedProb (code_14064.supp k) (code_14064.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14064], ?_⟩ <;>
    norm_num [code_14064, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14064_b4 : ZTypeKL' 3 code_14064.supp code_14064.prob code_14064.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14064, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14064_ok : code_14064.OK := ⟨by decide, by decide, code_14064_b3, code_14064_b4⟩
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
theorem code_14065_b3 : ∀ k, IsNormalizedProb (code_14065.supp k) (code_14065.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14065], ?_⟩ <;>
    norm_num [code_14065, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14065_b4 : ZTypeKL' 3 code_14065.supp code_14065.prob code_14065.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14065, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14065_ok : code_14065.OK := ⟨by decide, by decide, code_14065_b3, code_14065_b4⟩
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
theorem code_14066_b3 : ∀ k, IsNormalizedProb (code_14066.supp k) (code_14066.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14066], ?_⟩ <;>
    norm_num [code_14066, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14066_b4 : ZTypeKL' 3 code_14066.supp code_14066.prob code_14066.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14066, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14066_ok : code_14066.OK := ⟨by decide, by decide, code_14066_b3, code_14066_b4⟩
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
theorem code_14067_b3 : ∀ k, IsNormalizedProb (code_14067.supp k) (code_14067.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14067], ?_⟩ <;>
    norm_num [code_14067, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14067_b4 : ZTypeKL' 3 code_14067.supp code_14067.prob code_14067.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14067, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14067_ok : code_14067.OK := ⟨by decide, by decide, code_14067_b3, code_14067_b4⟩
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
theorem code_14068_b3 : ∀ k, IsNormalizedProb (code_14068.supp k) (code_14068.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14068], ?_⟩ <;>
    norm_num [code_14068, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14068_b4 : ZTypeKL' 3 code_14068.supp code_14068.prob code_14068.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14068, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14068_ok : code_14068.OK := ⟨by decide, by decide, code_14068_b3, code_14068_b4⟩
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
theorem code_14069_b3 : ∀ k, IsNormalizedProb (code_14069.supp k) (code_14069.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14069], ?_⟩ <;>
    norm_num [code_14069, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14069_b4 : ZTypeKL' 3 code_14069.supp code_14069.prob code_14069.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14069, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14069_ok : code_14069.OK := ⟨by decide, by decide, code_14069_b3, code_14069_b4⟩
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
theorem code_14070_b3 : ∀ k, IsNormalizedProb (code_14070.supp k) (code_14070.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14070], ?_⟩ <;>
    norm_num [code_14070, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14070_b4 : ZTypeKL' 3 code_14070.supp code_14070.prob code_14070.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14070, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14070_ok : code_14070.OK := ⟨by decide, by decide, code_14070_b3, code_14070_b4⟩
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
theorem code_14071_b3 : ∀ k, IsNormalizedProb (code_14071.supp k) (code_14071.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14071], ?_⟩ <;>
    norm_num [code_14071, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14071_b4 : ZTypeKL' 3 code_14071.supp code_14071.prob code_14071.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14071, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14071_ok : code_14071.OK := ⟨by decide, by decide, code_14071_b3, code_14071_b4⟩
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
theorem code_14072_b3 : ∀ k, IsNormalizedProb (code_14072.supp k) (code_14072.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14072], ?_⟩ <;>
    norm_num [code_14072, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14072_b4 : ZTypeKL' 3 code_14072.supp code_14072.prob code_14072.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14072, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14072_ok : code_14072.OK := ⟨by decide, by decide, code_14072_b3, code_14072_b4⟩
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
theorem code_14073_b3 : ∀ k, IsNormalizedProb (code_14073.supp k) (code_14073.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14073], ?_⟩ <;>
    norm_num [code_14073, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14073_b4 : ZTypeKL' 3 code_14073.supp code_14073.prob code_14073.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14073, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14073_ok : code_14073.OK := ⟨by decide, by decide, code_14073_b3, code_14073_b4⟩
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
theorem code_14074_b3 : ∀ k, IsNormalizedProb (code_14074.supp k) (code_14074.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14074], ?_⟩ <;>
    norm_num [code_14074, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14074_b4 : ZTypeKL' 3 code_14074.supp code_14074.prob code_14074.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14074, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14074_ok : code_14074.OK := ⟨by decide, by decide, code_14074_b3, code_14074_b4⟩
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
theorem code_14075_b3 : ∀ k, IsNormalizedProb (code_14075.supp k) (code_14075.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14075], ?_⟩ <;>
    norm_num [code_14075, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14075_b4 : ZTypeKL' 3 code_14075.supp code_14075.prob code_14075.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14075, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14075_ok : code_14075.OK := ⟨by decide, by decide, code_14075_b3, code_14075_b4⟩
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
theorem code_14076_b3 : ∀ k, IsNormalizedProb (code_14076.supp k) (code_14076.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14076], ?_⟩ <;>
    norm_num [code_14076, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14076_b4 : ZTypeKL' 3 code_14076.supp code_14076.prob code_14076.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14076, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14076_ok : code_14076.OK := ⟨by decide, by decide, code_14076_b3, code_14076_b4⟩
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
theorem code_14077_b3 : ∀ k, IsNormalizedProb (code_14077.supp k) (code_14077.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14077], ?_⟩ <;>
    norm_num [code_14077, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14077_b4 : ZTypeKL' 4 code_14077.supp code_14077.prob code_14077.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14077, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14077_ok : code_14077.OK := ⟨by decide, by decide, code_14077_b3, code_14077_b4⟩
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
theorem code_14078_b3 : ∀ k, IsNormalizedProb (code_14078.supp k) (code_14078.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14078], ?_⟩ <;>
    norm_num [code_14078, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14078_b4 : ZTypeKL' 4 code_14078.supp code_14078.prob code_14078.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14078, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14078_ok : code_14078.OK := ⟨by decide, by decide, code_14078_b3, code_14078_b4⟩
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
theorem code_14079_b3 : ∀ k, IsNormalizedProb (code_14079.supp k) (code_14079.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14079], ?_⟩ <;>
    norm_num [code_14079, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14079_b4 : ZTypeKL' 4 code_14079.supp code_14079.prob code_14079.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14079, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14079_ok : code_14079.OK := ⟨by decide, by decide, code_14079_b3, code_14079_b4⟩
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
theorem code_14080_b3 : ∀ k, IsNormalizedProb (code_14080.supp k) (code_14080.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14080], ?_⟩ <;>
    norm_num [code_14080, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14080_b4 : ZTypeKL' 4 code_14080.supp code_14080.prob code_14080.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14080, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14080_ok : code_14080.OK := ⟨by decide, by decide, code_14080_b3, code_14080_b4⟩
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
theorem code_14081_b3 : ∀ k, IsNormalizedProb (code_14081.supp k) (code_14081.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14081], ?_⟩ <;>
    norm_num [code_14081, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14081_b4 : ZTypeKL' 4 code_14081.supp code_14081.prob code_14081.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14081, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14081_ok : code_14081.OK := ⟨by decide, by decide, code_14081_b3, code_14081_b4⟩
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
theorem code_14082_b3 : ∀ k, IsNormalizedProb (code_14082.supp k) (code_14082.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14082], ?_⟩ <;>
    norm_num [code_14082, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14082_b4 : ZTypeKL' 4 code_14082.supp code_14082.prob code_14082.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14082, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14082_ok : code_14082.OK := ⟨by decide, by decide, code_14082_b3, code_14082_b4⟩
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
theorem code_14083_b3 : ∀ k, IsNormalizedProb (code_14083.supp k) (code_14083.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14083], ?_⟩ <;>
    norm_num [code_14083, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14083_b4 : ZTypeKL' 4 code_14083.supp code_14083.prob code_14083.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14083, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14083_ok : code_14083.OK := ⟨by decide, by decide, code_14083_b3, code_14083_b4⟩
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
theorem code_14084_b3 : ∀ k, IsNormalizedProb (code_14084.supp k) (code_14084.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14084], ?_⟩ <;>
    norm_num [code_14084, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14084_b4 : ZTypeKL' 4 code_14084.supp code_14084.prob code_14084.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14084, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14084_ok : code_14084.OK := ⟨by decide, by decide, code_14084_b3, code_14084_b4⟩
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
theorem code_14085_b3 : ∀ k, IsNormalizedProb (code_14085.supp k) (code_14085.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14085], ?_⟩ <;>
    norm_num [code_14085, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14085_b4 : ZTypeKL' 4 code_14085.supp code_14085.prob code_14085.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14085, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14085_ok : code_14085.OK := ⟨by decide, by decide, code_14085_b3, code_14085_b4⟩
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
theorem code_14086_b3 : ∀ k, IsNormalizedProb (code_14086.supp k) (code_14086.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14086], ?_⟩ <;>
    norm_num [code_14086, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14086_b4 : ZTypeKL' 4 code_14086.supp code_14086.prob code_14086.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14086, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14086_ok : code_14086.OK := ⟨by decide, by decide, code_14086_b3, code_14086_b4⟩
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
theorem code_14087_b3 : ∀ k, IsNormalizedProb (code_14087.supp k) (code_14087.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14087], ?_⟩ <;>
    norm_num [code_14087, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14087_b4 : ZTypeKL' 4 code_14087.supp code_14087.prob code_14087.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14087, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14087_ok : code_14087.OK := ⟨by decide, by decide, code_14087_b3, code_14087_b4⟩
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
theorem code_14088_b3 : ∀ k, IsNormalizedProb (code_14088.supp k) (code_14088.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14088], ?_⟩ <;>
    norm_num [code_14088, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14088_b4 : ZTypeKL' 4 code_14088.supp code_14088.prob code_14088.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14088, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14088_ok : code_14088.OK := ⟨by decide, by decide, code_14088_b3, code_14088_b4⟩
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
theorem code_14089_b3 : ∀ k, IsNormalizedProb (code_14089.supp k) (code_14089.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14089], ?_⟩ <;>
    norm_num [code_14089, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14089_b4 : ZTypeKL' 4 code_14089.supp code_14089.prob code_14089.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14089, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14089_ok : code_14089.OK := ⟨by decide, by decide, code_14089_b3, code_14089_b4⟩
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
theorem code_14090_b3 : ∀ k, IsNormalizedProb (code_14090.supp k) (code_14090.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14090], ?_⟩ <;>
    norm_num [code_14090, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14090_b4 : ZTypeKL' 4 code_14090.supp code_14090.prob code_14090.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14090, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14090_ok : code_14090.OK := ⟨by decide, by decide, code_14090_b3, code_14090_b4⟩
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
theorem code_14091_b3 : ∀ k, IsNormalizedProb (code_14091.supp k) (code_14091.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14091], ?_⟩ <;>
    norm_num [code_14091, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14091_b4 : ZTypeKL' 4 code_14091.supp code_14091.prob code_14091.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14091, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14091_ok : code_14091.OK := ⟨by decide, by decide, code_14091_b3, code_14091_b4⟩
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
theorem code_14092_b3 : ∀ k, IsNormalizedProb (code_14092.supp k) (code_14092.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14092], ?_⟩ <;>
    norm_num [code_14092, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14092_b4 : ZTypeKL' 4 code_14092.supp code_14092.prob code_14092.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14092, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14092_ok : code_14092.OK := ⟨by decide, by decide, code_14092_b3, code_14092_b4⟩
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
theorem code_14093_b3 : ∀ k, IsNormalizedProb (code_14093.supp k) (code_14093.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14093], ?_⟩ <;>
    norm_num [code_14093, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14093_b4 : ZTypeKL' 4 code_14093.supp code_14093.prob code_14093.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14093, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14093_ok : code_14093.OK := ⟨by decide, by decide, code_14093_b3, code_14093_b4⟩
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
theorem code_14094_b3 : ∀ k, IsNormalizedProb (code_14094.supp k) (code_14094.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14094], ?_⟩ <;>
    norm_num [code_14094, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14094_b4 : ZTypeKL' 4 code_14094.supp code_14094.prob code_14094.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14094, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14094_ok : code_14094.OK := ⟨by decide, by decide, code_14094_b3, code_14094_b4⟩
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
theorem code_14095_b3 : ∀ k, IsNormalizedProb (code_14095.supp k) (code_14095.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14095], ?_⟩ <;>
    norm_num [code_14095, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14095_b4 : ZTypeKL' 4 code_14095.supp code_14095.prob code_14095.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14095, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14095_ok : code_14095.OK := ⟨by decide, by decide, code_14095_b3, code_14095_b4⟩
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
theorem code_14096_b3 : ∀ k, IsNormalizedProb (code_14096.supp k) (code_14096.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14096], ?_⟩ <;>
    norm_num [code_14096, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14096_b4 : ZTypeKL' 4 code_14096.supp code_14096.prob code_14096.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14096, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14096_ok : code_14096.OK := ⟨by decide, by decide, code_14096_b3, code_14096_b4⟩
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
theorem code_14097_b3 : ∀ k, IsNormalizedProb (code_14097.supp k) (code_14097.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14097], ?_⟩ <;>
    norm_num [code_14097, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14097_b4 : ZTypeKL' 4 code_14097.supp code_14097.prob code_14097.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14097, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14097_ok : code_14097.OK := ⟨by decide, by decide, code_14097_b3, code_14097_b4⟩
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
theorem code_14098_b3 : ∀ k, IsNormalizedProb (code_14098.supp k) (code_14098.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14098], ?_⟩ <;>
    norm_num [code_14098, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14098_b4 : ZTypeKL' 4 code_14098.supp code_14098.prob code_14098.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14098, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14098_ok : code_14098.OK := ⟨by decide, by decide, code_14098_b3, code_14098_b4⟩
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
theorem code_14099_b3 : ∀ k, IsNormalizedProb (code_14099.supp k) (code_14099.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14099], ?_⟩ <;>
    norm_num [code_14099, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14099_b4 : ZTypeKL' 4 code_14099.supp code_14099.prob code_14099.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14099, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14099_ok : code_14099.OK := ⟨by decide, by decide, code_14099_b3, code_14099_b4⟩
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
theorem code_14100_b3 : ∀ k, IsNormalizedProb (code_14100.supp k) (code_14100.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14100], ?_⟩ <;>
    norm_num [code_14100, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14100_b4 : ZTypeKL' 4 code_14100.supp code_14100.prob code_14100.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14100, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14100_ok : code_14100.OK := ⟨by decide, by decide, code_14100_b3, code_14100_b4⟩
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
theorem code_14101_b3 : ∀ k, IsNormalizedProb (code_14101.supp k) (code_14101.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14101], ?_⟩ <;>
    norm_num [code_14101, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14101_b4 : ZTypeKL' 4 code_14101.supp code_14101.prob code_14101.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14101, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14101_ok : code_14101.OK := ⟨by decide, by decide, code_14101_b3, code_14101_b4⟩
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
theorem code_14102_b3 : ∀ k, IsNormalizedProb (code_14102.supp k) (code_14102.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14102], ?_⟩ <;>
    norm_num [code_14102, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14102_b4 : ZTypeKL' 4 code_14102.supp code_14102.prob code_14102.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14102, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14102_ok : code_14102.OK := ⟨by decide, by decide, code_14102_b3, code_14102_b4⟩
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
theorem code_14103_b3 : ∀ k, IsNormalizedProb (code_14103.supp k) (code_14103.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14103], ?_⟩ <;>
    norm_num [code_14103, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14103_b4 : ZTypeKL' 4 code_14103.supp code_14103.prob code_14103.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14103, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14103_ok : code_14103.OK := ⟨by decide, by decide, code_14103_b3, code_14103_b4⟩
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
theorem code_14104_b3 : ∀ k, IsNormalizedProb (code_14104.supp k) (code_14104.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14104], ?_⟩ <;>
    norm_num [code_14104, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14104_b4 : ZTypeKL' 4 code_14104.supp code_14104.prob code_14104.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14104, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14104_ok : code_14104.OK := ⟨by decide, by decide, code_14104_b3, code_14104_b4⟩
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
theorem code_14105_b3 : ∀ k, IsNormalizedProb (code_14105.supp k) (code_14105.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14105], ?_⟩ <;>
    norm_num [code_14105, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14105_b4 : ZTypeKL' 4 code_14105.supp code_14105.prob code_14105.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14105, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14105_ok : code_14105.OK := ⟨by decide, by decide, code_14105_b3, code_14105_b4⟩
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
theorem code_14106_b3 : ∀ k, IsNormalizedProb (code_14106.supp k) (code_14106.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14106], ?_⟩ <;>
    norm_num [code_14106, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14106_b4 : ZTypeKL' 4 code_14106.supp code_14106.prob code_14106.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14106, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14106_ok : code_14106.OK := ⟨by decide, by decide, code_14106_b3, code_14106_b4⟩
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
theorem code_14107_b3 : ∀ k, IsNormalizedProb (code_14107.supp k) (code_14107.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14107], ?_⟩ <;>
    norm_num [code_14107, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14107_b4 : ZTypeKL' 4 code_14107.supp code_14107.prob code_14107.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14107, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14107_ok : code_14107.OK := ⟨by decide, by decide, code_14107_b3, code_14107_b4⟩
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
theorem code_14108_b3 : ∀ k, IsNormalizedProb (code_14108.supp k) (code_14108.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14108], ?_⟩ <;>
    norm_num [code_14108, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14108_b4 : ZTypeKL' 4 code_14108.supp code_14108.prob code_14108.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14108, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14108_ok : code_14108.OK := ⟨by decide, by decide, code_14108_b3, code_14108_b4⟩
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
theorem code_14109_b3 : ∀ k, IsNormalizedProb (code_14109.supp k) (code_14109.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14109], ?_⟩ <;>
    norm_num [code_14109, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14109_b4 : ZTypeKL' 4 code_14109.supp code_14109.prob code_14109.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14109, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14109_ok : code_14109.OK := ⟨by decide, by decide, code_14109_b3, code_14109_b4⟩
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
theorem code_14110_b3 : ∀ k, IsNormalizedProb (code_14110.supp k) (code_14110.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14110], ?_⟩ <;>
    norm_num [code_14110, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14110_b4 : ZTypeKL' 4 code_14110.supp code_14110.prob code_14110.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14110, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14110_ok : code_14110.OK := ⟨by decide, by decide, code_14110_b3, code_14110_b4⟩
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
theorem code_14111_b3 : ∀ k, IsNormalizedProb (code_14111.supp k) (code_14111.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14111], ?_⟩ <;>
    norm_num [code_14111, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14111_b4 : ZTypeKL' 4 code_14111.supp code_14111.prob code_14111.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14111, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14111_ok : code_14111.OK := ⟨by decide, by decide, code_14111_b3, code_14111_b4⟩
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
theorem code_14112_b3 : ∀ k, IsNormalizedProb (code_14112.supp k) (code_14112.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14112], ?_⟩ <;>
    norm_num [code_14112, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14112_b4 : ZTypeKL' 4 code_14112.supp code_14112.prob code_14112.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14112, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14112_ok : code_14112.OK := ⟨by decide, by decide, code_14112_b3, code_14112_b4⟩
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
theorem code_14113_b3 : ∀ k, IsNormalizedProb (code_14113.supp k) (code_14113.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14113], ?_⟩ <;>
    norm_num [code_14113, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14113_b4 : ZTypeKL' 4 code_14113.supp code_14113.prob code_14113.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14113, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14113_ok : code_14113.OK := ⟨by decide, by decide, code_14113_b3, code_14113_b4⟩
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
theorem code_14114_b3 : ∀ k, IsNormalizedProb (code_14114.supp k) (code_14114.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14114], ?_⟩ <;>
    norm_num [code_14114, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14114_b4 : ZTypeKL' 4 code_14114.supp code_14114.prob code_14114.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14114, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14114_ok : code_14114.OK := ⟨by decide, by decide, code_14114_b3, code_14114_b4⟩
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
theorem code_14115_b3 : ∀ k, IsNormalizedProb (code_14115.supp k) (code_14115.prob k) := by
  intro k
  fin_cases k <;>
    refine ⟨by decide, fun x hx => by fin_cases hx <;> norm_num [code_14115], ?_⟩ <;>
    norm_num [code_14115, Finset.sum_insert, Finset.mem_singleton, Finset.sum_singleton]
theorem code_14115_b4 : ZTypeKL' 4 code_14115.supp code_14115.prob code_14115.targetZ := by
  intro j i
  fin_cases j <;> fin_cases i <;>
    norm_num [zExpectation, zSign, code_14115, Finset.sum_insert,
      Finset.mem_singleton, Finset.sum_singleton]
theorem code_14115_ok : code_14115.OK := ⟨by decide, by decide, code_14115_b3, code_14115_b4⟩
/-- Code #14115 is a genuine distance-2 quantum code: logical states
    realizing its probabilities exist and detect every weight-1 Pauli error. -/
theorem code_14115_qec :
    ∃ ψ, SS.IsAmplitudes code_14115 ψ ∧ SS.HasDistance ψ 2 :=
  SS.OK_hasDistance2 code_14115 code_14115_ok (by decide) (by decide)

-- Axiom audit: each theorem below is reported with the axioms it depends on.
-- Expected for every entry: [propext, Classical.choice, Quot.sound].
-- Neither `Lean.ofReduceBool` nor `Lean.trustCompiler` may appear; their absence
-- is what certifies that no proof in this file was delegated to the compiler
-- via `native_decide`, i.e. every step was checked by the Lean kernel.
#print axioms code_14000_qec
#print axioms code_14001_qec
#print axioms code_14002_qec
#print axioms code_14003_qec
#print axioms code_14004_qec
#print axioms code_14005_qec
#print axioms code_14006_qec
#print axioms code_14007_qec
#print axioms code_14008_qec
#print axioms code_14009_qec
#print axioms code_14010_qec
#print axioms code_14011_qec
#print axioms code_14012_qec
#print axioms code_14013_qec
#print axioms code_14014_qec
#print axioms code_14015_qec
#print axioms code_14016_qec
#print axioms code_14017_qec
#print axioms code_14018_qec
#print axioms code_14019_qec
#print axioms code_14020_qec
#print axioms code_14021_qec
#print axioms code_14022_qec
#print axioms code_14023_qec
#print axioms code_14024_qec
#print axioms code_14025_qec
#print axioms code_14026_qec
#print axioms code_14027_qec
#print axioms code_14028_qec
#print axioms code_14029_qec
#print axioms code_14030_qec
#print axioms code_14031_qec
#print axioms code_14032_qec
#print axioms code_14033_qec
#print axioms code_14034_qec
#print axioms code_14035_qec
#print axioms code_14036_qec
#print axioms code_14037_qec
#print axioms code_14038_qec
#print axioms code_14039_qec
#print axioms code_14040_qec
#print axioms code_14041_qec
#print axioms code_14042_qec
#print axioms code_14043_qec
#print axioms code_14044_qec
#print axioms code_14045_qec
#print axioms code_14046_qec
#print axioms code_14047_qec
#print axioms code_14048_qec
#print axioms code_14049_qec
#print axioms code_14050_qec
#print axioms code_14051_qec
#print axioms code_14052_qec
#print axioms code_14053_qec
#print axioms code_14054_qec
#print axioms code_14055_qec
#print axioms code_14056_qec
#print axioms code_14057_qec
#print axioms code_14058_qec
#print axioms code_14059_qec
#print axioms code_14060_qec
#print axioms code_14061_qec
#print axioms code_14062_qec
#print axioms code_14063_qec
#print axioms code_14064_qec
#print axioms code_14065_qec
#print axioms code_14066_qec
#print axioms code_14067_qec
#print axioms code_14068_qec
#print axioms code_14069_qec
#print axioms code_14070_qec
#print axioms code_14071_qec
#print axioms code_14072_qec
#print axioms code_14073_qec
#print axioms code_14074_qec
#print axioms code_14075_qec
#print axioms code_14076_qec
#print axioms code_14077_qec
#print axioms code_14078_qec
#print axioms code_14079_qec
#print axioms code_14080_qec
#print axioms code_14081_qec
#print axioms code_14082_qec
#print axioms code_14083_qec
#print axioms code_14084_qec
#print axioms code_14085_qec
#print axioms code_14086_qec
#print axioms code_14087_qec
#print axioms code_14088_qec
#print axioms code_14089_qec
#print axioms code_14090_qec
#print axioms code_14091_qec
#print axioms code_14092_qec
#print axioms code_14093_qec
#print axioms code_14094_qec
#print axioms code_14095_qec
#print axioms code_14096_qec
#print axioms code_14097_qec
#print axioms code_14098_qec
#print axioms code_14099_qec
#print axioms code_14100_qec
#print axioms code_14101_qec
#print axioms code_14102_qec
#print axioms code_14103_qec
#print axioms code_14104_qec
#print axioms code_14105_qec
#print axioms code_14106_qec
#print axioms code_14107_qec
#print axioms code_14108_qec
#print axioms code_14109_qec
#print axioms code_14110_qec
#print axioms code_14111_qec
#print axioms code_14112_qec
#print axioms code_14113_qec
#print axioms code_14114_qec
#print axioms code_14115_qec


end Catalogue.Chunk028
