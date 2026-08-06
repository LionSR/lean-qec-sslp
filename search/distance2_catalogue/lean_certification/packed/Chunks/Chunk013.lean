import SS

namespace Catalogue.Chunk013

open SS SS.Verify

/-- Catalogue code #6500: ((6,2,2)), m=13, a=[1, 7, 7, 8, 10, 11], S=[0, 9]. -/
def code_6500 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6501: ((6,2,2)), m=13, a=[1, 7, 7, 8, 11, 11], S=[0, 9]. -/
def code_6501 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6502: ((6,2,2)), m=13, a=[1, 7, 7, 8, 11, 12], S=[0, 10]. -/
def code_6502 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6503: ((6,2,2)), m=13, a=[1, 7, 7, 9, 9, 9], S=[0, 2]. -/
def code_6503 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6504: ((6,2,2)), m=13, a=[1, 7, 7, 9, 9, 11], S=[0, 8]. -/
def code_6504 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6505: ((6,2,2)), m=13, a=[1, 7, 7, 9, 9, 11], S=[0, 10]. -/
def code_6505 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6506: ((6,2,2)), m=13, a=[1, 7, 7, 9, 9, 12], S=[0, 2]. -/
def code_6506 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6507: ((6,2,2)), m=13, a=[1, 7, 7, 9, 9, 12], S=[0, 8]. -/
def code_6507 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6508: ((6,2,2)), m=13, a=[1, 7, 7, 9, 11, 11], S=[0, 10]. -/
def code_6508 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6509: ((6,2,2)), m=13, a=[1, 7, 7, 9, 11, 12], S=[0, 10]. -/
def code_6509 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6510: ((6,2,2)), m=13, a=[1, 7, 7, 10, 10, 11], S=[0, 8]. -/
def code_6510 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6511: ((6,2,2)), m=13, a=[1, 7, 7, 10, 11, 11], S=[0, 9]. -/
def code_6511 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6512: ((6,2,2)), m=13, a=[1, 7, 8, 8, 9, 10], S=[0, 2]. -/
def code_6512 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6513: ((6,2,2)), m=13, a=[1, 7, 8, 8, 9, 11], S=[0, 3]. -/
def code_6513 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6514: ((6,2,2)), m=13, a=[1, 7, 8, 8, 10, 11], S=[0, 4]. -/
def code_6514 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6515: ((6,2,2)), m=13, a=[1, 7, 8, 8, 10, 12], S=[0, 9]. -/
def code_6515 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6516: ((6,2,2)), m=13, a=[1, 7, 8, 8, 10, 12], S=[0, 11]. -/
def code_6516 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6517: ((6,2,2)), m=13, a=[1, 7, 8, 8, 11, 11], S=[0, 3]. -/
def code_6517 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6518: ((6,2,2)), m=13, a=[1, 7, 8, 9, 9, 11], S=[0, 3]. -/
def code_6518 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6519: ((6,2,2)), m=13, a=[1, 7, 8, 9, 10, 12], S=[0, 11]. -/
def code_6519 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6520: ((6,2,2)), m=13, a=[1, 7, 8, 9, 11, 11], S=[0, 3]. -/
def code_6520 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6521: ((6,2,2)), m=13, a=[1, 7, 8, 10, 10, 11], S=[0, 4]. -/
def code_6521 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6522: ((6,2,2)), m=13, a=[1, 7, 8, 10, 10, 12], S=[0, 2]. -/
def code_6522 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6523: ((6,2,2)), m=13, a=[1, 7, 8, 10, 11, 11], S=[0, 4]. -/
def code_6523 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6524: ((6,2,2)), m=13, a=[1, 7, 9, 9, 9, 12], S=[0, 2]. -/
def code_6524 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6525: ((6,2,2)), m=13, a=[1, 7, 9, 9, 10, 11], S=[0, 5]. -/
def code_6525 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6526: ((6,2,2)), m=13, a=[1, 7, 9, 9, 11, 11], S=[0, 8]. -/
def code_6526 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6527: ((6,2,2)), m=13, a=[1, 7, 9, 9, 11, 12], S=[0, 8]. -/
def code_6527 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6528: ((6,2,2)), m=13, a=[1, 7, 9, 10, 10, 11], S=[0, 5]. -/
def code_6528 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6529: ((6,2,2)), m=13, a=[1, 7, 9, 10, 10, 12], S=[0, 2]. -/
def code_6529 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6530: ((6,2,2)), m=13, a=[1, 7, 9, 10, 11, 11], S=[0, 5]. -/
def code_6530 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6531: ((6,2,2)), m=13, a=[1, 7, 9, 11, 11, 12], S=[0, 8]. -/
def code_6531 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6532: ((6,2,2)), m=13, a=[1, 7, 10, 10, 11, 12], S=[0, 5]. -/
def code_6532 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6533: ((6,2,2)), m=13, a=[1, 7, 10, 10, 12, 12], S=[0, 5]. -/
def code_6533 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6534: ((6,2,2)), m=13, a=[1, 8, 8, 8, 11, 11], S=[0, 9]. -/
def code_6534 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6535: ((6,2,2)), m=13, a=[1, 8, 8, 8, 11, 12], S=[0, 10]. -/
def code_6535 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6536: ((6,2,2)), m=13, a=[1, 8, 8, 9, 10, 11], S=[0, 7]. -/
def code_6536 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6537: ((6,2,2)), m=13, a=[1, 8, 8, 9, 10, 12], S=[0, 2]. -/
def code_6537 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6538: ((6,2,2)), m=13, a=[1, 8, 8, 9, 10, 12], S=[0, 7]. -/
def code_6538 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6539: ((6,2,2)), m=13, a=[1, 8, 8, 9, 10, 12], S=[0, 11]. -/
def code_6539 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6540: ((6,2,2)), m=13, a=[1, 8, 8, 9, 11, 11], S=[0, 3]. -/
def code_6540 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6541: ((6,2,2)), m=13, a=[1, 8, 8, 9, 11, 11], S=[0, 10]. -/
def code_6541 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6542: ((6,2,2)), m=13, a=[1, 8, 8, 9, 11, 12], S=[0, 7]. -/
def code_6542 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6543: ((6,2,2)), m=13, a=[1, 8, 8, 10, 11, 11], S=[0, 4]. -/
def code_6543 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6544: ((6,2,2)), m=13, a=[1, 8, 8, 10, 11, 12], S=[0, 4]. -/
def code_6544 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6545: ((6,2,2)), m=13, a=[1, 8, 8, 10, 11, 12], S=[0, 7]. -/
def code_6545 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6546: ((6,2,2)), m=13, a=[1, 8, 8, 11, 11, 12], S=[0, 3]. -/
def code_6546 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6547: ((6,2,2)), m=13, a=[1, 8, 8, 11, 11, 12], S=[0, 4]. -/
def code_6547 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6548: ((6,2,2)), m=13, a=[1, 8, 9, 9, 10, 10], S=[0, 6]. -/
def code_6548 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6549: ((6,2,2)), m=13, a=[1, 8, 9, 9, 10, 11], S=[0, 6]. -/
def code_6549 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6550: ((6,2,2)), m=13, a=[1, 8, 9, 10, 10, 11], S=[0, 6]. -/
def code_6550 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6551: ((6,2,2)), m=13, a=[1, 8, 9, 10, 11, 12], S=[0, 7]. -/
def code_6551 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6552: ((6,2,2)), m=13, a=[1, 8, 10, 10, 11, 12], S=[0, 6]. -/
def code_6552 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6553: ((6,2,2)), m=13, a=[1, 8, 10, 10, 12, 12], S=[0, 6]. -/
def code_6553 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6554: ((6,2,2)), m=13, a=[1, 9, 9, 9, 11, 12], S=[0, 6]. -/
def code_6554 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6555: ((6,2,2)), m=13, a=[1, 9, 9, 10, 10, 11], S=[0, 5]. -/
def code_6555 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6556: ((6,2,2)), m=13, a=[1, 9, 9, 10, 10, 11], S=[0, 6]. -/
def code_6556 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6557: ((6,2,2)), m=13, a=[1, 9, 9, 11, 11, 12], S=[0, 6]. -/
def code_6557 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6558: ((6,2,2)), m=13, a=[1, 9, 9, 11, 11, 12], S=[0, 8]. -/
def code_6558 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6559: ((6,2,2)), m=13, a=[1, 9, 10, 10, 11, 12], S=[0, 6]. -/
def code_6559 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6560: ((6,2,2)), m=13, a=[2, 2, 2, 3, 4, 10], S=[0, 7]. -/
def code_6560 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6561: ((6,2,2)), m=13, a=[2, 2, 2, 3, 6, 7], S=[0, 12]. -/
def code_6561 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6562: ((6,2,2)), m=13, a=[2, 2, 2, 3, 6, 10], S=[0, 9]. -/
def code_6562 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6563: ((6,2,2)), m=13, a=[2, 2, 2, 7, 7, 10], S=[0, 1]. -/
def code_6563 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6564: ((6,2,2)), m=13, a=[2, 2, 2, 7, 10, 10], S=[0, 1]. -/
def code_6564 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6565: ((6,2,2)), m=13, a=[2, 2, 3, 3, 3, 4], S=[0, 8]. -/
def code_6565 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6566: ((6,2,2)), m=13, a=[2, 2, 3, 3, 4, 4], S=[0, 8]. -/
def code_6566 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6567: ((6,2,2)), m=13, a=[2, 2, 3, 3, 4, 5], S=[0, 7]. -/
def code_6567 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6568: ((6,2,2)), m=13, a=[2, 2, 3, 3, 4, 5], S=[0, 12]. -/
def code_6568 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13)]

/-- Catalogue code #6569: ((6,2,2)), m=13, a=[2, 2, 3, 3, 4, 6], S=[0, 8]. -/
def code_6569 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6570: ((6,2,2)), m=13, a=[2, 2, 3, 3, 4, 6], S=[0, 12]. -/
def code_6570 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13)]

/-- Catalogue code #6571: ((6,2,2)), m=13, a=[2, 2, 3, 3, 4, 12], S=[0, 6]. -/
def code_6571 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6572: ((6,2,2)), m=13, a=[2, 2, 3, 3, 5, 6], S=[0, 4]. -/
def code_6572 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6573: ((6,2,2)), m=13, a=[2, 2, 3, 3, 5, 6], S=[0, 9]. -/
def code_6573 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6574: ((6,2,2)), m=13, a=[2, 2, 3, 3, 6, 7], S=[0, 9]. -/
def code_6574 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6575: ((6,2,2)), m=13, a=[2, 2, 3, 3, 6, 7], S=[0, 12]. -/
def code_6575 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6576: ((6,2,2)), m=13, a=[2, 2, 3, 3, 6, 11], S=[0, 4]. -/
def code_6576 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6577: ((6,2,2)), m=13, a=[2, 2, 3, 3, 6, 12], S=[0, 9]. -/
def code_6577 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6578: ((6,2,2)), m=13, a=[2, 2, 3, 3, 7, 12], S=[0, 9]. -/
def code_6578 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6579: ((6,2,2)), m=13, a=[2, 2, 3, 4, 4, 5], S=[0, 12]. -/
def code_6579 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6580: ((6,2,2)), m=13, a=[2, 2, 3, 4, 4, 8], S=[0, 7]. -/
def code_6580 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6581: ((6,2,2)), m=13, a=[2, 2, 3, 4, 4, 10], S=[0, 7]. -/
def code_6581 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6582: ((6,2,2)), m=13, a=[2, 2, 3, 4, 5, 5], S=[0, 12]. -/
def code_6582 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6583: ((6,2,2)), m=13, a=[2, 2, 3, 4, 5, 6], S=[0, 12]. -/
def code_6583 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6584: ((6,2,2)), m=13, a=[2, 2, 3, 4, 5, 8], S=[0, 12]. -/
def code_6584 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6585: ((6,2,2)), m=13, a=[2, 2, 3, 4, 6, 7], S=[0, 12]. -/
def code_6585 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6586: ((6,2,2)), m=13, a=[2, 2, 3, 4, 6, 12], S=[0, 8]. -/
def code_6586 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6587: ((6,2,2)), m=13, a=[2, 2, 3, 4, 8, 10], S=[0, 7]. -/
def code_6587 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6588: ((6,2,2)), m=13, a=[2, 2, 3, 4, 10, 10], S=[0, 7]. -/
def code_6588 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6589: ((6,2,2)), m=13, a=[2, 2, 3, 5, 5, 6], S=[0, 9]. -/
def code_6589 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6590: ((6,2,2)), m=13, a=[2, 2, 3, 5, 5, 12], S=[0, 9]. -/
def code_6590 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6591: ((6,2,2)), m=13, a=[2, 2, 3, 5, 6, 12], S=[0, 9]. -/
def code_6591 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6592: ((6,2,2)), m=13, a=[2, 2, 3, 5, 7, 10], S=[0, 4]. -/
def code_6592 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6593: ((6,2,2)), m=13, a=[2, 2, 3, 5, 7, 10], S=[0, 12]. -/
def code_6593 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6594: ((6,2,2)), m=13, a=[2, 2, 3, 5, 8, 9], S=[0, 12]. -/
def code_6594 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6595: ((6,2,2)), m=13, a=[2, 2, 3, 5, 9, 10], S=[0, 6]. -/
def code_6595 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6596: ((6,2,2)), m=13, a=[2, 2, 3, 5, 9, 10], S=[0, 12]. -/
def code_6596 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6597: ((6,2,2)), m=13, a=[2, 2, 3, 6, 6, 9], S=[0, 1]. -/
def code_6597 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6598: ((6,2,2)), m=13, a=[2, 2, 3, 6, 6, 10], S=[0, 1]. -/
def code_6598 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6599: ((6,2,2)), m=13, a=[2, 2, 3, 6, 6, 10], S=[0, 4]. -/
def code_6599 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6600: ((6,2,2)), m=13, a=[2, 2, 3, 6, 6, 11], S=[0, 1]. -/
def code_6600 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6601: ((6,2,2)), m=13, a=[2, 2, 3, 6, 6, 12], S=[0, 4]. -/
def code_6601 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6602: ((6,2,2)), m=13, a=[2, 2, 3, 6, 7, 12], S=[0, 9]. -/
def code_6602 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6603: ((6,2,2)), m=13, a=[2, 2, 3, 6, 8, 8], S=[0, 4]. -/
def code_6603 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6604: ((6,2,2)), m=13, a=[2, 2, 3, 6, 8, 9], S=[0, 1]. -/
def code_6604 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6605: ((6,2,2)), m=13, a=[2, 2, 3, 6, 8, 10], S=[0, 1]. -/
def code_6605 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6606: ((6,2,2)), m=13, a=[2, 2, 3, 6, 8, 10], S=[0, 4]. -/
def code_6606 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6607: ((6,2,2)), m=13, a=[2, 2, 3, 6, 8, 10], S=[0, 9]. -/
def code_6607 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6608: ((6,2,2)), m=13, a=[2, 2, 3, 6, 8, 12], S=[0, 4]. -/
def code_6608 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6609: ((6,2,2)), m=13, a=[2, 2, 3, 6, 9, 10], S=[0, 1]. -/
def code_6609 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6610: ((6,2,2)), m=13, a=[2, 2, 3, 6, 9, 10], S=[0, 5]. -/
def code_6610 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6611: ((6,2,2)), m=13, a=[2, 2, 3, 6, 9, 12], S=[0, 5]. -/
def code_6611 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6612: ((6,2,2)), m=13, a=[2, 2, 3, 6, 10, 10], S=[0, 9]. -/
def code_6612 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6613: ((6,2,2)), m=13, a=[2, 2, 3, 6, 10, 11], S=[0, 1]. -/
def code_6613 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6614: ((6,2,2)), m=13, a=[2, 2, 3, 6, 10, 12], S=[0, 4]. -/
def code_6614 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6615: ((6,2,2)), m=13, a=[2, 2, 3, 6, 10, 12], S=[0, 5]. -/
def code_6615 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6616: ((6,2,2)), m=13, a=[2, 2, 3, 6, 12, 12], S=[0, 4]. -/
def code_6616 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6617: ((6,2,2)), m=13, a=[2, 2, 3, 7, 7, 8], S=[0, 4]. -/
def code_6617 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6618: ((6,2,2)), m=13, a=[2, 2, 3, 7, 7, 8], S=[0, 12]. -/
def code_6618 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6619: ((6,2,2)), m=13, a=[2, 2, 3, 7, 7, 10], S=[0, 4]. -/
def code_6619 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6620: ((6,2,2)), m=13, a=[2, 2, 3, 7, 7, 12], S=[0, 4]. -/
def code_6620 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6621: ((6,2,2)), m=13, a=[2, 2, 3, 7, 8, 9], S=[0, 12]. -/
def code_6621 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6622: ((6,2,2)), m=13, a=[2, 2, 3, 7, 9, 10], S=[0, 8]. -/
def code_6622 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6623: ((6,2,2)), m=13, a=[2, 2, 3, 7, 9, 10], S=[0, 12]. -/
def code_6623 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6624: ((6,2,2)), m=13, a=[2, 2, 3, 7, 10, 12], S=[0, 4]. -/
def code_6624 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6625: ((6,2,2)), m=13, a=[2, 2, 3, 8, 9, 9], S=[0, 12]. -/
def code_6625 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6626: ((6,2,2)), m=13, a=[2, 2, 3, 8, 9, 10], S=[0, 1]. -/
def code_6626 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6627: ((6,2,2)), m=13, a=[2, 2, 3, 8, 9, 10], S=[0, 7]. -/
def code_6627 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6628: ((6,2,2)), m=13, a=[2, 2, 3, 8, 9, 12], S=[0, 7]. -/
def code_6628 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6629: ((6,2,2)), m=13, a=[2, 2, 3, 8, 10, 12], S=[0, 4]. -/
def code_6629 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6630: ((6,2,2)), m=13, a=[2, 2, 3, 8, 10, 12], S=[0, 7]. -/
def code_6630 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6631: ((6,2,2)), m=13, a=[2, 2, 3, 9, 10, 12], S=[0, 5]. -/
def code_6631 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6632: ((6,2,2)), m=13, a=[2, 2, 3, 9, 10, 12], S=[0, 6]. -/
def code_6632 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6633: ((6,2,2)), m=13, a=[2, 2, 3, 9, 10, 12], S=[0, 7]. -/
def code_6633 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6634: ((6,2,2)), m=13, a=[2, 2, 3, 9, 12, 12], S=[0, 7]. -/
def code_6634 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6635: ((6,2,2)), m=13, a=[2, 2, 3, 10, 11, 12], S=[0, 7]. -/
def code_6635 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (3 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6636: ((6,2,2)), m=13, a=[2, 2, 4, 5, 5, 6], S=[0, 10]. -/
def code_6636 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6637: ((6,2,2)), m=13, a=[2, 2, 4, 5, 5, 8], S=[0, 1]. -/
def code_6637 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6638: ((6,2,2)), m=13, a=[2, 2, 4, 5, 5, 10], S=[0, 1]. -/
def code_6638 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6639: ((6,2,2)), m=13, a=[2, 2, 4, 5, 5, 12], S=[0, 3]. -/
def code_6639 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6640: ((6,2,2)), m=13, a=[2, 2, 4, 5, 5, 12], S=[0, 10]. -/
def code_6640 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6641: ((6,2,2)), m=13, a=[2, 2, 4, 5, 6, 9], S=[0, 1]. -/
def code_6641 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6642: ((6,2,2)), m=13, a=[2, 2, 4, 5, 6, 12], S=[0, 10]. -/
def code_6642 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6643: ((6,2,2)), m=13, a=[2, 2, 4, 5, 7, 8], S=[0, 3]. -/
def code_6643 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6644: ((6,2,2)), m=13, a=[2, 2, 4, 5, 7, 10], S=[0, 1]. -/
def code_6644 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6645: ((6,2,2)), m=13, a=[2, 2, 4, 5, 7, 12], S=[0, 3]. -/
def code_6645 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6646: ((6,2,2)), m=13, a=[2, 2, 4, 5, 8, 9], S=[0, 1]. -/
def code_6646 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6647: ((6,2,2)), m=13, a=[2, 2, 4, 5, 8, 9], S=[0, 3]. -/
def code_6647 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6648: ((6,2,2)), m=13, a=[2, 2, 4, 5, 8, 10], S=[0, 1]. -/
def code_6648 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6649: ((6,2,2)), m=13, a=[2, 2, 4, 5, 8, 12], S=[0, 3]. -/
def code_6649 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6650: ((6,2,2)), m=13, a=[2, 2, 4, 5, 9, 10], S=[0, 1]. -/
def code_6650 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6651: ((6,2,2)), m=13, a=[2, 2, 4, 5, 9, 12], S=[0, 3]. -/
def code_6651 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6652: ((6,2,2)), m=13, a=[2, 2, 4, 5, 9, 12], S=[0, 7]. -/
def code_6652 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6653: ((6,2,2)), m=13, a=[2, 2, 4, 5, 10, 10], S=[0, 1]. -/
def code_6653 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6654: ((6,2,2)), m=13, a=[2, 2, 4, 5, 10, 10], S=[0, 6]. -/
def code_6654 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6655: ((6,2,2)), m=13, a=[2, 2, 4, 5, 10, 12], S=[0, 6]. -/
def code_6655 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6656: ((6,2,2)), m=13, a=[2, 2, 4, 5, 12, 12], S=[0, 3]. -/
def code_6656 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6657: ((6,2,2)), m=13, a=[2, 2, 4, 5, 12, 12], S=[0, 7]. -/
def code_6657 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6658: ((6,2,2)), m=13, a=[2, 2, 4, 6, 7, 12], S=[0, 10]. -/
def code_6658 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6659: ((6,2,2)), m=13, a=[2, 2, 4, 6, 9, 12], S=[0, 8]. -/
def code_6659 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6660: ((6,2,2)), m=13, a=[2, 2, 4, 7, 8, 9], S=[0, 3]. -/
def code_6660 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6661: ((6,2,2)), m=13, a=[2, 2, 4, 7, 10, 10], S=[0, 1]. -/
def code_6661 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6662: ((6,2,2)), m=13, a=[2, 2, 4, 7, 10, 10], S=[0, 8]. -/
def code_6662 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6663: ((6,2,2)), m=13, a=[2, 2, 4, 7, 10, 12], S=[0, 8]. -/
def code_6663 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6664: ((6,2,2)), m=13, a=[2, 2, 4, 8, 9, 10], S=[0, 6]. -/
def code_6664 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6665: ((6,2,2)), m=13, a=[2, 2, 4, 8, 9, 12], S=[0, 3]. -/
def code_6665 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6666: ((6,2,2)), m=13, a=[2, 2, 4, 9, 10, 10], S=[0, 6]. -/
def code_6666 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6667: ((6,2,2)), m=13, a=[2, 2, 4, 9, 10, 10], S=[0, 8]. -/
def code_6667 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6668: ((6,2,2)), m=13, a=[2, 2, 4, 9, 10, 12], S=[0, 5]. -/
def code_6668 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6669: ((6,2,2)), m=13, a=[2, 2, 4, 9, 12, 12], S=[0, 7]. -/
def code_6669 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6670: ((6,2,2)), m=13, a=[2, 2, 4, 9, 12, 12], S=[0, 8]. -/
def code_6670 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6671: ((6,2,2)), m=13, a=[2, 2, 5, 5, 5, 12], S=[0, 4]. -/
def code_6671 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6672: ((6,2,2)), m=13, a=[2, 2, 5, 5, 6, 12], S=[0, 9]. -/
def code_6672 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6673: ((6,2,2)), m=13, a=[2, 2, 5, 5, 6, 12], S=[0, 10]. -/
def code_6673 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6674: ((6,2,2)), m=13, a=[2, 2, 5, 5, 7, 10], S=[0, 4]. -/
def code_6674 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6675: ((6,2,2)), m=13, a=[2, 2, 5, 5, 7, 12], S=[0, 3]. -/
def code_6675 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6676: ((6,2,2)), m=13, a=[2, 2, 5, 5, 7, 12], S=[0, 4]. -/
def code_6676 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6677: ((6,2,2)), m=13, a=[2, 2, 5, 5, 9, 12], S=[0, 3]. -/
def code_6677 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6678: ((6,2,2)), m=13, a=[2, 2, 5, 5, 9, 12], S=[0, 10]. -/
def code_6678 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6679: ((6,2,2)), m=13, a=[2, 2, 5, 5, 12, 12], S=[0, 3]. -/
def code_6679 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6680: ((6,2,2)), m=13, a=[2, 2, 5, 5, 12, 12], S=[0, 4]. -/
def code_6680 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6681: ((6,2,2)), m=13, a=[2, 2, 5, 6, 6, 9], S=[0, 1]. -/
def code_6681 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6682: ((6,2,2)), m=13, a=[2, 2, 5, 6, 6, 10], S=[0, 1]. -/
def code_6682 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6683: ((6,2,2)), m=13, a=[2, 2, 5, 6, 6, 10], S=[0, 4]. -/
def code_6683 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6684: ((6,2,2)), m=13, a=[2, 2, 5, 6, 6, 12], S=[0, 4]. -/
def code_6684 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6685: ((6,2,2)), m=13, a=[2, 2, 5, 6, 8, 8], S=[0, 9]. -/
def code_6685 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6686: ((6,2,2)), m=13, a=[2, 2, 5, 6, 9, 9], S=[0, 10]. -/
def code_6686 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6687: ((6,2,2)), m=13, a=[2, 2, 5, 6, 9, 10], S=[0, 1]. -/
def code_6687 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6688: ((6,2,2)), m=13, a=[2, 2, 5, 6, 10, 12], S=[0, 4]. -/
def code_6688 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6689: ((6,2,2)), m=13, a=[2, 2, 5, 6, 12, 12], S=[0, 4]. -/
def code_6689 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6690: ((6,2,2)), m=13, a=[2, 2, 5, 7, 8, 10], S=[0, 9]. -/
def code_6690 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6691: ((6,2,2)), m=13, a=[2, 2, 5, 7, 9, 10], S=[0, 12]. -/
def code_6691 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6692: ((6,2,2)), m=13, a=[2, 2, 5, 7, 9, 12], S=[0, 3]. -/
def code_6692 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6693: ((6,2,2)), m=13, a=[2, 2, 5, 7, 10, 10], S=[0, 1]. -/
def code_6693 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6694: ((6,2,2)), m=13, a=[2, 2, 5, 7, 10, 10], S=[0, 9]. -/
def code_6694 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6695: ((6,2,2)), m=13, a=[2, 2, 5, 7, 10, 12], S=[0, 4]. -/
def code_6695 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6696: ((6,2,2)), m=13, a=[2, 2, 5, 7, 10, 12], S=[0, 9]. -/
def code_6696 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6697: ((6,2,2)), m=13, a=[2, 2, 5, 8, 9, 9], S=[0, 10]. -/
def code_6697 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6698: ((6,2,2)), m=13, a=[2, 2, 5, 8, 9, 10], S=[0, 1]. -/
def code_6698 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6699: ((6,2,2)), m=13, a=[2, 2, 5, 8, 9, 12], S=[0, 3]. -/
def code_6699 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6700: ((6,2,2)), m=13, a=[2, 2, 5, 8, 10, 12], S=[0, 4]. -/
def code_6700 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6701: ((6,2,2)), m=13, a=[2, 2, 5, 8, 10, 12], S=[0, 9]. -/
def code_6701 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6702: ((6,2,2)), m=13, a=[2, 2, 5, 9, 10, 12], S=[0, 7]. -/
def code_6702 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6703: ((6,2,2)), m=13, a=[2, 2, 5, 9, 12, 12], S=[0, 7]. -/
def code_6703 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6704: ((6,2,2)), m=13, a=[2, 2, 5, 10, 10, 10], S=[0, 4]. -/
def code_6704 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6705: ((6,2,2)), m=13, a=[2, 2, 5, 10, 10, 10], S=[0, 9]. -/
def code_6705 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6706: ((6,2,2)), m=13, a=[2, 2, 5, 10, 10, 12], S=[0, 6]. -/
def code_6706 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6707: ((6,2,2)), m=13, a=[2, 2, 5, 10, 10, 12], S=[0, 9]. -/
def code_6707 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6708: ((6,2,2)), m=13, a=[2, 2, 6, 6, 9, 10], S=[0, 1]. -/
def code_6708 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6709: ((6,2,2)), m=13, a=[2, 2, 6, 6, 9, 12], S=[0, 10]. -/
def code_6709 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6710: ((6,2,2)), m=13, a=[2, 2, 6, 6, 11, 12], S=[0, 3]. -/
def code_6710 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6711: ((6,2,2)), m=13, a=[2, 2, 6, 8, 9, 10], S=[0, 1]. -/
def code_6711 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6712: ((6,2,2)), m=13, a=[2, 2, 6, 8, 9, 12], S=[0, 3]. -/
def code_6712 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6713: ((6,2,2)), m=13, a=[2, 2, 6, 9, 10, 12], S=[0, 5]. -/
def code_6713 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6714: ((6,2,2)), m=13, a=[2, 2, 6, 9, 12, 12], S=[0, 8]. -/
def code_6714 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6715: ((6,2,2)), m=13, a=[2, 2, 6, 9, 12, 12], S=[0, 10]. -/
def code_6715 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6716: ((6,2,2)), m=13, a=[2, 2, 7, 7, 8, 9], S=[0, 12]. -/
def code_6716 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6717: ((6,2,2)), m=13, a=[2, 2, 7, 7, 8, 10], S=[0, 1]. -/
def code_6717 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6718: ((6,2,2)), m=13, a=[2, 2, 7, 7, 8, 10], S=[0, 9]. -/
def code_6718 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6719: ((6,2,2)), m=13, a=[2, 2, 7, 7, 8, 11], S=[0, 12]. -/
def code_6719 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6720: ((6,2,2)), m=13, a=[2, 2, 7, 7, 8, 12], S=[0, 9]. -/
def code_6720 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6721: ((6,2,2)), m=13, a=[2, 2, 7, 7, 9, 10], S=[0, 12]. -/
def code_6721 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6722: ((6,2,2)), m=13, a=[2, 2, 7, 7, 9, 12], S=[0, 3]. -/
def code_6722 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6723: ((6,2,2)), m=13, a=[2, 2, 7, 7, 10, 12], S=[0, 9]. -/
def code_6723 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6724: ((6,2,2)), m=13, a=[2, 2, 7, 8, 9, 9], S=[0, 12]. -/
def code_6724 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6725: ((6,2,2)), m=13, a=[2, 2, 7, 8, 10, 10], S=[0, 9]. -/
def code_6725 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6726: ((6,2,2)), m=13, a=[2, 2, 7, 8, 10, 12], S=[0, 9]. -/
def code_6726 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6727: ((6,2,2)), m=13, a=[2, 2, 7, 9, 10, 12], S=[0, 8]. -/
def code_6727 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6728: ((6,2,2)), m=13, a=[2, 2, 7, 10, 10, 12], S=[0, 8]. -/
def code_6728 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-11 : ℚ) / 13)]

/-- Catalogue code #6729: ((6,2,2)), m=13, a=[2, 2, 7, 10, 10, 12], S=[0, 9]. -/
def code_6729 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6730: ((6,2,2)), m=13, a=[2, 2, 8, 8, 9, 10], S=[0, 1]. -/
def code_6730 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6731: ((6,2,2)), m=13, a=[2, 2, 8, 9, 10, 10], S=[0, 6]. -/
def code_6731 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6732: ((6,2,2)), m=13, a=[2, 2, 8, 9, 10, 12], S=[0, 7]. -/
def code_6732 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6733: ((6,2,2)), m=13, a=[2, 2, 9, 10, 10, 10], S=[0, 8]. -/
def code_6733 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (2 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6734: ((6,2,2)), m=13, a=[2, 3, 3, 3, 4, 4], S=[0, 8]. -/
def code_6734 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6735: ((6,2,2)), m=13, a=[2, 3, 3, 4, 4, 5], S=[0, 6]. -/
def code_6735 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6736: ((6,2,2)), m=13, a=[2, 3, 3, 4, 4, 5], S=[0, 7]. -/
def code_6736 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6737: ((6,2,2)), m=13, a=[2, 3, 3, 4, 4, 6], S=[0, 8]. -/
def code_6737 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6738: ((6,2,2)), m=13, a=[2, 3, 3, 4, 4, 7], S=[0, 5]. -/
def code_6738 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6739: ((6,2,2)), m=13, a=[2, 3, 3, 4, 4, 8], S=[0, 6]. -/
def code_6739 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6740: ((6,2,2)), m=13, a=[2, 3, 3, 4, 4, 11], S=[0, 6]. -/
def code_6740 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6741: ((6,2,2)), m=13, a=[2, 3, 3, 4, 4, 12], S=[0, 7]. -/
def code_6741 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6742: ((6,2,2)), m=13, a=[2, 3, 3, 4, 4, 12], S=[0, 8]. -/
def code_6742 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6743: ((6,2,2)), m=13, a=[2, 3, 3, 4, 5, 6], S=[0, 12]. -/
def code_6743 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6744: ((6,2,2)), m=13, a=[2, 3, 3, 4, 5, 7], S=[0, 12]. -/
def code_6744 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6745: ((6,2,2)), m=13, a=[2, 3, 3, 4, 5, 11], S=[0, 6]. -/
def code_6745 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6746: ((6,2,2)), m=13, a=[2, 3, 3, 4, 5, 12], S=[0, 7]. -/
def code_6746 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6747: ((6,2,2)), m=13, a=[2, 3, 3, 4, 6, 8], S=[0, 1]. -/
def code_6747 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6748: ((6,2,2)), m=13, a=[2, 3, 3, 4, 6, 12], S=[0, 8]. -/
def code_6748 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6749: ((6,2,2)), m=13, a=[2, 3, 3, 4, 7, 8], S=[0, 12]. -/
def code_6749 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6750: ((6,2,2)), m=13, a=[2, 3, 3, 4, 7, 11], S=[0, 5]. -/
def code_6750 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6751: ((6,2,2)), m=13, a=[2, 3, 3, 4, 7, 11], S=[0, 12]. -/
def code_6751 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6752: ((6,2,2)), m=13, a=[2, 3, 3, 4, 8, 8], S=[0, 6]. -/
def code_6752 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6753: ((6,2,2)), m=13, a=[2, 3, 3, 4, 8, 11], S=[0, 6]. -/
def code_6753 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6754: ((6,2,2)), m=13, a=[2, 3, 3, 4, 8, 11], S=[0, 12]. -/
def code_6754 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6755: ((6,2,2)), m=13, a=[2, 3, 3, 4, 8, 12], S=[0, 7]. -/
def code_6755 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6756: ((6,2,2)), m=13, a=[2, 3, 3, 5, 6, 7], S=[0, 1]. -/
def code_6756 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6757: ((6,2,2)), m=13, a=[2, 3, 3, 5, 6, 9], S=[0, 1]. -/
def code_6757 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6758: ((6,2,2)), m=13, a=[2, 3, 3, 5, 6, 12], S=[0, 9]. -/
def code_6758 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6759: ((6,2,2)), m=13, a=[2, 3, 3, 5, 7, 8], S=[0, 1]. -/
def code_6759 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6760: ((6,2,2)), m=13, a=[2, 3, 3, 5, 7, 12], S=[0, 4]. -/
def code_6760 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6761: ((6,2,2)), m=13, a=[2, 3, 3, 5, 9, 12], S=[0, 6]. -/
def code_6761 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6762: ((6,2,2)), m=13, a=[2, 3, 3, 5, 9, 12], S=[0, 7]. -/
def code_6762 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6763: ((6,2,2)), m=13, a=[2, 3, 3, 5, 10, 11], S=[0, 4]. -/
def code_6763 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6764: ((6,2,2)), m=13, a=[2, 3, 3, 5, 11, 12], S=[0, 4]. -/
def code_6764 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6765: ((6,2,2)), m=13, a=[2, 3, 3, 5, 11, 12], S=[0, 6]. -/
def code_6765 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6766: ((6,2,2)), m=13, a=[2, 3, 3, 5, 12, 12], S=[0, 7]. -/
def code_6766 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6767: ((6,2,2)), m=13, a=[2, 3, 3, 6, 6, 8], S=[0, 1]. -/
def code_6767 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6768: ((6,2,2)), m=13, a=[2, 3, 3, 6, 6, 11], S=[0, 4]. -/
def code_6768 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6769: ((6,2,2)), m=13, a=[2, 3, 3, 6, 6, 12], S=[0, 4]. -/
def code_6769 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6770: ((6,2,2)), m=13, a=[2, 3, 3, 6, 6, 12], S=[0, 5]. -/
def code_6770 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6771: ((6,2,2)), m=13, a=[2, 3, 3, 6, 7, 12], S=[0, 8]. -/
def code_6771 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6772: ((6,2,2)), m=13, a=[2, 3, 3, 6, 8, 12], S=[0, 4]. -/
def code_6772 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6773: ((6,2,2)), m=13, a=[2, 3, 3, 6, 9, 9], S=[0, 5]. -/
def code_6773 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6774: ((6,2,2)), m=13, a=[2, 3, 3, 6, 9, 12], S=[0, 5]. -/
def code_6774 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6775: ((6,2,2)), m=13, a=[2, 3, 3, 6, 11, 12], S=[0, 4]. -/
def code_6775 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6776: ((6,2,2)), m=13, a=[2, 3, 3, 6, 12, 12], S=[0, 5]. -/
def code_6776 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6777: ((6,2,2)), m=13, a=[2, 3, 3, 7, 8, 8], S=[0, 9]. -/
def code_6777 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6778: ((6,2,2)), m=13, a=[2, 3, 3, 7, 8, 11], S=[0, 4]. -/
def code_6778 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6779: ((6,2,2)), m=13, a=[2, 3, 3, 7, 8, 11], S=[0, 9]. -/
def code_6779 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6780: ((6,2,2)), m=13, a=[2, 3, 3, 7, 8, 11], S=[0, 12]. -/
def code_6780 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6781: ((6,2,2)), m=13, a=[2, 3, 3, 7, 9, 12], S=[0, 8]. -/
def code_6781 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6782: ((6,2,2)), m=13, a=[2, 3, 3, 7, 11, 12], S=[0, 4]. -/
def code_6782 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6783: ((6,2,2)), m=13, a=[2, 3, 3, 7, 11, 12], S=[0, 8]. -/
def code_6783 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6784: ((6,2,2)), m=13, a=[2, 3, 3, 7, 12, 12], S=[0, 5]. -/
def code_6784 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6785: ((6,2,2)), m=13, a=[2, 3, 3, 8, 9, 11], S=[0, 6]. -/
def code_6785 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6786: ((6,2,2)), m=13, a=[2, 3, 3, 8, 9, 12], S=[0, 7]. -/
def code_6786 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6787: ((6,2,2)), m=13, a=[2, 3, 3, 8, 12, 12], S=[0, 7]. -/
def code_6787 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6788: ((6,2,2)), m=13, a=[2, 3, 3, 9, 9, 10], S=[0, 8]. -/
def code_6788 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6789: ((6,2,2)), m=13, a=[2, 3, 3, 9, 9, 12], S=[0, 5]. -/
def code_6789 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6790: ((6,2,2)), m=13, a=[2, 3, 3, 9, 9, 12], S=[0, 7]. -/
def code_6790 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6791: ((6,2,2)), m=13, a=[2, 3, 3, 9, 10, 11], S=[0, 8]. -/
def code_6791 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6792: ((6,2,2)), m=13, a=[2, 3, 3, 9, 11, 12], S=[0, 6]. -/
def code_6792 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6793: ((6,2,2)), m=13, a=[2, 3, 3, 9, 11, 12], S=[0, 7]. -/
def code_6793 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6794: ((6,2,2)), m=13, a=[2, 3, 3, 9, 11, 12], S=[0, 8]. -/
def code_6794 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6795: ((6,2,2)), m=13, a=[2, 3, 3, 9, 12, 12], S=[0, 7]. -/
def code_6795 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6796: ((6,2,2)), m=13, a=[2, 3, 4, 4, 5, 5], S=[0, 7]. -/
def code_6796 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6797: ((6,2,2)), m=13, a=[2, 3, 4, 4, 5, 5], S=[0, 12]. -/
def code_6797 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6798: ((6,2,2)), m=13, a=[2, 3, 4, 4, 5, 6], S=[0, 12]. -/
def code_6798 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6799: ((6,2,2)), m=13, a=[2, 3, 4, 4, 5, 10], S=[0, 7]. -/
def code_6799 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6800: ((6,2,2)), m=13, a=[2, 3, 4, 4, 5, 11], S=[0, 6]. -/
def code_6800 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6801: ((6,2,2)), m=13, a=[2, 3, 4, 4, 5, 12], S=[0, 7]. -/
def code_6801 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6802: ((6,2,2)), m=13, a=[2, 3, 4, 4, 6, 10], S=[0, 8]. -/
def code_6802 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6803: ((6,2,2)), m=13, a=[2, 3, 4, 4, 6, 12], S=[0, 8]. -/
def code_6803 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6804: ((6,2,2)), m=13, a=[2, 3, 4, 4, 7, 8], S=[0, 1]. -/
def code_6804 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6805: ((6,2,2)), m=13, a=[2, 3, 4, 4, 7, 10], S=[0, 5]. -/
def code_6805 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6806: ((6,2,2)), m=13, a=[2, 3, 4, 4, 7, 12], S=[0, 5]. -/
def code_6806 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6807: ((6,2,2)), m=13, a=[2, 3, 4, 4, 8, 8], S=[0, 1]. -/
def code_6807 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6808: ((6,2,2)), m=13, a=[2, 3, 4, 4, 8, 8], S=[0, 6]. -/
def code_6808 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6809: ((6,2,2)), m=13, a=[2, 3, 4, 4, 8, 10], S=[0, 6]. -/
def code_6809 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6810: ((6,2,2)), m=13, a=[2, 3, 4, 4, 8, 10], S=[0, 7]. -/
def code_6810 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6811: ((6,2,2)), m=13, a=[2, 3, 4, 4, 8, 11], S=[0, 1]. -/
def code_6811 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6812: ((6,2,2)), m=13, a=[2, 3, 4, 4, 10, 10], S=[0, 5]. -/
def code_6812 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6813: ((6,2,2)), m=13, a=[2, 3, 4, 4, 10, 11], S=[0, 5]. -/
def code_6813 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6814: ((6,2,2)), m=13, a=[2, 3, 4, 4, 11, 12], S=[0, 5]. -/
def code_6814 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6815: ((6,2,2)), m=13, a=[2, 3, 4, 4, 12, 12], S=[0, 5]. -/
def code_6815 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6816: ((6,2,2)), m=13, a=[2, 3, 4, 5, 5, 7], S=[0, 1]. -/
def code_6816 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6817: ((6,2,2)), m=13, a=[2, 3, 4, 5, 5, 7], S=[0, 12]. -/
def code_6817 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6818: ((6,2,2)), m=13, a=[2, 3, 4, 5, 5, 10], S=[0, 7]. -/
def code_6818 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6819: ((6,2,2)), m=13, a=[2, 3, 4, 5, 5, 12], S=[0, 6]. -/
def code_6819 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6820: ((6,2,2)), m=13, a=[2, 3, 4, 5, 6, 7], S=[0, 12]. -/
def code_6820 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6821: ((6,2,2)), m=13, a=[2, 3, 4, 5, 6, 8], S=[0, 1]. -/
def code_6821 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6822: ((6,2,2)), m=13, a=[2, 3, 4, 5, 6, 11], S=[0, 12]. -/
def code_6822 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6823: ((6,2,2)), m=13, a=[2, 3, 4, 5, 7, 11], S=[0, 12]. -/
def code_6823 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6824: ((6,2,2)), m=13, a=[2, 3, 4, 5, 8, 12], S=[0, 7]. -/
def code_6824 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6825: ((6,2,2)), m=13, a=[2, 3, 4, 5, 9, 10], S=[0, 6]. -/
def code_6825 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6826: ((6,2,2)), m=13, a=[2, 3, 4, 5, 9, 12], S=[0, 6]. -/
def code_6826 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6827: ((6,2,2)), m=13, a=[2, 3, 4, 5, 10, 12], S=[0, 6]. -/
def code_6827 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6828: ((6,2,2)), m=13, a=[2, 3, 4, 5, 12, 12], S=[0, 7]. -/
def code_6828 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6829: ((6,2,2)), m=13, a=[2, 3, 4, 6, 6, 8], S=[0, 1]. -/
def code_6829 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6830: ((6,2,2)), m=13, a=[2, 3, 4, 6, 6, 8], S=[0, 12]. -/
def code_6830 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6831: ((6,2,2)), m=13, a=[2, 3, 4, 6, 6, 9], S=[0, 5]. -/
def code_6831 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6832: ((6,2,2)), m=13, a=[2, 3, 4, 6, 6, 9], S=[0, 12]. -/
def code_6832 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6833: ((6,2,2)), m=13, a=[2, 3, 4, 6, 6, 11], S=[0, 1]. -/
def code_6833 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6834: ((6,2,2)), m=13, a=[2, 3, 4, 6, 7, 8], S=[0, 12]. -/
def code_6834 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6835: ((6,2,2)), m=13, a=[2, 3, 4, 6, 8, 8], S=[0, 12]. -/
def code_6835 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6836: ((6,2,2)), m=13, a=[2, 3, 4, 6, 8, 9], S=[0, 12]. -/
def code_6836 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6837: ((6,2,2)), m=13, a=[2, 3, 4, 6, 8, 11], S=[0, 1]. -/
def code_6837 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6838: ((6,2,2)), m=13, a=[2, 3, 4, 6, 12, 12], S=[0, 5]. -/
def code_6838 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6839: ((6,2,2)), m=13, a=[2, 3, 4, 6, 12, 12], S=[0, 8]. -/
def code_6839 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6840: ((6,2,2)), m=13, a=[2, 3, 4, 7, 7, 9], S=[0, 1]. -/
def code_6840 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6841: ((6,2,2)), m=13, a=[2, 3, 4, 7, 7, 9], S=[0, 5]. -/
def code_6841 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6842: ((6,2,2)), m=13, a=[2, 3, 4, 7, 7, 12], S=[0, 5]. -/
def code_6842 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6843: ((6,2,2)), m=13, a=[2, 3, 4, 7, 8, 8], S=[0, 12]. -/
def code_6843 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6844: ((6,2,2)), m=13, a=[2, 3, 4, 7, 8, 9], S=[0, 1]. -/
def code_6844 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6845: ((6,2,2)), m=13, a=[2, 3, 4, 7, 8, 11], S=[0, 12]. -/
def code_6845 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6846: ((6,2,2)), m=13, a=[2, 3, 4, 7, 9, 10], S=[0, 8]. -/
def code_6846 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6847: ((6,2,2)), m=13, a=[2, 3, 4, 7, 9, 12], S=[0, 5]. -/
def code_6847 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6848: ((6,2,2)), m=13, a=[2, 3, 4, 7, 9, 12], S=[0, 8]. -/
def code_6848 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6849: ((6,2,2)), m=13, a=[2, 3, 4, 7, 10, 12], S=[0, 8]. -/
def code_6849 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6850: ((6,2,2)), m=13, a=[2, 3, 4, 7, 11, 12], S=[0, 5]. -/
def code_6850 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6851: ((6,2,2)), m=13, a=[2, 3, 4, 7, 11, 12], S=[0, 8]. -/
def code_6851 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6852: ((6,2,2)), m=13, a=[2, 3, 4, 7, 12, 12], S=[0, 5]. -/
def code_6852 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6853: ((6,2,2)), m=13, a=[2, 3, 4, 8, 8, 11], S=[0, 1]. -/
def code_6853 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6854: ((6,2,2)), m=13, a=[2, 3, 4, 8, 9, 12], S=[0, 6]. -/
def code_6854 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6855: ((6,2,2)), m=13, a=[2, 3, 4, 8, 11, 12], S=[0, 7]. -/
def code_6855 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6856: ((6,2,2)), m=13, a=[2, 3, 4, 8, 12, 12], S=[0, 7]. -/
def code_6856 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6857: ((6,2,2)), m=13, a=[2, 3, 4, 9, 10, 12], S=[0, 6]. -/
def code_6857 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6858: ((6,2,2)), m=13, a=[2, 3, 4, 9, 10, 12], S=[0, 8]. -/
def code_6858 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6859: ((6,2,2)), m=13, a=[2, 3, 4, 10, 10, 11], S=[0, 5]. -/
def code_6859 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6860: ((6,2,2)), m=13, a=[2, 3, 5, 5, 6, 10], S=[0, 9]. -/
def code_6860 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6861: ((6,2,2)), m=13, a=[2, 3, 5, 5, 6, 12], S=[0, 9]. -/
def code_6861 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6862: ((6,2,2)), m=13, a=[2, 3, 5, 5, 7, 12], S=[0, 9]. -/
def code_6862 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6863: ((6,2,2)), m=13, a=[2, 3, 5, 6, 6, 9], S=[0, 1]. -/
def code_6863 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6864: ((6,2,2)), m=13, a=[2, 3, 5, 6, 6, 12], S=[0, 4]. -/
def code_6864 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6865: ((6,2,2)), m=13, a=[2, 3, 5, 6, 7, 8], S=[0, 1]. -/
def code_6865 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6866: ((6,2,2)), m=13, a=[2, 3, 5, 6, 7, 9], S=[0, 1]. -/
def code_6866 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6867: ((6,2,2)), m=13, a=[2, 3, 5, 6, 7, 11], S=[0, 9]. -/
def code_6867 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6868: ((6,2,2)), m=13, a=[2, 3, 5, 6, 7, 11], S=[0, 12]. -/
def code_6868 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6869: ((6,2,2)), m=13, a=[2, 3, 5, 6, 8, 9], S=[0, 1]. -/
def code_6869 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6870: ((6,2,2)), m=13, a=[2, 3, 5, 6, 8, 10], S=[0, 4]. -/
def code_6870 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6871: ((6,2,2)), m=13, a=[2, 3, 5, 6, 8, 12], S=[0, 9]. -/
def code_6871 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6872: ((6,2,2)), m=13, a=[2, 3, 5, 6, 9, 9], S=[0, 1]. -/
def code_6872 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6873: ((6,2,2)), m=13, a=[2, 3, 5, 6, 12, 12], S=[0, 9]. -/
def code_6873 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6874: ((6,2,2)), m=13, a=[2, 3, 5, 7, 8, 11], S=[0, 9]. -/
def code_6874 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6875: ((6,2,2)), m=13, a=[2, 3, 5, 7, 8, 12], S=[0, 9]. -/
def code_6875 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6876: ((6,2,2)), m=13, a=[2, 3, 5, 7, 9, 10], S=[0, 12]. -/
def code_6876 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6877: ((6,2,2)), m=13, a=[2, 3, 5, 7, 10, 12], S=[0, 4]. -/
def code_6877 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6878: ((6,2,2)), m=13, a=[2, 3, 5, 7, 11, 12], S=[0, 4]. -/
def code_6878 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6879: ((6,2,2)), m=13, a=[2, 3, 5, 7, 11, 12], S=[0, 9]. -/
def code_6879 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6880: ((6,2,2)), m=13, a=[2, 3, 5, 8, 9, 9], S=[0, 7]. -/
def code_6880 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6881: ((6,2,2)), m=13, a=[2, 3, 5, 8, 9, 9], S=[0, 12]. -/
def code_6881 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6882: ((6,2,2)), m=13, a=[2, 3, 5, 8, 9, 10], S=[0, 7]. -/
def code_6882 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6883: ((6,2,2)), m=13, a=[2, 3, 5, 8, 9, 12], S=[0, 6]. -/
def code_6883 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6884: ((6,2,2)), m=13, a=[2, 3, 5, 8, 11, 12], S=[0, 9]. -/
def code_6884 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6885: ((6,2,2)), m=13, a=[2, 3, 5, 8, 12, 12], S=[0, 7]. -/
def code_6885 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6886: ((6,2,2)), m=13, a=[2, 3, 5, 8, 12, 12], S=[0, 9]. -/
def code_6886 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6887: ((6,2,2)), m=13, a=[2, 3, 5, 9, 9, 10], S=[0, 7]. -/
def code_6887 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6888: ((6,2,2)), m=13, a=[2, 3, 5, 9, 9, 12], S=[0, 7]. -/
def code_6888 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6889: ((6,2,2)), m=13, a=[2, 3, 5, 9, 10, 12], S=[0, 6]. -/
def code_6889 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6890: ((6,2,2)), m=13, a=[2, 3, 5, 9, 11, 12], S=[0, 6]. -/
def code_6890 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6891: ((6,2,2)), m=13, a=[2, 3, 5, 9, 12, 12], S=[0, 7]. -/
def code_6891 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6892: ((6,2,2)), m=13, a=[2, 3, 6, 6, 8, 9], S=[0, 12]. -/
def code_6892 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6893: ((6,2,2)), m=13, a=[2, 3, 6, 6, 8, 11], S=[0, 1]. -/
def code_6893 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6894: ((6,2,2)), m=13, a=[2, 3, 6, 6, 8, 11], S=[0, 9]. -/
def code_6894 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6895: ((6,2,2)), m=13, a=[2, 3, 6, 6, 8, 12], S=[0, 9]. -/
def code_6895 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6896: ((6,2,2)), m=13, a=[2, 3, 6, 6, 9, 9], S=[0, 1]. -/
def code_6896 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6897: ((6,2,2)), m=13, a=[2, 3, 6, 6, 9, 9], S=[0, 8]. -/
def code_6897 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6898: ((6,2,2)), m=13, a=[2, 3, 6, 6, 9, 11], S=[0, 12]. -/
def code_6898 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6899: ((6,2,2)), m=13, a=[2, 3, 6, 6, 9, 12], S=[0, 8]. -/
def code_6899 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6900: ((6,2,2)), m=13, a=[2, 3, 6, 6, 10, 11], S=[0, 1]. -/
def code_6900 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6901: ((6,2,2)), m=13, a=[2, 3, 6, 6, 11, 12], S=[0, 4]. -/
def code_6901 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6902: ((6,2,2)), m=13, a=[2, 3, 6, 6, 11, 12], S=[0, 9]. -/
def code_6902 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6903: ((6,2,2)), m=13, a=[2, 3, 6, 6, 12, 12], S=[0, 4]. -/
def code_6903 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6904: ((6,2,2)), m=13, a=[2, 3, 6, 6, 12, 12], S=[0, 5]. -/
def code_6904 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6905: ((6,2,2)), m=13, a=[2, 3, 6, 7, 8, 8], S=[0, 12]. -/
def code_6905 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6906: ((6,2,2)), m=13, a=[2, 3, 6, 7, 8, 9], S=[0, 1]. -/
def code_6906 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6907: ((6,2,2)), m=13, a=[2, 3, 6, 7, 9, 12], S=[0, 5]. -/
def code_6907 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6908: ((6,2,2)), m=13, a=[2, 3, 6, 8, 8, 10], S=[0, 12]. -/
def code_6908 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6909: ((6,2,2)), m=13, a=[2, 3, 6, 8, 9, 9], S=[0, 12]. -/
def code_6909 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6910: ((6,2,2)), m=13, a=[2, 3, 6, 8, 9, 10], S=[0, 1]. -/
def code_6910 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6911: ((6,2,2)), m=13, a=[2, 3, 6, 8, 10, 12], S=[0, 4]. -/
def code_6911 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6912: ((6,2,2)), m=13, a=[2, 3, 6, 8, 11, 12], S=[0, 9]. -/
def code_6912 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6913: ((6,2,2)), m=13, a=[2, 3, 6, 8, 12, 12], S=[0, 9]. -/
def code_6913 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6914: ((6,2,2)), m=13, a=[2, 3, 6, 9, 9, 10], S=[0, 5]. -/
def code_6914 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6915: ((6,2,2)), m=13, a=[2, 3, 6, 9, 9, 12], S=[0, 5]. -/
def code_6915 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6916: ((6,2,2)), m=13, a=[2, 3, 6, 9, 9, 12], S=[0, 8]. -/
def code_6916 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6917: ((6,2,2)), m=13, a=[2, 3, 6, 9, 10, 12], S=[0, 5]. -/
def code_6917 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6918: ((6,2,2)), m=13, a=[2, 3, 7, 7, 7, 10], S=[0, 5]. -/
def code_6918 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6919: ((6,2,2)), m=13, a=[2, 3, 7, 7, 8, 9], S=[0, 1]. -/
def code_6919 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6920: ((6,2,2)), m=13, a=[2, 3, 7, 7, 8, 9], S=[0, 12]. -/
def code_6920 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6921: ((6,2,2)), m=13, a=[2, 3, 7, 7, 8, 10], S=[0, 12]. -/
def code_6921 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6922: ((6,2,2)), m=13, a=[2, 3, 7, 7, 8, 12], S=[0, 4]. -/
def code_6922 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6923: ((6,2,2)), m=13, a=[2, 3, 7, 7, 8, 12], S=[0, 9]. -/
def code_6923 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6924: ((6,2,2)), m=13, a=[2, 3, 7, 7, 10, 11], S=[0, 12]. -/
def code_6924 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6925: ((6,2,2)), m=13, a=[2, 3, 7, 7, 10, 12], S=[0, 4]. -/
def code_6925 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6926: ((6,2,2)), m=13, a=[2, 3, 7, 7, 11, 12], S=[0, 4]. -/
def code_6926 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6927: ((6,2,2)), m=13, a=[2, 3, 7, 8, 8, 9], S=[0, 12]. -/
def code_6927 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6928: ((6,2,2)), m=13, a=[2, 3, 7, 8, 9, 10], S=[0, 1]. -/
def code_6928 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6929: ((6,2,2)), m=13, a=[2, 3, 7, 8, 11, 12], S=[0, 9]. -/
def code_6929 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6930: ((6,2,2)), m=13, a=[2, 3, 7, 8, 12, 12], S=[0, 9]. -/
def code_6930 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6931: ((6,2,2)), m=13, a=[2, 3, 7, 9, 10, 12], S=[0, 8]. -/
def code_6931 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6932: ((6,2,2)), m=13, a=[2, 3, 7, 9, 11, 12], S=[0, 8]. -/
def code_6932 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6933: ((6,2,2)), m=13, a=[2, 3, 7, 10, 11, 11], S=[0, 12]. -/
def code_6933 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6934: ((6,2,2)), m=13, a=[2, 3, 8, 8, 9, 11], S=[0, 1]. -/
def code_6934 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6935: ((6,2,2)), m=13, a=[2, 3, 8, 8, 11, 12], S=[0, 9]. -/
def code_6935 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6936: ((6,2,2)), m=13, a=[2, 3, 8, 9, 9, 10], S=[0, 7]. -/
def code_6936 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6937: ((6,2,2)), m=13, a=[2, 3, 8, 9, 9, 11], S=[0, 6]. -/
def code_6937 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6938: ((6,2,2)), m=13, a=[2, 3, 8, 9, 9, 12], S=[0, 7]. -/
def code_6938 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6939: ((6,2,2)), m=13, a=[2, 3, 8, 9, 10, 12], S=[0, 6]. -/
def code_6939 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6940: ((6,2,2)), m=13, a=[2, 3, 8, 9, 10, 12], S=[0, 7]. -/
def code_6940 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6941: ((6,2,2)), m=13, a=[2, 3, 8, 10, 10, 11], S=[0, 9]. -/
def code_6941 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6942: ((6,2,2)), m=13, a=[2, 3, 9, 9, 10, 11], S=[0, 8]. -/
def code_6942 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6943: ((6,2,2)), m=13, a=[2, 3, 9, 11, 12, 12], S=[0, 5]. -/
def code_6943 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6944: ((6,2,2)), m=13, a=[2, 4, 4, 5, 5, 6], S=[0, 3]. -/
def code_6944 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6945: ((6,2,2)), m=13, a=[2, 4, 4, 5, 5, 10], S=[0, 7]. -/
def code_6945 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6946: ((6,2,2)), m=13, a=[2, 4, 4, 5, 6, 7], S=[0, 1]. -/
def code_6946 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6947: ((6,2,2)), m=13, a=[2, 4, 4, 5, 6, 7], S=[0, 3]. -/
def code_6947 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6948: ((6,2,2)), m=13, a=[2, 4, 4, 5, 6, 7], S=[0, 12]. -/
def code_6948 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6949: ((6,2,2)), m=13, a=[2, 4, 4, 5, 6, 10], S=[0, 12]. -/
def code_6949 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6950: ((6,2,2)), m=13, a=[2, 4, 4, 5, 6, 11], S=[0, 3]. -/
def code_6950 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6951: ((6,2,2)), m=13, a=[2, 4, 4, 5, 6, 12], S=[0, 10]. -/
def code_6951 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6952: ((6,2,2)), m=13, a=[2, 4, 4, 5, 7, 10], S=[0, 12]. -/
def code_6952 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6953: ((6,2,2)), m=13, a=[2, 4, 4, 5, 10, 10], S=[0, 7]. -/
def code_6953 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6954: ((6,2,2)), m=13, a=[2, 4, 4, 5, 10, 11], S=[0, 7]. -/
def code_6954 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6955: ((6,2,2)), m=13, a=[2, 4, 4, 5, 12, 12], S=[0, 6]. -/
def code_6955 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6956: ((6,2,2)), m=13, a=[2, 4, 4, 6, 7, 10], S=[0, 8]. -/
def code_6956 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6957: ((6,2,2)), m=13, a=[2, 4, 4, 6, 7, 12], S=[0, 8]. -/
def code_6957 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6958: ((6,2,2)), m=13, a=[2, 4, 4, 7, 12, 12], S=[0, 5]. -/
def code_6958 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6959: ((6,2,2)), m=13, a=[2, 4, 4, 7, 12, 12], S=[0, 8]. -/
def code_6959 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6960: ((6,2,2)), m=13, a=[2, 4, 4, 8, 11, 12], S=[0, 10]. -/
def code_6960 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6961: ((6,2,2)), m=13, a=[2, 4, 5, 5, 6, 6], S=[0, 12]. -/
def code_6961 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6962: ((6,2,2)), m=13, a=[2, 4, 5, 5, 6, 10], S=[0, 12]. -/
def code_6962 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6963: ((6,2,2)), m=13, a=[2, 4, 5, 5, 6, 12], S=[0, 10]. -/
def code_6963 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6964: ((6,2,2)), m=13, a=[2, 4, 5, 5, 7, 10], S=[0, 1]. -/
def code_6964 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6965: ((6,2,2)), m=13, a=[2, 4, 5, 5, 7, 12], S=[0, 3]. -/
def code_6965 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6966: ((6,2,2)), m=13, a=[2, 4, 5, 5, 7, 12], S=[0, 10]. -/
def code_6966 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6967: ((6,2,2)), m=13, a=[2, 4, 5, 5, 9, 10], S=[0, 6]. -/
def code_6967 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6968: ((6,2,2)), m=13, a=[2, 4, 5, 5, 10, 10], S=[0, 6]. -/
def code_6968 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6969: ((6,2,2)), m=13, a=[2, 4, 5, 5, 10, 11], S=[0, 12]. -/
def code_6969 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6970: ((6,2,2)), m=13, a=[2, 4, 5, 5, 10, 12], S=[0, 6]. -/
def code_6970 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6971: ((6,2,2)), m=13, a=[2, 4, 5, 5, 12, 12], S=[0, 3]. -/
def code_6971 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6972: ((6,2,2)), m=13, a=[2, 4, 5, 6, 6, 10], S=[0, 12]. -/
def code_6972 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6973: ((6,2,2)), m=13, a=[2, 4, 5, 6, 7, 10], S=[0, 12]. -/
def code_6973 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6974: ((6,2,2)), m=13, a=[2, 4, 5, 6, 7, 11], S=[0, 12]. -/
def code_6974 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6975: ((6,2,2)), m=13, a=[2, 4, 5, 6, 8, 12], S=[0, 10]. -/
def code_6975 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6976: ((6,2,2)), m=13, a=[2, 4, 5, 6, 9, 11], S=[0, 12]. -/
def code_6976 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6977: ((6,2,2)), m=13, a=[2, 4, 5, 6, 10, 10], S=[0, 12]. -/
def code_6977 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6978: ((6,2,2)), m=13, a=[2, 4, 5, 6, 12, 12], S=[0, 10]. -/
def code_6978 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6979: ((6,2,2)), m=13, a=[2, 4, 5, 7, 7, 10], S=[0, 1]. -/
def code_6979 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6980: ((6,2,2)), m=13, a=[2, 4, 5, 7, 7, 12], S=[0, 3]. -/
def code_6980 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6981: ((6,2,2)), m=13, a=[2, 4, 5, 7, 8, 11], S=[0, 10]. -/
def code_6981 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6982: ((6,2,2)), m=13, a=[2, 4, 5, 7, 8, 12], S=[0, 10]. -/
def code_6982 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6983: ((6,2,2)), m=13, a=[2, 4, 5, 7, 9, 10], S=[0, 12]. -/
def code_6983 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6984: ((6,2,2)), m=13, a=[2, 4, 5, 7, 9, 12], S=[0, 3]. -/
def code_6984 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6985: ((6,2,2)), m=13, a=[2, 4, 5, 7, 10, 10], S=[0, 1]. -/
def code_6985 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6986: ((6,2,2)), m=13, a=[2, 4, 5, 7, 11, 12], S=[0, 10]. -/
def code_6986 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6987: ((6,2,2)), m=13, a=[2, 4, 5, 8, 9, 10], S=[0, 1]. -/
def code_6987 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6988: ((6,2,2)), m=13, a=[2, 4, 5, 8, 9, 12], S=[0, 3]. -/
def code_6988 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6989: ((6,2,2)), m=13, a=[2, 4, 5, 8, 11, 12], S=[0, 10]. -/
def code_6989 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6990: ((6,2,2)), m=13, a=[2, 4, 5, 9, 10, 10], S=[0, 6]. -/
def code_6990 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6991: ((6,2,2)), m=13, a=[2, 4, 5, 9, 10, 12], S=[0, 6]. -/
def code_6991 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6992: ((6,2,2)), m=13, a=[2, 4, 5, 9, 12, 12], S=[0, 7]. -/
def code_6992 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6993: ((6,2,2)), m=13, a=[2, 4, 5, 10, 10, 11], S=[0, 7]. -/
def code_6993 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6994: ((6,2,2)), m=13, a=[2, 4, 5, 10, 10, 12], S=[0, 6]. -/
def code_6994 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6995: ((6,2,2)), m=13, a=[2, 4, 6, 6, 11, 12], S=[0, 3]. -/
def code_6995 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6996: ((6,2,2)), m=13, a=[2, 4, 6, 7, 12, 12], S=[0, 8]. -/
def code_6996 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6997: ((6,2,2)), m=13, a=[2, 4, 6, 8, 9, 10], S=[0, 1]. -/
def code_6997 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6998: ((6,2,2)), m=13, a=[2, 4, 6, 9, 10, 12], S=[0, 5]. -/
def code_6998 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6999: ((6,2,2)), m=13, a=[2, 4, 6, 9, 12, 12], S=[0, 8]. -/
def code_6999 : ExampleData 6 13 2 where
  a := ![(2 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]
def checks : List Bool :=
  [decide code_6500.OK,
   decide code_6501.OK,
   decide code_6502.OK,
   decide code_6503.OK,
   decide code_6504.OK,
   decide code_6505.OK,
   decide code_6506.OK,
   decide code_6507.OK,
   decide code_6508.OK,
   decide code_6509.OK,
   decide code_6510.OK,
   decide code_6511.OK,
   decide code_6512.OK,
   decide code_6513.OK,
   decide code_6514.OK,
   decide code_6515.OK,
   decide code_6516.OK,
   decide code_6517.OK,
   decide code_6518.OK,
   decide code_6519.OK,
   decide code_6520.OK,
   decide code_6521.OK,
   decide code_6522.OK,
   decide code_6523.OK,
   decide code_6524.OK,
   decide code_6525.OK,
   decide code_6526.OK,
   decide code_6527.OK,
   decide code_6528.OK,
   decide code_6529.OK,
   decide code_6530.OK,
   decide code_6531.OK,
   decide code_6532.OK,
   decide code_6533.OK,
   decide code_6534.OK,
   decide code_6535.OK,
   decide code_6536.OK,
   decide code_6537.OK,
   decide code_6538.OK,
   decide code_6539.OK,
   decide code_6540.OK,
   decide code_6541.OK,
   decide code_6542.OK,
   decide code_6543.OK,
   decide code_6544.OK,
   decide code_6545.OK,
   decide code_6546.OK,
   decide code_6547.OK,
   decide code_6548.OK,
   decide code_6549.OK,
   decide code_6550.OK,
   decide code_6551.OK,
   decide code_6552.OK,
   decide code_6553.OK,
   decide code_6554.OK,
   decide code_6555.OK,
   decide code_6556.OK,
   decide code_6557.OK,
   decide code_6558.OK,
   decide code_6559.OK,
   decide code_6560.OK,
   decide code_6561.OK,
   decide code_6562.OK,
   decide code_6563.OK,
   decide code_6564.OK,
   decide code_6565.OK,
   decide code_6566.OK,
   decide code_6567.OK,
   decide code_6568.OK,
   decide code_6569.OK,
   decide code_6570.OK,
   decide code_6571.OK,
   decide code_6572.OK,
   decide code_6573.OK,
   decide code_6574.OK,
   decide code_6575.OK,
   decide code_6576.OK,
   decide code_6577.OK,
   decide code_6578.OK,
   decide code_6579.OK,
   decide code_6580.OK,
   decide code_6581.OK,
   decide code_6582.OK,
   decide code_6583.OK,
   decide code_6584.OK,
   decide code_6585.OK,
   decide code_6586.OK,
   decide code_6587.OK,
   decide code_6588.OK,
   decide code_6589.OK,
   decide code_6590.OK,
   decide code_6591.OK,
   decide code_6592.OK,
   decide code_6593.OK,
   decide code_6594.OK,
   decide code_6595.OK,
   decide code_6596.OK,
   decide code_6597.OK,
   decide code_6598.OK,
   decide code_6599.OK,
   decide code_6600.OK,
   decide code_6601.OK,
   decide code_6602.OK,
   decide code_6603.OK,
   decide code_6604.OK,
   decide code_6605.OK,
   decide code_6606.OK,
   decide code_6607.OK,
   decide code_6608.OK,
   decide code_6609.OK,
   decide code_6610.OK,
   decide code_6611.OK,
   decide code_6612.OK,
   decide code_6613.OK,
   decide code_6614.OK,
   decide code_6615.OK,
   decide code_6616.OK,
   decide code_6617.OK,
   decide code_6618.OK,
   decide code_6619.OK,
   decide code_6620.OK,
   decide code_6621.OK,
   decide code_6622.OK,
   decide code_6623.OK,
   decide code_6624.OK,
   decide code_6625.OK,
   decide code_6626.OK,
   decide code_6627.OK,
   decide code_6628.OK,
   decide code_6629.OK,
   decide code_6630.OK,
   decide code_6631.OK,
   decide code_6632.OK,
   decide code_6633.OK,
   decide code_6634.OK,
   decide code_6635.OK,
   decide code_6636.OK,
   decide code_6637.OK,
   decide code_6638.OK,
   decide code_6639.OK,
   decide code_6640.OK,
   decide code_6641.OK,
   decide code_6642.OK,
   decide code_6643.OK,
   decide code_6644.OK,
   decide code_6645.OK,
   decide code_6646.OK,
   decide code_6647.OK,
   decide code_6648.OK,
   decide code_6649.OK,
   decide code_6650.OK,
   decide code_6651.OK,
   decide code_6652.OK,
   decide code_6653.OK,
   decide code_6654.OK,
   decide code_6655.OK,
   decide code_6656.OK,
   decide code_6657.OK,
   decide code_6658.OK,
   decide code_6659.OK,
   decide code_6660.OK,
   decide code_6661.OK,
   decide code_6662.OK,
   decide code_6663.OK,
   decide code_6664.OK,
   decide code_6665.OK,
   decide code_6666.OK,
   decide code_6667.OK,
   decide code_6668.OK,
   decide code_6669.OK,
   decide code_6670.OK,
   decide code_6671.OK,
   decide code_6672.OK,
   decide code_6673.OK,
   decide code_6674.OK,
   decide code_6675.OK,
   decide code_6676.OK,
   decide code_6677.OK,
   decide code_6678.OK,
   decide code_6679.OK,
   decide code_6680.OK,
   decide code_6681.OK,
   decide code_6682.OK,
   decide code_6683.OK,
   decide code_6684.OK,
   decide code_6685.OK,
   decide code_6686.OK,
   decide code_6687.OK,
   decide code_6688.OK,
   decide code_6689.OK,
   decide code_6690.OK,
   decide code_6691.OK,
   decide code_6692.OK,
   decide code_6693.OK,
   decide code_6694.OK,
   decide code_6695.OK,
   decide code_6696.OK,
   decide code_6697.OK,
   decide code_6698.OK,
   decide code_6699.OK,
   decide code_6700.OK,
   decide code_6701.OK,
   decide code_6702.OK,
   decide code_6703.OK,
   decide code_6704.OK,
   decide code_6705.OK,
   decide code_6706.OK,
   decide code_6707.OK,
   decide code_6708.OK,
   decide code_6709.OK,
   decide code_6710.OK,
   decide code_6711.OK,
   decide code_6712.OK,
   decide code_6713.OK,
   decide code_6714.OK,
   decide code_6715.OK,
   decide code_6716.OK,
   decide code_6717.OK,
   decide code_6718.OK,
   decide code_6719.OK,
   decide code_6720.OK,
   decide code_6721.OK,
   decide code_6722.OK,
   decide code_6723.OK,
   decide code_6724.OK,
   decide code_6725.OK,
   decide code_6726.OK,
   decide code_6727.OK,
   decide code_6728.OK,
   decide code_6729.OK,
   decide code_6730.OK,
   decide code_6731.OK,
   decide code_6732.OK,
   decide code_6733.OK,
   decide code_6734.OK,
   decide code_6735.OK,
   decide code_6736.OK,
   decide code_6737.OK,
   decide code_6738.OK,
   decide code_6739.OK,
   decide code_6740.OK,
   decide code_6741.OK,
   decide code_6742.OK,
   decide code_6743.OK,
   decide code_6744.OK,
   decide code_6745.OK,
   decide code_6746.OK,
   decide code_6747.OK,
   decide code_6748.OK,
   decide code_6749.OK,
   decide code_6750.OK,
   decide code_6751.OK,
   decide code_6752.OK,
   decide code_6753.OK,
   decide code_6754.OK,
   decide code_6755.OK,
   decide code_6756.OK,
   decide code_6757.OK,
   decide code_6758.OK,
   decide code_6759.OK,
   decide code_6760.OK,
   decide code_6761.OK,
   decide code_6762.OK,
   decide code_6763.OK,
   decide code_6764.OK,
   decide code_6765.OK,
   decide code_6766.OK,
   decide code_6767.OK,
   decide code_6768.OK,
   decide code_6769.OK,
   decide code_6770.OK,
   decide code_6771.OK,
   decide code_6772.OK,
   decide code_6773.OK,
   decide code_6774.OK,
   decide code_6775.OK,
   decide code_6776.OK,
   decide code_6777.OK,
   decide code_6778.OK,
   decide code_6779.OK,
   decide code_6780.OK,
   decide code_6781.OK,
   decide code_6782.OK,
   decide code_6783.OK,
   decide code_6784.OK,
   decide code_6785.OK,
   decide code_6786.OK,
   decide code_6787.OK,
   decide code_6788.OK,
   decide code_6789.OK,
   decide code_6790.OK,
   decide code_6791.OK,
   decide code_6792.OK,
   decide code_6793.OK,
   decide code_6794.OK,
   decide code_6795.OK,
   decide code_6796.OK,
   decide code_6797.OK,
   decide code_6798.OK,
   decide code_6799.OK,
   decide code_6800.OK,
   decide code_6801.OK,
   decide code_6802.OK,
   decide code_6803.OK,
   decide code_6804.OK,
   decide code_6805.OK,
   decide code_6806.OK,
   decide code_6807.OK,
   decide code_6808.OK,
   decide code_6809.OK,
   decide code_6810.OK,
   decide code_6811.OK,
   decide code_6812.OK,
   decide code_6813.OK,
   decide code_6814.OK,
   decide code_6815.OK,
   decide code_6816.OK,
   decide code_6817.OK,
   decide code_6818.OK,
   decide code_6819.OK,
   decide code_6820.OK,
   decide code_6821.OK,
   decide code_6822.OK,
   decide code_6823.OK,
   decide code_6824.OK,
   decide code_6825.OK,
   decide code_6826.OK,
   decide code_6827.OK,
   decide code_6828.OK,
   decide code_6829.OK,
   decide code_6830.OK,
   decide code_6831.OK,
   decide code_6832.OK,
   decide code_6833.OK,
   decide code_6834.OK,
   decide code_6835.OK,
   decide code_6836.OK,
   decide code_6837.OK,
   decide code_6838.OK,
   decide code_6839.OK,
   decide code_6840.OK,
   decide code_6841.OK,
   decide code_6842.OK,
   decide code_6843.OK,
   decide code_6844.OK,
   decide code_6845.OK,
   decide code_6846.OK,
   decide code_6847.OK,
   decide code_6848.OK,
   decide code_6849.OK,
   decide code_6850.OK,
   decide code_6851.OK,
   decide code_6852.OK,
   decide code_6853.OK,
   decide code_6854.OK,
   decide code_6855.OK,
   decide code_6856.OK,
   decide code_6857.OK,
   decide code_6858.OK,
   decide code_6859.OK,
   decide code_6860.OK,
   decide code_6861.OK,
   decide code_6862.OK,
   decide code_6863.OK,
   decide code_6864.OK,
   decide code_6865.OK,
   decide code_6866.OK,
   decide code_6867.OK,
   decide code_6868.OK,
   decide code_6869.OK,
   decide code_6870.OK,
   decide code_6871.OK,
   decide code_6872.OK,
   decide code_6873.OK,
   decide code_6874.OK,
   decide code_6875.OK,
   decide code_6876.OK,
   decide code_6877.OK,
   decide code_6878.OK,
   decide code_6879.OK,
   decide code_6880.OK,
   decide code_6881.OK,
   decide code_6882.OK,
   decide code_6883.OK,
   decide code_6884.OK,
   decide code_6885.OK,
   decide code_6886.OK,
   decide code_6887.OK,
   decide code_6888.OK,
   decide code_6889.OK,
   decide code_6890.OK,
   decide code_6891.OK,
   decide code_6892.OK,
   decide code_6893.OK,
   decide code_6894.OK,
   decide code_6895.OK,
   decide code_6896.OK,
   decide code_6897.OK,
   decide code_6898.OK,
   decide code_6899.OK,
   decide code_6900.OK,
   decide code_6901.OK,
   decide code_6902.OK,
   decide code_6903.OK,
   decide code_6904.OK,
   decide code_6905.OK,
   decide code_6906.OK,
   decide code_6907.OK,
   decide code_6908.OK,
   decide code_6909.OK,
   decide code_6910.OK,
   decide code_6911.OK,
   decide code_6912.OK,
   decide code_6913.OK,
   decide code_6914.OK,
   decide code_6915.OK,
   decide code_6916.OK,
   decide code_6917.OK,
   decide code_6918.OK,
   decide code_6919.OK,
   decide code_6920.OK,
   decide code_6921.OK,
   decide code_6922.OK,
   decide code_6923.OK,
   decide code_6924.OK,
   decide code_6925.OK,
   decide code_6926.OK,
   decide code_6927.OK,
   decide code_6928.OK,
   decide code_6929.OK,
   decide code_6930.OK,
   decide code_6931.OK,
   decide code_6932.OK,
   decide code_6933.OK,
   decide code_6934.OK,
   decide code_6935.OK,
   decide code_6936.OK,
   decide code_6937.OK,
   decide code_6938.OK,
   decide code_6939.OK,
   decide code_6940.OK,
   decide code_6941.OK,
   decide code_6942.OK,
   decide code_6943.OK,
   decide code_6944.OK,
   decide code_6945.OK,
   decide code_6946.OK,
   decide code_6947.OK,
   decide code_6948.OK,
   decide code_6949.OK,
   decide code_6950.OK,
   decide code_6951.OK,
   decide code_6952.OK,
   decide code_6953.OK,
   decide code_6954.OK,
   decide code_6955.OK,
   decide code_6956.OK,
   decide code_6957.OK,
   decide code_6958.OK,
   decide code_6959.OK,
   decide code_6960.OK,
   decide code_6961.OK,
   decide code_6962.OK,
   decide code_6963.OK,
   decide code_6964.OK,
   decide code_6965.OK,
   decide code_6966.OK,
   decide code_6967.OK,
   decide code_6968.OK,
   decide code_6969.OK,
   decide code_6970.OK,
   decide code_6971.OK,
   decide code_6972.OK,
   decide code_6973.OK,
   decide code_6974.OK,
   decide code_6975.OK,
   decide code_6976.OK,
   decide code_6977.OK,
   decide code_6978.OK,
   decide code_6979.OK,
   decide code_6980.OK,
   decide code_6981.OK,
   decide code_6982.OK,
   decide code_6983.OK,
   decide code_6984.OK,
   decide code_6985.OK,
   decide code_6986.OK,
   decide code_6987.OK,
   decide code_6988.OK,
   decide code_6989.OK,
   decide code_6990.OK,
   decide code_6991.OK,
   decide code_6992.OK,
   decide code_6993.OK,
   decide code_6994.OK,
   decide code_6995.OK,
   decide code_6996.OK,
   decide code_6997.OK,
   decide code_6998.OK,
   decide code_6999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk013
