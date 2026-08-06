import SS

namespace Catalogue.Chunk019

open SS SS.Verify

/-- Catalogue code #9500: ((6,2,2)), m=14, a=[2, 3, 5, 8, 8, 10], S=[0, 1]. -/
def code_9500 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9501: ((6,2,2)), m=14, a=[2, 3, 5, 8, 9, 12], S=[0, 1]. -/
def code_9501 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9502: ((6,2,2)), m=14, a=[2, 3, 5, 8, 9, 12], S=[0, 10]. -/
def code_9502 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9503: ((6,2,2)), m=14, a=[2, 3, 5, 8, 9, 13], S=[0, 10]. -/
def code_9503 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9504: ((6,2,2)), m=14, a=[2, 3, 5, 8, 10, 10], S=[0, 13]. -/
def code_9504 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9505: ((6,2,2)), m=14, a=[2, 3, 5, 8, 10, 11], S=[0, 1]. -/
def code_9505 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9506: ((6,2,2)), m=14, a=[2, 3, 5, 8, 12, 12], S=[0, 4]. -/
def code_9506 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9507: ((6,2,2)), m=14, a=[2, 3, 5, 8, 12, 13], S=[0, 10]. -/
def code_9507 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9508: ((6,2,2)), m=14, a=[2, 3, 5, 9, 10, 10], S=[0, 8]. -/
def code_9508 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9509: ((6,2,2)), m=14, a=[2, 3, 5, 9, 10, 11], S=[0, 8]. -/
def code_9509 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9510: ((6,2,2)), m=14, a=[2, 3, 5, 9, 12, 13], S=[0, 10]. -/
def code_9510 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9511: ((6,2,2)), m=14, a=[2, 3, 5, 10, 10, 11], S=[0, 8]. -/
def code_9511 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9512: ((6,2,2)), m=14, a=[2, 3, 5, 10, 11, 13], S=[0, 6]. -/
def code_9512 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9513: ((6,2,2)), m=14, a=[2, 3, 5, 10, 12, 12], S=[0, 6]. -/
def code_9513 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9514: ((6,2,2)), m=14, a=[2, 3, 6, 6, 6, 7], S=[0, 4]. -/
def code_9514 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9515: ((6,2,2)), m=14, a=[2, 3, 6, 6, 6, 13], S=[0, 4]. -/
def code_9515 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9516: ((6,2,2)), m=14, a=[2, 3, 6, 6, 7, 9], S=[0, 1]. -/
def code_9516 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9517: ((6,2,2)), m=14, a=[2, 3, 6, 6, 7, 10], S=[0, 1]. -/
def code_9517 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9518: ((6,2,2)), m=14, a=[2, 3, 6, 6, 7, 10], S=[0, 5]. -/
def code_9518 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9519: ((6,2,2)), m=14, a=[2, 3, 6, 6, 7, 12], S=[0, 4]. -/
def code_9519 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9520: ((6,2,2)), m=14, a=[2, 3, 6, 6, 7, 12], S=[0, 10]. -/
def code_9520 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9521: ((6,2,2)), m=14, a=[2, 3, 6, 6, 7, 13], S=[0, 5]. -/
def code_9521 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9522: ((6,2,2)), m=14, a=[2, 3, 6, 6, 8, 12], S=[0, 10]. -/
def code_9522 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9523: ((6,2,2)), m=14, a=[2, 3, 6, 6, 9, 10], S=[0, 1]. -/
def code_9523 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]

/-- Catalogue code #9524: ((6,2,2)), m=14, a=[2, 3, 6, 6, 10, 13], S=[0, 5]. -/
def code_9524 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9525: ((6,2,2)), m=14, a=[2, 3, 6, 6, 12, 13], S=[0, 4]. -/
def code_9525 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9526: ((6,2,2)), m=14, a=[2, 3, 6, 6, 13, 13], S=[0, 5]. -/
def code_9526 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9527: ((6,2,2)), m=14, a=[2, 3, 6, 7, 8, 8], S=[0, 4]. -/
def code_9527 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9528: ((6,2,2)), m=14, a=[2, 3, 6, 7, 8, 10], S=[0, 9]. -/
def code_9528 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9529: ((6,2,2)), m=14, a=[2, 3, 6, 7, 8, 10], S=[0, 13]. -/
def code_9529 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9530: ((6,2,2)), m=14, a=[2, 3, 6, 7, 8, 12], S=[0, 4]. -/
def code_9530 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9531: ((6,2,2)), m=14, a=[2, 3, 6, 7, 9, 10], S=[0, 1]. -/
def code_9531 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9532: ((6,2,2)), m=14, a=[2, 3, 6, 7, 9, 10], S=[0, 13]. -/
def code_9532 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9533: ((6,2,2)), m=14, a=[2, 3, 6, 7, 9, 12], S=[0, 10]. -/
def code_9533 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9534: ((6,2,2)), m=14, a=[2, 3, 6, 7, 9, 13], S=[0, 10]. -/
def code_9534 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9535: ((6,2,2)), m=14, a=[2, 3, 6, 7, 10, 10], S=[0, 1]. -/
def code_9535 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9536: ((6,2,2)), m=14, a=[2, 3, 6, 7, 10, 13], S=[0, 5]. -/
def code_9536 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9537: ((6,2,2)), m=14, a=[2, 3, 6, 7, 12, 13], S=[0, 4]. -/
def code_9537 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9538: ((6,2,2)), m=14, a=[2, 3, 6, 7, 12, 13], S=[0, 5]. -/
def code_9538 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9539: ((6,2,2)), m=14, a=[2, 3, 6, 7, 13, 13], S=[0, 5]. -/
def code_9539 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #9540: ((6,2,2)), m=14, a=[2, 3, 6, 8, 8, 9], S=[0, 4]. -/
def code_9540 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9541: ((6,2,2)), m=14, a=[2, 3, 6, 8, 8, 12], S=[0, 4]. -/
def code_9541 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9542: ((6,2,2)), m=14, a=[2, 3, 6, 9, 10, 10], S=[0, 1]. -/
def code_9542 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9543: ((6,2,2)), m=14, a=[2, 3, 6, 10, 10, 11], S=[0, 5]. -/
def code_9543 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9544: ((6,2,2)), m=14, a=[2, 3, 6, 10, 10, 13], S=[0, 5]. -/
def code_9544 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((6 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9545: ((6,2,2)), m=14, a=[2, 3, 7, 8, 8, 8], S=[0, 10]. -/
def code_9545 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9546: ((6,2,2)), m=14, a=[2, 3, 7, 8, 8, 9], S=[0, 13]. -/
def code_9546 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-5 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9547: ((6,2,2)), m=14, a=[2, 3, 7, 8, 8, 10], S=[0, 1]. -/
def code_9547 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9548: ((6,2,2)), m=14, a=[2, 3, 7, 8, 8, 10], S=[0, 5]. -/
def code_9548 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9549: ((6,2,2)), m=14, a=[2, 3, 7, 8, 8, 10], S=[0, 9]. -/
def code_9549 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9550: ((6,2,2)), m=14, a=[2, 3, 7, 8, 8, 12], S=[0, 4]. -/
def code_9550 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9551: ((6,2,2)), m=14, a=[2, 3, 7, 8, 8, 12], S=[0, 10]. -/
def code_9551 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9552: ((6,2,2)), m=14, a=[2, 3, 7, 8, 8, 13], S=[0, 9]. -/
def code_9552 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9553: ((6,2,2)), m=14, a=[2, 3, 7, 8, 9, 10], S=[0, 1]. -/
def code_9553 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9554: ((6,2,2)), m=14, a=[2, 3, 7, 8, 9, 11], S=[0, 13]. -/
def code_9554 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9555: ((6,2,2)), m=14, a=[2, 3, 7, 8, 9, 13], S=[0, 10]. -/
def code_9555 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9556: ((6,2,2)), m=14, a=[2, 3, 7, 8, 10, 13], S=[0, 9]. -/
def code_9556 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9557: ((6,2,2)), m=14, a=[2, 3, 7, 8, 11, 13], S=[0, 4]. -/
def code_9557 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9558: ((6,2,2)), m=14, a=[2, 3, 7, 8, 12, 12], S=[0, 10]. -/
def code_9558 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9559: ((6,2,2)), m=14, a=[2, 3, 7, 9, 9, 10], S=[0, 6]. -/
def code_9559 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9560: ((6,2,2)), m=14, a=[2, 3, 7, 9, 9, 10], S=[0, 13]. -/
def code_9560 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9561: ((6,2,2)), m=14, a=[2, 3, 7, 9, 10, 13], S=[0, 8]. -/
def code_9561 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9562: ((6,2,2)), m=14, a=[2, 3, 7, 9, 13, 13], S=[0, 8]. -/
def code_9562 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9563: ((6,2,2)), m=14, a=[2, 3, 7, 9, 13, 13], S=[0, 10]. -/
def code_9563 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9564: ((6,2,2)), m=14, a=[2, 3, 7, 10, 10, 12], S=[0, 8]. -/
def code_9564 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9565: ((6,2,2)), m=14, a=[2, 3, 8, 8, 8, 13], S=[0, 10]. -/
def code_9565 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9566: ((6,2,2)), m=14, a=[2, 3, 8, 8, 9, 10], S=[0, 13]. -/
def code_9566 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]

/-- Catalogue code #9567: ((6,2,2)), m=14, a=[2, 3, 8, 8, 10, 11], S=[0, 1]. -/
def code_9567 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9568: ((6,2,2)), m=14, a=[2, 3, 8, 8, 10, 13], S=[0, 9]. -/
def code_9568 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9569: ((6,2,2)), m=14, a=[2, 3, 8, 8, 12, 12], S=[0, 4]. -/
def code_9569 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (1 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9570: ((6,2,2)), m=14, a=[2, 3, 8, 10, 11, 13], S=[0, 9]. -/
def code_9570 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9571: ((6,2,2)), m=14, a=[2, 3, 9, 9, 9, 12], S=[0, 1]. -/
def code_9571 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9572: ((6,2,2)), m=14, a=[2, 3, 9, 10, 10, 10], S=[0, 8]. -/
def code_9572 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9573: ((6,2,2)), m=14, a=[2, 4, 4, 4, 5, 7], S=[0, 6]. -/
def code_9573 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9574: ((6,2,2)), m=14, a=[2, 4, 4, 4, 5, 11], S=[0, 8]. -/
def code_9574 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9575: ((6,2,2)), m=14, a=[2, 4, 4, 4, 5, 12], S=[0, 6]. -/
def code_9575 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((3 : ℚ) / 7)]

/-- Catalogue code #9576: ((6,2,2)), m=14, a=[2, 4, 4, 4, 7, 13], S=[0, 8]. -/
def code_9576 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9577: ((6,2,2)), m=14, a=[2, 4, 4, 4, 9, 13], S=[0, 6]. -/
def code_9577 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9578: ((6,2,2)), m=14, a=[2, 4, 4, 5, 6, 7], S=[0, 1]. -/
def code_9578 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9579: ((6,2,2)), m=14, a=[2, 4, 4, 5, 7, 8], S=[0, 1]. -/
def code_9579 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #9580: ((6,2,2)), m=14, a=[2, 4, 4, 5, 7, 8], S=[0, 3]. -/
def code_9580 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7)]

/-- Catalogue code #9581: ((6,2,2)), m=14, a=[2, 4, 4, 5, 7, 8], S=[0, 13]. -/
def code_9581 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7)]

/-- Catalogue code #9582: ((6,2,2)), m=14, a=[2, 4, 4, 5, 7, 11], S=[0, 6]. -/
def code_9582 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9583: ((6,2,2)), m=14, a=[2, 4, 4, 5, 7, 11], S=[0, 13]. -/
def code_9583 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9584: ((6,2,2)), m=14, a=[2, 4, 4, 5, 7, 13], S=[0, 6]. -/
def code_9584 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9585: ((6,2,2)), m=14, a=[2, 4, 4, 5, 8, 11], S=[0, 13]. -/
def code_9585 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9586: ((6,2,2)), m=14, a=[2, 4, 4, 5, 13, 13], S=[0, 6]. -/
def code_9586 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9587: ((6,2,2)), m=14, a=[2, 4, 4, 6, 7, 9], S=[0, 1]. -/
def code_9587 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9588: ((6,2,2)), m=14, a=[2, 4, 4, 6, 7, 9], S=[0, 3]. -/
def code_9588 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9589: ((6,2,2)), m=14, a=[2, 4, 4, 6, 7, 11], S=[0, 1]. -/
def code_9589 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9590: ((6,2,2)), m=14, a=[2, 4, 4, 6, 7, 13], S=[0, 3]. -/
def code_9590 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9591: ((6,2,2)), m=14, a=[2, 4, 4, 6, 9, 9], S=[0, 3]. -/
def code_9591 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9592: ((6,2,2)), m=14, a=[2, 4, 4, 6, 9, 11], S=[0, 1]. -/
def code_9592 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9593: ((6,2,2)), m=14, a=[2, 4, 4, 6, 9, 13], S=[0, 3]. -/
def code_9593 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9594: ((6,2,2)), m=14, a=[2, 4, 4, 6, 11, 11], S=[0, 5]. -/
def code_9594 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9595: ((6,2,2)), m=14, a=[2, 4, 4, 7, 8, 11], S=[0, 13]. -/
def code_9595 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9596: ((6,2,2)), m=14, a=[2, 4, 4, 7, 9, 11], S=[0, 1]. -/
def code_9596 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9597: ((6,2,2)), m=14, a=[2, 4, 4, 7, 9, 13], S=[0, 3]. -/
def code_9597 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9598: ((6,2,2)), m=14, a=[2, 4, 4, 7, 9, 13], S=[0, 8]. -/
def code_9598 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9599: ((6,2,2)), m=14, a=[2, 4, 4, 7, 11, 12], S=[0, 6]. -/
def code_9599 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9600: ((6,2,2)), m=14, a=[2, 4, 4, 7, 12, 13], S=[0, 6]. -/
def code_9600 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9601: ((6,2,2)), m=14, a=[2, 4, 4, 7, 13, 13], S=[0, 6]. -/
def code_9601 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9602: ((6,2,2)), m=14, a=[2, 4, 4, 8, 9, 9], S=[0, 11]. -/
def code_9602 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9603: ((6,2,2)), m=14, a=[2, 4, 4, 8, 9, 11], S=[0, 13]. -/
def code_9603 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9604: ((6,2,2)), m=14, a=[2, 4, 4, 9, 9, 11], S=[0, 8]. -/
def code_9604 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9605: ((6,2,2)), m=14, a=[2, 4, 4, 9, 11, 12], S=[0, 6]. -/
def code_9605 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9606: ((6,2,2)), m=14, a=[2, 4, 4, 9, 12, 13], S=[0, 6]. -/
def code_9606 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9607: ((6,2,2)), m=14, a=[2, 4, 4, 9, 12, 13], S=[0, 8]. -/
def code_9607 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9608: ((6,2,2)), m=14, a=[2, 4, 4, 11, 11, 12], S=[0, 6]. -/
def code_9608 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9609: ((6,2,2)), m=14, a=[2, 4, 4, 11, 11, 12], S=[0, 8]. -/
def code_9609 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9610: ((6,2,2)), m=14, a=[2, 4, 5, 5, 8, 10], S=[0, 3]. -/
def code_9610 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9611: ((6,2,2)), m=14, a=[2, 4, 5, 5, 10, 11], S=[0, 6]. -/
def code_9611 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9612: ((6,2,2)), m=14, a=[2, 4, 5, 5, 11, 11], S=[0, 6]. -/
def code_9612 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9613: ((6,2,2)), m=14, a=[2, 4, 5, 5, 12, 12], S=[0, 6]. -/
def code_9613 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9614: ((6,2,2)), m=14, a=[2, 4, 5, 6, 6, 7], S=[0, 13]. -/
def code_9614 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((5 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9615: ((6,2,2)), m=14, a=[2, 4, 5, 6, 6, 11], S=[0, 13]. -/
def code_9615 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9616: ((6,2,2)), m=14, a=[2, 4, 5, 6, 7, 8], S=[0, 1]. -/
def code_9616 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((5 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #9617: ((6,2,2)), m=14, a=[2, 4, 5, 6, 7, 11], S=[0, 1]. -/
def code_9617 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9618: ((6,2,2)), m=14, a=[2, 4, 5, 6, 7, 13], S=[0, 11]. -/
def code_9618 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9619: ((6,2,2)), m=14, a=[2, 4, 5, 6, 8, 11], S=[0, 1]. -/
def code_9619 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9620: ((6,2,2)), m=14, a=[2, 4, 5, 6, 8, 13], S=[0, 11]. -/
def code_9620 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9621: ((6,2,2)), m=14, a=[2, 4, 5, 7, 8, 11], S=[0, 1]. -/
def code_9621 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9622: ((6,2,2)), m=14, a=[2, 4, 5, 7, 8, 11], S=[0, 13]. -/
def code_9622 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9623: ((6,2,2)), m=14, a=[2, 4, 5, 7, 8, 12], S=[0, 11]. -/
def code_9623 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9624: ((6,2,2)), m=14, a=[2, 4, 5, 7, 9, 13], S=[0, 11]. -/
def code_9624 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9625: ((6,2,2)), m=14, a=[2, 4, 5, 7, 10, 12], S=[0, 6]. -/
def code_9625 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9626: ((6,2,2)), m=14, a=[2, 4, 5, 7, 11, 13], S=[0, 6]. -/
def code_9626 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9627: ((6,2,2)), m=14, a=[2, 4, 5, 7, 13, 13], S=[0, 6]. -/
def code_9627 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9628: ((6,2,2)), m=14, a=[2, 4, 5, 7, 13, 13], S=[0, 11]. -/
def code_9628 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9629: ((6,2,2)), m=14, a=[2, 4, 5, 8, 9, 11], S=[0, 13]. -/
def code_9629 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9630: ((6,2,2)), m=14, a=[2, 4, 5, 8, 9, 12], S=[0, 1]. -/
def code_9630 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7)]

/-- Catalogue code #9631: ((6,2,2)), m=14, a=[2, 4, 5, 8, 9, 12], S=[0, 11]. -/
def code_9631 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]

/-- Catalogue code #9632: ((6,2,2)), m=14, a=[2, 4, 5, 8, 9, 13], S=[0, 11]. -/
def code_9632 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9633: ((6,2,2)), m=14, a=[2, 4, 5, 8, 10, 11], S=[0, 1]. -/
def code_9633 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9634: ((6,2,2)), m=14, a=[2, 4, 5, 8, 10, 13], S=[0, 3]. -/
def code_9634 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9635: ((6,2,2)), m=14, a=[2, 4, 5, 8, 12, 13], S=[0, 11]. -/
def code_9635 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9636: ((6,2,2)), m=14, a=[2, 4, 5, 9, 13, 13], S=[0, 11]. -/
def code_9636 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9637: ((6,2,2)), m=14, a=[2, 4, 5, 10, 10, 11], S=[0, 6]. -/
def code_9637 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9638: ((6,2,2)), m=14, a=[2, 4, 5, 10, 11, 12], S=[0, 8]. -/
def code_9638 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9639: ((6,2,2)), m=14, a=[2, 4, 5, 10, 11, 13], S=[0, 6]. -/
def code_9639 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9640: ((6,2,2)), m=14, a=[2, 4, 5, 10, 12, 12], S=[0, 6]. -/
def code_9640 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9641: ((6,2,2)), m=14, a=[2, 4, 6, 6, 7, 11], S=[0, 9]. -/
def code_9641 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9642: ((6,2,2)), m=14, a=[2, 4, 6, 6, 7, 11], S=[0, 13]. -/
def code_9642 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9643: ((6,2,2)), m=14, a=[2, 4, 6, 6, 9, 13], S=[0, 11]. -/
def code_9643 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9644: ((6,2,2)), m=14, a=[2, 4, 6, 6, 11, 11], S=[0, 13]. -/
def code_9644 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9645: ((6,2,2)), m=14, a=[2, 4, 6, 6, 13, 13], S=[0, 5]. -/
def code_9645 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9646: ((6,2,2)), m=14, a=[2, 4, 6, 6, 13, 13], S=[0, 11]. -/
def code_9646 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9647: ((6,2,2)), m=14, a=[2, 4, 6, 7, 8, 11], S=[0, 1]. -/
def code_9647 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9648: ((6,2,2)), m=14, a=[2, 4, 6, 7, 8, 11], S=[0, 5]. -/
def code_9648 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9649: ((6,2,2)), m=14, a=[2, 4, 6, 7, 8, 11], S=[0, 9]. -/
def code_9649 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9650: ((6,2,2)), m=14, a=[2, 4, 6, 7, 8, 13], S=[0, 9]. -/
def code_9650 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9651: ((6,2,2)), m=14, a=[2, 4, 6, 7, 9, 10], S=[0, 11]. -/
def code_9651 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7)]

/-- Catalogue code #9652: ((6,2,2)), m=14, a=[2, 4, 6, 7, 9, 10], S=[0, 13]. -/
def code_9652 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 7)]

/-- Catalogue code #9653: ((6,2,2)), m=14, a=[2, 4, 6, 7, 9, 11], S=[0, 1]. -/
def code_9653 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9654: ((6,2,2)), m=14, a=[2, 4, 6, 7, 9, 12], S=[0, 11]. -/
def code_9654 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7)]

/-- Catalogue code #9655: ((6,2,2)), m=14, a=[2, 4, 6, 7, 9, 13], S=[0, 3]. -/
def code_9655 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9656: ((6,2,2)), m=14, a=[2, 4, 6, 7, 9, 13], S=[0, 11]. -/
def code_9656 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9657: ((6,2,2)), m=14, a=[2, 4, 6, 7, 11, 13], S=[0, 9]. -/
def code_9657 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9658: ((6,2,2)), m=14, a=[2, 4, 6, 7, 12, 13], S=[0, 5]. -/
def code_9658 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9659: ((6,2,2)), m=14, a=[2, 4, 6, 7, 12, 13], S=[0, 11]. -/
def code_9659 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9660: ((6,2,2)), m=14, a=[2, 4, 6, 8, 11, 13], S=[0, 9]. -/
def code_9660 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9661: ((6,2,2)), m=14, a=[2, 4, 6, 9, 9, 11], S=[0, 1]. -/
def code_9661 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9662: ((6,2,2)), m=14, a=[2, 4, 6, 9, 9, 13], S=[0, 3]. -/
def code_9662 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9663: ((6,2,2)), m=14, a=[2, 4, 6, 9, 12, 13], S=[0, 11]. -/
def code_9663 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9664: ((6,2,2)), m=14, a=[2, 4, 7, 8, 8, 9], S=[0, 13]. -/
def code_9664 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-5 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9665: ((6,2,2)), m=14, a=[2, 4, 7, 8, 9, 10], S=[0, 1]. -/
def code_9665 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7)]

/-- Catalogue code #9666: ((6,2,2)), m=14, a=[2, 4, 7, 8, 9, 10], S=[0, 11]. -/
def code_9666 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]

/-- Catalogue code #9667: ((6,2,2)), m=14, a=[2, 4, 7, 8, 9, 13], S=[0, 3]. -/
def code_9667 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9668: ((6,2,2)), m=14, a=[2, 4, 7, 8, 9, 13], S=[0, 11]. -/
def code_9668 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9669: ((6,2,2)), m=14, a=[2, 4, 7, 8, 10, 13], S=[0, 11]. -/
def code_9669 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9670: ((6,2,2)), m=14, a=[2, 4, 7, 8, 11, 13], S=[0, 5]. -/
def code_9670 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9671: ((6,2,2)), m=14, a=[2, 4, 7, 8, 11, 13], S=[0, 9]. -/
def code_9671 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9672: ((6,2,2)), m=14, a=[2, 4, 7, 9, 9, 11], S=[0, 1]. -/
def code_9672 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9673: ((6,2,2)), m=14, a=[2, 4, 7, 9, 9, 13], S=[0, 3]. -/
def code_9673 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9674: ((6,2,2)), m=14, a=[2, 4, 7, 9, 10, 10], S=[0, 6]. -/
def code_9674 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9675: ((6,2,2)), m=14, a=[2, 4, 7, 9, 10, 12], S=[0, 8]. -/
def code_9675 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9676: ((6,2,2)), m=14, a=[2, 4, 7, 9, 10, 13], S=[0, 6]. -/
def code_9676 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9677: ((6,2,2)), m=14, a=[2, 4, 7, 9, 10, 13], S=[0, 11]. -/
def code_9677 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9678: ((6,2,2)), m=14, a=[2, 4, 7, 9, 11, 13], S=[0, 8]. -/
def code_9678 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9679: ((6,2,2)), m=14, a=[2, 4, 7, 9, 12, 13], S=[0, 11]. -/
def code_9679 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9680: ((6,2,2)), m=14, a=[2, 4, 7, 9, 13, 13], S=[0, 11]. -/
def code_9680 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9681: ((6,2,2)), m=14, a=[2, 4, 7, 10, 10, 13], S=[0, 6]. -/
def code_9681 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9682: ((6,2,2)), m=14, a=[2, 4, 7, 10, 12, 13], S=[0, 8]. -/
def code_9682 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9683: ((6,2,2)), m=14, a=[2, 4, 8, 8, 9, 11], S=[0, 1]. -/
def code_9683 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9684: ((6,2,2)), m=14, a=[2, 4, 8, 8, 9, 13], S=[0, 3]. -/
def code_9684 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9685: ((6,2,2)), m=14, a=[2, 4, 8, 8, 11, 11], S=[0, 1]. -/
def code_9685 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9686: ((6,2,2)), m=14, a=[2, 4, 8, 8, 11, 13], S=[0, 5]. -/
def code_9686 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9687: ((6,2,2)), m=14, a=[2, 4, 8, 8, 13, 13], S=[0, 3]. -/
def code_9687 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9688: ((6,2,2)), m=14, a=[2, 4, 8, 9, 9, 12], S=[0, 1]. -/
def code_9688 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #9689: ((6,2,2)), m=14, a=[2, 4, 8, 9, 10, 13], S=[0, 11]. -/
def code_9689 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9690: ((6,2,2)), m=14, a=[2, 4, 8, 9, 12, 13], S=[0, 11]. -/
def code_9690 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9691: ((6,2,2)), m=14, a=[2, 4, 8, 10, 11, 11], S=[0, 9]. -/
def code_9691 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9692: ((6,2,2)), m=14, a=[2, 4, 8, 10, 11, 13], S=[0, 9]. -/
def code_9692 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((6 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9693: ((6,2,2)), m=14, a=[2, 4, 8, 12, 13, 13], S=[0, 5]. -/
def code_9693 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9694: ((6,2,2)), m=14, a=[2, 4, 9, 10, 10, 13], S=[0, 8]. -/
def code_9694 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9695: ((6,2,2)), m=14, a=[2, 4, 9, 10, 11, 12], S=[0, 8]. -/
def code_9695 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9696: ((6,2,2)), m=14, a=[2, 4, 9, 10, 12, 13], S=[0, 6]. -/
def code_9696 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9697: ((6,2,2)), m=14, a=[2, 4, 9, 12, 12, 13], S=[0, 6]. -/
def code_9697 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9698: ((6,2,2)), m=14, a=[2, 4, 10, 10, 11, 11], S=[0, 8]. -/
def code_9698 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9699: ((6,2,2)), m=14, a=[2, 4, 10, 11, 11, 12], S=[0, 6]. -/
def code_9699 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9700: ((6,2,2)), m=14, a=[2, 4, 10, 12, 12, 13], S=[0, 6]. -/
def code_9700 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ)]

/-- Catalogue code #9701: ((6,2,2)), m=14, a=[2, 4, 11, 11, 12, 12], S=[0, 6]. -/
def code_9701 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9702: ((6,2,2)), m=14, a=[2, 5, 5, 5, 11, 12], S=[0, 13]. -/
def code_9702 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9703: ((6,2,2)), m=14, a=[2, 5, 5, 6, 6, 6], S=[0, 4]. -/
def code_9703 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #9704: ((6,2,2)), m=14, a=[2, 5, 5, 6, 6, 12], S=[0, 4]. -/
def code_9704 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9705: ((6,2,2)), m=14, a=[2, 5, 5, 6, 6, 12], S=[0, 10]. -/
def code_9705 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9706: ((6,2,2)), m=14, a=[2, 5, 5, 6, 8, 8], S=[0, 4]. -/
def code_9706 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9707: ((6,2,2)), m=14, a=[2, 5, 5, 6, 8, 12], S=[0, 4]. -/
def code_9707 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9708: ((6,2,2)), m=14, a=[2, 5, 5, 6, 10, 12], S=[0, 13]. -/
def code_9708 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9709: ((6,2,2)), m=14, a=[2, 5, 5, 6, 13, 13], S=[0, 4]. -/
def code_9709 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9710: ((6,2,2)), m=14, a=[2, 5, 5, 7, 10, 11], S=[0, 13]. -/
def code_9710 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9711: ((6,2,2)), m=14, a=[2, 5, 5, 8, 10, 11], S=[0, 1]. -/
def code_9711 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9712: ((6,2,2)), m=14, a=[2, 5, 5, 8, 10, 13], S=[0, 3]. -/
def code_9712 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9713: ((6,2,2)), m=14, a=[2, 5, 5, 8, 11, 13], S=[0, 4]. -/
def code_9713 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9714: ((6,2,2)), m=14, a=[2, 5, 5, 10, 11, 11], S=[0, 6]. -/
def code_9714 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9715: ((6,2,2)), m=14, a=[2, 5, 6, 6, 7, 11], S=[0, 13]. -/
def code_9715 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9716: ((6,2,2)), m=14, a=[2, 5, 6, 6, 8, 13], S=[0, 10]. -/
def code_9716 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9717: ((6,2,2)), m=14, a=[2, 5, 6, 6, 10, 11], S=[0, 13]. -/
def code_9717 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9718: ((6,2,2)), m=14, a=[2, 5, 6, 6, 11, 12], S=[0, 4]. -/
def code_9718 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9719: ((6,2,2)), m=14, a=[2, 5, 6, 6, 12, 13], S=[0, 4]. -/
def code_9719 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9720: ((6,2,2)), m=14, a=[2, 5, 6, 6, 12, 13], S=[0, 10]. -/
def code_9720 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9721: ((6,2,2)), m=14, a=[2, 5, 6, 7, 8, 8], S=[0, 4]. -/
def code_9721 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9722: ((6,2,2)), m=14, a=[2, 5, 6, 7, 8, 10], S=[0, 13]. -/
def code_9722 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9723: ((6,2,2)), m=14, a=[2, 5, 6, 7, 8, 11], S=[0, 1]. -/
def code_9723 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9724: ((6,2,2)), m=14, a=[2, 5, 6, 7, 10, 10], S=[0, 1]. -/
def code_9724 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9725: ((6,2,2)), m=14, a=[2, 5, 6, 7, 10, 10], S=[0, 11]. -/
def code_9725 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9726: ((6,2,2)), m=14, a=[2, 5, 6, 7, 10, 10], S=[0, 13]. -/
def code_9726 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9727: ((6,2,2)), m=14, a=[2, 5, 6, 7, 10, 13], S=[0, 3]. -/
def code_9727 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9728: ((6,2,2)), m=14, a=[2, 5, 6, 7, 10, 13], S=[0, 11]. -/
def code_9728 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9729: ((6,2,2)), m=14, a=[2, 5, 6, 7, 11, 11], S=[0, 1]. -/
def code_9729 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9730: ((6,2,2)), m=14, a=[2, 5, 6, 7, 11, 13], S=[0, 4]. -/
def code_9730 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9731: ((6,2,2)), m=14, a=[2, 5, 6, 8, 12, 13], S=[0, 10]. -/
def code_9731 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9732: ((6,2,2)), m=14, a=[2, 5, 6, 9, 10, 10], S=[0, 3]. -/
def code_9732 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9733: ((6,2,2)), m=14, a=[2, 5, 6, 9, 10, 12], S=[0, 3]. -/
def code_9733 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9734: ((6,2,2)), m=14, a=[2, 5, 6, 9, 10, 12], S=[0, 13]. -/
def code_9734 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9735: ((6,2,2)), m=14, a=[2, 5, 6, 9, 11, 12], S=[0, 4]. -/
def code_9735 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9736: ((6,2,2)), m=14, a=[2, 5, 6, 9, 11, 12], S=[0, 13]. -/
def code_9736 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9737: ((6,2,2)), m=14, a=[2, 5, 6, 10, 10, 11], S=[0, 13]. -/
def code_9737 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9738: ((6,2,2)), m=14, a=[2, 5, 6, 10, 10, 13], S=[0, 11]. -/
def code_9738 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9739: ((6,2,2)), m=14, a=[2, 5, 6, 10, 11, 11], S=[0, 13]. -/
def code_9739 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9740: ((6,2,2)), m=14, a=[2, 5, 6, 10, 11, 12], S=[0, 13]. -/
def code_9740 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), ((6 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]

/-- Catalogue code #9741: ((6,2,2)), m=14, a=[2, 5, 7, 8, 8, 10], S=[0, 1]. -/
def code_9741 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9742: ((6,2,2)), m=14, a=[2, 5, 7, 8, 8, 12], S=[0, 4]. -/
def code_9742 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9743: ((6,2,2)), m=14, a=[2, 5, 7, 8, 10, 12], S=[0, 3]. -/
def code_9743 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9744: ((6,2,2)), m=14, a=[2, 5, 7, 8, 11, 11], S=[0, 1]. -/
def code_9744 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9745: ((6,2,2)), m=14, a=[2, 5, 7, 8, 13, 13], S=[0, 3]. -/
def code_9745 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9746: ((6,2,2)), m=14, a=[2, 5, 7, 8, 13, 13], S=[0, 10]. -/
def code_9746 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9747: ((6,2,2)), m=14, a=[2, 5, 7, 9, 10, 11], S=[0, 1]. -/
def code_9747 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9748: ((6,2,2)), m=14, a=[2, 5, 7, 9, 10, 11], S=[0, 8]. -/
def code_9748 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9749: ((6,2,2)), m=14, a=[2, 5, 7, 9, 10, 13], S=[0, 3]. -/
def code_9749 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9750: ((6,2,2)), m=14, a=[2, 5, 7, 9, 11, 13], S=[0, 4]. -/
def code_9750 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9751: ((6,2,2)), m=14, a=[2, 5, 7, 9, 13, 13], S=[0, 3]. -/
def code_9751 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9752: ((6,2,2)), m=14, a=[2, 5, 7, 9, 13, 13], S=[0, 4]. -/
def code_9752 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9753: ((6,2,2)), m=14, a=[2, 5, 7, 9, 13, 13], S=[0, 11]. -/
def code_9753 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9754: ((6,2,2)), m=14, a=[2, 5, 7, 10, 10, 13], S=[0, 6]. -/
def code_9754 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9755: ((6,2,2)), m=14, a=[2, 5, 7, 10, 10, 13], S=[0, 11]. -/
def code_9755 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9756: ((6,2,2)), m=14, a=[2, 5, 7, 10, 13, 13], S=[0, 3]. -/
def code_9756 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9757: ((6,2,2)), m=14, a=[2, 5, 7, 11, 11, 13], S=[0, 6]. -/
def code_9757 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9758: ((6,2,2)), m=14, a=[2, 5, 7, 11, 11, 13], S=[0, 8]. -/
def code_9758 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9759: ((6,2,2)), m=14, a=[2, 5, 7, 11, 13, 13], S=[0, 4]. -/
def code_9759 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9760: ((6,2,2)), m=14, a=[2, 5, 7, 11, 13, 13], S=[0, 6]. -/
def code_9760 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9761: ((6,2,2)), m=14, a=[2, 5, 8, 8, 10, 13], S=[0, 3]. -/
def code_9761 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9762: ((6,2,2)), m=14, a=[2, 5, 8, 8, 12, 13], S=[0, 4]. -/
def code_9762 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9763: ((6,2,2)), m=14, a=[2, 5, 8, 8, 12, 13], S=[0, 10]. -/
def code_9763 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9764: ((6,2,2)), m=14, a=[2, 5, 8, 8, 13, 13], S=[0, 3]. -/
def code_9764 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9765: ((6,2,2)), m=14, a=[2, 5, 8, 9, 12, 13], S=[0, 11]. -/
def code_9765 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9766: ((6,2,2)), m=14, a=[2, 5, 8, 10, 13, 13], S=[0, 3]. -/
def code_9766 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9767: ((6,2,2)), m=14, a=[2, 5, 8, 12, 12, 13], S=[0, 4]. -/
def code_9767 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9768: ((6,2,2)), m=14, a=[2, 5, 9, 10, 11, 12], S=[0, 13]. -/
def code_9768 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9769: ((6,2,2)), m=14, a=[2, 5, 9, 10, 13, 13], S=[0, 3]. -/
def code_9769 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9770: ((6,2,2)), m=14, a=[2, 5, 9, 11, 13, 13], S=[0, 4]. -/
def code_9770 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9771: ((6,2,2)), m=14, a=[2, 5, 10, 10, 11, 11], S=[0, 8]. -/
def code_9771 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9772: ((6,2,2)), m=14, a=[2, 5, 10, 10, 11, 11], S=[0, 13]. -/
def code_9772 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9773: ((6,2,2)), m=14, a=[2, 5, 10, 12, 12, 13], S=[0, 6]. -/
def code_9773 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9774: ((6,2,2)), m=14, a=[2, 5, 11, 11, 13, 13], S=[0, 6]. -/
def code_9774 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #9775: ((6,2,2)), m=14, a=[2, 6, 6, 6, 11, 13], S=[0, 4]. -/
def code_9775 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9776: ((6,2,2)), m=14, a=[2, 6, 6, 7, 8, 11], S=[0, 10]. -/
def code_9776 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9777: ((6,2,2)), m=14, a=[2, 6, 6, 7, 8, 12], S=[0, 10]. -/
def code_9777 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9778: ((6,2,2)), m=14, a=[2, 6, 6, 7, 9, 10], S=[0, 1]. -/
def code_9778 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((5 : ℚ) / 7)]

/-- Catalogue code #9779: ((6,2,2)), m=14, a=[2, 6, 6, 7, 9, 12], S=[0, 4]. -/
def code_9779 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9780: ((6,2,2)), m=14, a=[2, 6, 6, 7, 10, 11], S=[0, 5]. -/
def code_9780 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9781: ((6,2,2)), m=14, a=[2, 6, 6, 7, 10, 13], S=[0, 5]. -/
def code_9781 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9782: ((6,2,2)), m=14, a=[2, 6, 6, 7, 11, 12], S=[0, 4]. -/
def code_9782 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9783: ((6,2,2)), m=14, a=[2, 6, 6, 7, 11, 12], S=[0, 10]. -/
def code_9783 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9784: ((6,2,2)), m=14, a=[2, 6, 6, 8, 9, 9], S=[0, 10]. -/
def code_9784 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9785: ((6,2,2)), m=14, a=[2, 6, 6, 8, 12, 13], S=[0, 10]. -/
def code_9785 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ)]

/-- Catalogue code #9786: ((6,2,2)), m=14, a=[2, 6, 6, 9, 12, 13], S=[0, 10]. -/
def code_9786 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9787: ((6,2,2)), m=14, a=[2, 6, 6, 9, 13, 13], S=[0, 11]. -/
def code_9787 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((6 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9788: ((6,2,2)), m=14, a=[2, 6, 6, 10, 13, 13], S=[0, 11]. -/
def code_9788 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9789: ((6,2,2)), m=14, a=[2, 6, 6, 11, 11, 12], S=[0, 10]. -/
def code_9789 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9790: ((6,2,2)), m=14, a=[2, 6, 6, 11, 12, 13], S=[0, 4]. -/
def code_9790 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9791: ((6,2,2)), m=14, a=[2, 6, 6, 11, 12, 13], S=[0, 10]. -/
def code_9791 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9792: ((6,2,2)), m=14, a=[2, 6, 7, 8, 8, 12], S=[0, 4]. -/
def code_9792 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9793: ((6,2,2)), m=14, a=[2, 6, 7, 8, 11, 13], S=[0, 9]. -/
def code_9793 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9794: ((6,2,2)), m=14, a=[2, 6, 7, 8, 12, 13], S=[0, 10]. -/
def code_9794 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9795: ((6,2,2)), m=14, a=[2, 6, 7, 9, 10, 10], S=[0, 1]. -/
def code_9795 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9796: ((6,2,2)), m=14, a=[2, 6, 7, 9, 10, 10], S=[0, 3]. -/
def code_9796 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9797: ((6,2,2)), m=14, a=[2, 6, 7, 9, 10, 10], S=[0, 13]. -/
def code_9797 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9798: ((6,2,2)), m=14, a=[2, 6, 7, 9, 10, 11], S=[0, 13]. -/
def code_9798 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9799: ((6,2,2)), m=14, a=[2, 6, 7, 9, 10, 12], S=[0, 3]. -/
def code_9799 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9800: ((6,2,2)), m=14, a=[2, 6, 7, 9, 10, 13], S=[0, 3]. -/
def code_9800 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9801: ((6,2,2)), m=14, a=[2, 6, 7, 9, 11, 12], S=[0, 4]. -/
def code_9801 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9802: ((6,2,2)), m=14, a=[2, 6, 7, 9, 11, 13], S=[0, 4]. -/
def code_9802 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9803: ((6,2,2)), m=14, a=[2, 6, 7, 9, 11, 13], S=[0, 10]. -/
def code_9803 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9804: ((6,2,2)), m=14, a=[2, 6, 7, 9, 12, 13], S=[0, 3]. -/
def code_9804 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9805: ((6,2,2)), m=14, a=[2, 6, 7, 9, 13, 13], S=[0, 4]. -/
def code_9805 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9806: ((6,2,2)), m=14, a=[2, 6, 7, 9, 13, 13], S=[0, 11]. -/
def code_9806 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9807: ((6,2,2)), m=14, a=[2, 6, 7, 10, 10, 11], S=[0, 13]. -/
def code_9807 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9808: ((6,2,2)), m=14, a=[2, 6, 7, 10, 10, 13], S=[0, 11]. -/
def code_9808 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9809: ((6,2,2)), m=14, a=[2, 6, 7, 10, 11, 12], S=[0, 5]. -/
def code_9809 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #9810: ((6,2,2)), m=14, a=[2, 6, 7, 10, 11, 13], S=[0, 5]. -/
def code_9810 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9811: ((6,2,2)), m=14, a=[2, 6, 7, 10, 11, 13], S=[0, 9]. -/
def code_9811 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9812: ((6,2,2)), m=14, a=[2, 6, 7, 10, 12, 13], S=[0, 3]. -/
def code_9812 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9813: ((6,2,2)), m=14, a=[2, 6, 7, 10, 12, 13], S=[0, 5]. -/
def code_9813 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9814: ((6,2,2)), m=14, a=[2, 6, 7, 10, 12, 13], S=[0, 11]. -/
def code_9814 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9815: ((6,2,2)), m=14, a=[2, 6, 7, 11, 11, 13], S=[0, 9]. -/
def code_9815 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 7)]

/-- Catalogue code #9816: ((6,2,2)), m=14, a=[2, 6, 7, 11, 11, 13], S=[0, 10]. -/
def code_9816 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9817: ((6,2,2)), m=14, a=[2, 6, 7, 11, 12, 13], S=[0, 4]. -/
def code_9817 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9818: ((6,2,2)), m=14, a=[2, 6, 7, 11, 12, 13], S=[0, 5]. -/
def code_9818 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9819: ((6,2,2)), m=14, a=[2, 6, 8, 8, 9, 12], S=[0, 4]. -/
def code_9819 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #9820: ((6,2,2)), m=14, a=[2, 6, 8, 8, 11, 13], S=[0, 4]. -/
def code_9820 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9821: ((6,2,2)), m=14, a=[2, 6, 8, 8, 12, 13], S=[0, 4]. -/
def code_9821 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (1 : ℚ)]

/-- Catalogue code #9822: ((6,2,2)), m=14, a=[2, 6, 8, 8, 13, 13], S=[0, 4]. -/
def code_9822 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9823: ((6,2,2)), m=14, a=[2, 6, 8, 9, 9, 12], S=[0, 10]. -/
def code_9823 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9824: ((6,2,2)), m=14, a=[2, 6, 8, 9, 11, 12], S=[0, 10]. -/
def code_9824 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9825: ((6,2,2)), m=14, a=[2, 6, 8, 9, 12, 13], S=[0, 4]. -/
def code_9825 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9826: ((6,2,2)), m=14, a=[2, 6, 8, 11, 11, 12], S=[0, 4]. -/
def code_9826 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9827: ((6,2,2)), m=14, a=[2, 6, 8, 11, 12, 13], S=[0, 4]. -/
def code_9827 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9828: ((6,2,2)), m=14, a=[2, 6, 9, 9, 11, 13], S=[0, 10]. -/
def code_9828 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9829: ((6,2,2)), m=14, a=[2, 6, 9, 10, 10, 11], S=[0, 13]. -/
def code_9829 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9830: ((6,2,2)), m=14, a=[2, 6, 9, 10, 10, 13], S=[0, 11]. -/
def code_9830 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9831: ((6,2,2)), m=14, a=[2, 6, 9, 10, 11, 12], S=[0, 13]. -/
def code_9831 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((5 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7)]

/-- Catalogue code #9832: ((6,2,2)), m=14, a=[2, 6, 9, 10, 12, 13], S=[0, 3]. -/
def code_9832 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9833: ((6,2,2)), m=14, a=[2, 6, 10, 10, 11, 11], S=[0, 9]. -/
def code_9833 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9834: ((6,2,2)), m=14, a=[2, 6, 10, 10, 11, 11], S=[0, 13]. -/
def code_9834 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9835: ((6,2,2)), m=14, a=[2, 6, 10, 11, 12, 13], S=[0, 5]. -/
def code_9835 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9836: ((6,2,2)), m=14, a=[2, 7, 8, 8, 9, 10], S=[0, 13]. -/
def code_9836 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-5 : ℚ) / 7)]

/-- Catalogue code #9837: ((6,2,2)), m=14, a=[2, 7, 8, 8, 9, 11], S=[0, 13]. -/
def code_9837 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((-5 : ℚ) / 7)]

/-- Catalogue code #9838: ((6,2,2)), m=14, a=[2, 7, 8, 8, 10, 11], S=[0, 5]. -/
def code_9838 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9839: ((6,2,2)), m=14, a=[2, 7, 8, 8, 10, 11], S=[0, 9]. -/
def code_9839 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9840: ((6,2,2)), m=14, a=[2, 7, 8, 8, 10, 11], S=[0, 13]. -/
def code_9840 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9841: ((6,2,2)), m=14, a=[2, 7, 8, 8, 10, 13], S=[0, 9]. -/
def code_9841 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9842: ((6,2,2)), m=14, a=[2, 7, 8, 8, 11, 12], S=[0, 4]. -/
def code_9842 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9843: ((6,2,2)), m=14, a=[2, 7, 8, 8, 11, 12], S=[0, 10]. -/
def code_9843 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9844: ((6,2,2)), m=14, a=[2, 7, 8, 9, 10, 10], S=[0, 1]. -/
def code_9844 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9845: ((6,2,2)), m=14, a=[2, 7, 8, 9, 10, 10], S=[0, 3]. -/
def code_9845 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9846: ((6,2,2)), m=14, a=[2, 7, 8, 9, 10, 11], S=[0, 1]. -/
def code_9846 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9847: ((6,2,2)), m=14, a=[2, 7, 8, 9, 10, 11], S=[0, 13]. -/
def code_9847 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9848: ((6,2,2)), m=14, a=[2, 7, 8, 9, 10, 13], S=[0, 3]. -/
def code_9848 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9849: ((6,2,2)), m=14, a=[2, 7, 8, 9, 10, 13], S=[0, 11]. -/
def code_9849 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9850: ((6,2,2)), m=14, a=[2, 7, 8, 9, 11, 13], S=[0, 10]. -/
def code_9850 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9851: ((6,2,2)), m=14, a=[2, 7, 8, 10, 10, 11], S=[0, 1]. -/
def code_9851 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9852: ((6,2,2)), m=14, a=[2, 7, 8, 10, 11, 12], S=[0, 9]. -/
def code_9852 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), (0 : ℚ), ((5 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]

/-- Catalogue code #9853: ((6,2,2)), m=14, a=[2, 7, 8, 11, 11, 12], S=[0, 10]. -/
def code_9853 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9854: ((6,2,2)), m=14, a=[2, 7, 8, 11, 11, 13], S=[0, 9]. -/
def code_9854 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9855: ((6,2,2)), m=14, a=[2, 7, 8, 11, 12, 12], S=[0, 4]. -/
def code_9855 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9856: ((6,2,2)), m=14, a=[2, 7, 8, 11, 13, 13], S=[0, 9]. -/
def code_9856 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9857: ((6,2,2)), m=14, a=[2, 7, 9, 9, 11, 13], S=[0, 10]. -/
def code_9857 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9858: ((6,2,2)), m=14, a=[2, 7, 9, 10, 10, 11], S=[0, 1]. -/
def code_9858 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9859: ((6,2,2)), m=14, a=[2, 7, 9, 10, 10, 13], S=[0, 3]. -/
def code_9859 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9860: ((6,2,2)), m=14, a=[2, 7, 9, 10, 11, 13], S=[0, 6]. -/
def code_9860 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9861: ((6,2,2)), m=14, a=[2, 7, 9, 10, 12, 13], S=[0, 3]. -/
def code_9861 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9862: ((6,2,2)), m=14, a=[2, 7, 9, 10, 13, 13], S=[0, 3]. -/
def code_9862 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9863: ((6,2,2)), m=14, a=[2, 7, 9, 10, 13, 13], S=[0, 8]. -/
def code_9863 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9864: ((6,2,2)), m=14, a=[2, 7, 9, 11, 12, 13], S=[0, 4]. -/
def code_9864 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9865: ((6,2,2)), m=14, a=[2, 7, 9, 11, 13, 13], S=[0, 4]. -/
def code_9865 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9866: ((6,2,2)), m=14, a=[2, 7, 10, 10, 12, 13], S=[0, 6]. -/
def code_9866 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9867: ((6,2,2)), m=14, a=[2, 7, 10, 10, 12, 13], S=[0, 8]. -/
def code_9867 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9868: ((6,2,2)), m=14, a=[2, 7, 10, 11, 12, 12], S=[0, 6]. -/
def code_9868 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9869: ((6,2,2)), m=14, a=[2, 7, 10, 11, 12, 13], S=[0, 5]. -/
def code_9869 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #9870: ((6,2,2)), m=14, a=[2, 7, 10, 11, 13, 13], S=[0, 5]. -/
def code_9870 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9871: ((6,2,2)), m=14, a=[2, 7, 11, 11, 13, 13], S=[0, 6]. -/
def code_9871 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9872: ((6,2,2)), m=14, a=[2, 7, 11, 11, 13, 13], S=[0, 9]. -/
def code_9872 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9873: ((6,2,2)), m=14, a=[2, 7, 12, 12, 12, 13], S=[0, 8]. -/
def code_9873 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9874: ((6,2,2)), m=14, a=[2, 8, 8, 8, 9, 9], S=[0, 4]. -/
def code_9874 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9875: ((6,2,2)), m=14, a=[2, 8, 8, 8, 11, 13], S=[0, 10]. -/
def code_9875 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9876: ((6,2,2)), m=14, a=[2, 8, 8, 9, 9, 12], S=[0, 10]. -/
def code_9876 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9877: ((6,2,2)), m=14, a=[2, 8, 8, 9, 10, 11], S=[0, 13]. -/
def code_9877 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9878: ((6,2,2)), m=14, a=[2, 8, 8, 9, 11, 12], S=[0, 4]. -/
def code_9878 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9879: ((6,2,2)), m=14, a=[2, 8, 8, 9, 12, 12], S=[0, 4]. -/
def code_9879 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), (1 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9880: ((6,2,2)), m=14, a=[2, 8, 8, 10, 11, 13], S=[0, 9]. -/
def code_9880 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9881: ((6,2,2)), m=14, a=[2, 8, 8, 10, 13, 13], S=[0, 3]. -/
def code_9881 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9882: ((6,2,2)), m=14, a=[2, 8, 8, 12, 13, 13], S=[0, 4]. -/
def code_9882 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9883: ((6,2,2)), m=14, a=[2, 8, 9, 9, 10, 10], S=[0, 3]. -/
def code_9883 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9884: ((6,2,2)), m=14, a=[2, 8, 9, 9, 12, 12], S=[0, 4]. -/
def code_9884 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9885: ((6,2,2)), m=14, a=[2, 8, 9, 10, 10, 13], S=[0, 3]. -/
def code_9885 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9886: ((6,2,2)), m=14, a=[2, 8, 9, 12, 12, 13], S=[0, 4]. -/
def code_9886 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9887: ((6,2,2)), m=14, a=[2, 8, 10, 10, 11, 11], S=[0, 5]. -/
def code_9887 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #9888: ((6,2,2)), m=14, a=[2, 8, 10, 11, 13, 13], S=[0, 9]. -/
def code_9888 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9889: ((6,2,2)), m=14, a=[2, 8, 11, 11, 13, 13], S=[0, 9]. -/
def code_9889 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9890: ((6,2,2)), m=14, a=[2, 8, 11, 12, 12, 13], S=[0, 10]. -/
def code_9890 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9891: ((6,2,2)), m=14, a=[2, 9, 9, 9, 12, 13], S=[0, 11]. -/
def code_9891 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9892: ((6,2,2)), m=14, a=[2, 9, 9, 10, 12, 12], S=[0, 6]. -/
def code_9892 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9893: ((6,2,2)), m=14, a=[2, 9, 9, 12, 13, 13], S=[0, 10]. -/
def code_9893 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9894: ((6,2,2)), m=14, a=[2, 9, 10, 10, 11, 12], S=[0, 8]. -/
def code_9894 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9895: ((6,2,2)), m=14, a=[2, 9, 10, 12, 12, 13], S=[0, 6]. -/
def code_9895 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9896: ((6,2,2)), m=14, a=[2, 10, 10, 11, 11, 12], S=[0, 6]. -/
def code_9896 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9897: ((6,2,2)), m=14, a=[2, 10, 10, 11, 11, 12], S=[0, 8]. -/
def code_9897 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9898: ((6,2,2)), m=14, a=[2, 10, 10, 11, 12, 13], S=[0, 8]. -/
def code_9898 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9899: ((6,2,2)), m=14, a=[2, 10, 11, 11, 12, 12], S=[0, 6]. -/
def code_9899 : ExampleData 6 14 2 where
  a := ![(2 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9900: ((6,2,2)), m=14, a=[3, 3, 3, 4, 9, 10], S=[0, 13]. -/
def code_9900 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9901: ((6,2,2)), m=14, a=[3, 3, 4, 4, 6, 8], S=[0, 2]. -/
def code_9901 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9902: ((6,2,2)), m=14, a=[3, 3, 4, 4, 6, 12], S=[0, 9]. -/
def code_9902 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9903: ((6,2,2)), m=14, a=[3, 3, 4, 4, 8, 9], S=[0, 1]. -/
def code_9903 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9904: ((6,2,2)), m=14, a=[3, 3, 4, 4, 8, 10], S=[0, 2]. -/
def code_9904 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9905: ((6,2,2)), m=14, a=[3, 3, 4, 4, 8, 12], S=[0, 1]. -/
def code_9905 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9906: ((6,2,2)), m=14, a=[3, 3, 4, 4, 8, 12], S=[0, 5]. -/
def code_9906 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9907: ((6,2,2)), m=14, a=[3, 3, 4, 4, 8, 13], S=[0, 5]. -/
def code_9907 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-6 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9908: ((6,2,2)), m=14, a=[3, 3, 4, 4, 9, 9], S=[0, 6]. -/
def code_9908 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9909: ((6,2,2)), m=14, a=[3, 3, 4, 4, 9, 11], S=[0, 1]. -/
def code_9909 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9910: ((6,2,2)), m=14, a=[3, 3, 4, 4, 9, 12], S=[0, 1]. -/
def code_9910 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9911: ((6,2,2)), m=14, a=[3, 3, 4, 4, 9, 12], S=[0, 6]. -/
def code_9911 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9912: ((6,2,2)), m=14, a=[3, 3, 4, 4, 11, 13], S=[0, 5]. -/
def code_9912 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9913: ((6,2,2)), m=14, a=[3, 3, 4, 4, 12, 12], S=[0, 6]. -/
def code_9913 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9914: ((6,2,2)), m=14, a=[3, 3, 4, 4, 12, 12], S=[0, 8]. -/
def code_9914 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9915: ((6,2,2)), m=14, a=[3, 3, 4, 4, 12, 13], S=[0, 5]. -/
def code_9915 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9916: ((6,2,2)), m=14, a=[3, 3, 4, 4, 12, 13], S=[0, 6]. -/
def code_9916 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9917: ((6,2,2)), m=14, a=[3, 3, 4, 5, 5, 12], S=[0, 8]. -/
def code_9917 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9918: ((6,2,2)), m=14, a=[3, 3, 4, 6, 6, 10], S=[0, 2]. -/
def code_9918 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9919: ((6,2,2)), m=14, a=[3, 3, 4, 6, 7, 9], S=[0, 13]. -/
def code_9919 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9920: ((6,2,2)), m=14, a=[3, 3, 4, 6, 9, 9], S=[0, 13]. -/
def code_9920 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9921: ((6,2,2)), m=14, a=[3, 3, 4, 6, 10, 12], S=[0, 5]. -/
def code_9921 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9922: ((6,2,2)), m=14, a=[3, 3, 4, 7, 8, 9], S=[0, 1]. -/
def code_9922 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9923: ((6,2,2)), m=14, a=[3, 3, 4, 7, 8, 13], S=[0, 5]. -/
def code_9923 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9924: ((6,2,2)), m=14, a=[3, 3, 4, 7, 8, 13], S=[0, 12]. -/
def code_9924 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9925: ((6,2,2)), m=14, a=[3, 3, 4, 7, 9, 9], S=[0, 1]. -/
def code_9925 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9926: ((6,2,2)), m=14, a=[3, 3, 4, 7, 9, 9], S=[0, 6]. -/
def code_9926 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9927: ((6,2,2)), m=14, a=[3, 3, 4, 7, 9, 9], S=[0, 8]. -/
def code_9927 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9928: ((6,2,2)), m=14, a=[3, 3, 4, 7, 9, 9], S=[0, 13]. -/
def code_9928 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9929: ((6,2,2)), m=14, a=[3, 3, 4, 7, 9, 13], S=[0, 6]. -/
def code_9929 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9930: ((6,2,2)), m=14, a=[3, 3, 4, 8, 9, 9], S=[0, 1]. -/
def code_9930 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9931: ((6,2,2)), m=14, a=[3, 3, 4, 8, 9, 12], S=[0, 1]. -/
def code_9931 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9932: ((6,2,2)), m=14, a=[3, 3, 4, 8, 10, 10], S=[0, 12]. -/
def code_9932 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9933: ((6,2,2)), m=14, a=[3, 3, 4, 9, 9, 10], S=[0, 8]. -/
def code_9933 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9934: ((6,2,2)), m=14, a=[3, 3, 4, 9, 9, 10], S=[0, 13]. -/
def code_9934 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9935: ((6,2,2)), m=14, a=[3, 3, 4, 9, 9, 11], S=[0, 1]. -/
def code_9935 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9936: ((6,2,2)), m=14, a=[3, 3, 4, 9, 9, 13], S=[0, 6]. -/
def code_9936 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9937: ((6,2,2)), m=14, a=[3, 3, 5, 5, 6, 12], S=[0, 10]. -/
def code_9937 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9938: ((6,2,2)), m=14, a=[3, 3, 5, 5, 7, 8], S=[0, 13]. -/
def code_9938 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9939: ((6,2,2)), m=14, a=[3, 3, 5, 5, 7, 10], S=[0, 6]. -/
def code_9939 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9940: ((6,2,2)), m=14, a=[3, 3, 5, 5, 7, 10], S=[0, 13]. -/
def code_9940 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9941: ((6,2,2)), m=14, a=[3, 3, 5, 5, 8, 10], S=[0, 13]. -/
def code_9941 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9942: ((6,2,2)), m=14, a=[3, 3, 5, 6, 7, 9], S=[0, 1]. -/
def code_9942 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9943: ((6,2,2)), m=14, a=[3, 3, 5, 6, 7, 9], S=[0, 4]. -/
def code_9943 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9944: ((6,2,2)), m=14, a=[3, 3, 5, 6, 7, 10], S=[0, 1]. -/
def code_9944 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9945: ((6,2,2)), m=14, a=[3, 3, 5, 6, 7, 13], S=[0, 4]. -/
def code_9945 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9946: ((6,2,2)), m=14, a=[3, 3, 5, 6, 9, 10], S=[0, 1]. -/
def code_9946 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9947: ((6,2,2)), m=14, a=[3, 3, 5, 6, 9, 13], S=[0, 4]. -/
def code_9947 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9948: ((6,2,2)), m=14, a=[3, 3, 5, 7, 8, 10], S=[0, 13]. -/
def code_9948 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9949: ((6,2,2)), m=14, a=[3, 3, 5, 7, 8, 13], S=[0, 12]. -/
def code_9949 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9950: ((6,2,2)), m=14, a=[3, 3, 5, 7, 9, 10], S=[0, 1]. -/
def code_9950 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9951: ((6,2,2)), m=14, a=[3, 3, 5, 7, 9, 10], S=[0, 8]. -/
def code_9951 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9952: ((6,2,2)), m=14, a=[3, 3, 5, 7, 9, 13], S=[0, 4]. -/
def code_9952 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9953: ((6,2,2)), m=14, a=[3, 3, 5, 7, 9, 13], S=[0, 8]. -/
def code_9953 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9954: ((6,2,2)), m=14, a=[3, 3, 5, 7, 10, 13], S=[0, 8]. -/
def code_9954 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9955: ((6,2,2)), m=14, a=[3, 3, 5, 9, 10, 13], S=[0, 8]. -/
def code_9955 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9956: ((6,2,2)), m=14, a=[3, 3, 6, 6, 10, 12], S=[0, 13]. -/
def code_9956 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9957: ((6,2,2)), m=14, a=[3, 3, 6, 7, 9, 9], S=[0, 10]. -/
def code_9957 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9958: ((6,2,2)), m=14, a=[3, 3, 6, 7, 9, 9], S=[0, 13]. -/
def code_9958 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9959: ((6,2,2)), m=14, a=[3, 3, 6, 7, 9, 10], S=[0, 1]. -/
def code_9959 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9960: ((6,2,2)), m=14, a=[3, 3, 6, 7, 9, 12], S=[0, 13]. -/
def code_9960 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9961: ((6,2,2)), m=14, a=[3, 3, 6, 7, 9, 13], S=[0, 4]. -/
def code_9961 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9962: ((6,2,2)), m=14, a=[3, 3, 6, 7, 9, 13], S=[0, 12]. -/
def code_9962 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9963: ((6,2,2)), m=14, a=[3, 3, 6, 7, 12, 13], S=[0, 4]. -/
def code_9963 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9964: ((6,2,2)), m=14, a=[3, 3, 7, 8, 9, 9], S=[0, 1]. -/
def code_9964 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9965: ((6,2,2)), m=14, a=[3, 3, 7, 8, 9, 9], S=[0, 10]. -/
def code_9965 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9966: ((6,2,2)), m=14, a=[3, 3, 7, 8, 9, 12], S=[0, 1]. -/
def code_9966 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #9967: ((6,2,2)), m=14, a=[3, 3, 7, 8, 9, 13], S=[0, 2]. -/
def code_9967 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9968: ((6,2,2)), m=14, a=[3, 3, 7, 8, 9, 13], S=[0, 10]. -/
def code_9968 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9969: ((6,2,2)), m=14, a=[3, 3, 7, 8, 12, 13], S=[0, 5]. -/
def code_9969 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9970: ((6,2,2)), m=14, a=[3, 3, 7, 9, 9, 13], S=[0, 6]. -/
def code_9970 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9971: ((6,2,2)), m=14, a=[3, 3, 7, 9, 9, 13], S=[0, 10]. -/
def code_9971 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9972: ((6,2,2)), m=14, a=[3, 3, 7, 9, 10, 13], S=[0, 8]. -/
def code_9972 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9973: ((6,2,2)), m=14, a=[3, 3, 7, 9, 12, 13], S=[0, 6]. -/
def code_9973 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9974: ((6,2,2)), m=14, a=[3, 3, 7, 9, 13, 13], S=[0, 8]. -/
def code_9974 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9975: ((6,2,2)), m=14, a=[3, 3, 7, 9, 13, 13], S=[0, 12]. -/
def code_9975 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9976: ((6,2,2)), m=14, a=[3, 3, 8, 10, 10, 12], S=[0, 9]. -/
def code_9976 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9977: ((6,2,2)), m=14, a=[3, 3, 9, 9, 10, 12], S=[0, 8]. -/
def code_9977 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9978: ((6,2,2)), m=14, a=[3, 3, 9, 9, 11, 13], S=[0, 10]. -/
def code_9978 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9979: ((6,2,2)), m=14, a=[3, 3, 10, 12, 13, 13], S=[0, 6]. -/
def code_9979 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9980: ((6,2,2)), m=14, a=[3, 4, 4, 4, 6, 13], S=[0, 12]. -/
def code_9980 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9981: ((6,2,2)), m=14, a=[3, 4, 4, 5, 6, 7], S=[0, 13]. -/
def code_9981 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9982: ((6,2,2)), m=14, a=[3, 4, 4, 5, 6, 12], S=[0, 13]. -/
def code_9982 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9983: ((6,2,2)), m=14, a=[3, 4, 4, 5, 7, 8], S=[0, 1]. -/
def code_9983 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-4 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9984: ((6,2,2)), m=14, a=[3, 4, 4, 5, 7, 12], S=[0, 1]. -/
def code_9984 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9985: ((6,2,2)), m=14, a=[3, 4, 4, 5, 8, 12], S=[0, 1]. -/
def code_9985 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #9986: ((6,2,2)), m=14, a=[3, 4, 4, 6, 6, 13], S=[0, 12]. -/
def code_9986 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9987: ((6,2,2)), m=14, a=[3, 4, 4, 6, 7, 8], S=[0, 2]. -/
def code_9987 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9988: ((6,2,2)), m=14, a=[3, 4, 4, 6, 7, 12], S=[0, 13]. -/
def code_9988 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]

/-- Catalogue code #9989: ((6,2,2)), m=14, a=[3, 4, 4, 6, 8, 13], S=[0, 12]. -/
def code_9989 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #9990: ((6,2,2)), m=14, a=[3, 4, 4, 6, 9, 10], S=[0, 2]. -/
def code_9990 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9991: ((6,2,2)), m=14, a=[3, 4, 4, 8, 9, 11], S=[0, 13]. -/
def code_9991 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #9992: ((6,2,2)), m=14, a=[3, 4, 4, 8, 9, 12], S=[0, 1]. -/
def code_9992 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), ((-4 : ℚ) / 7)]

/-- Catalogue code #9993: ((6,2,2)), m=14, a=[3, 4, 4, 8, 11, 12], S=[0, 5]. -/
def code_9993 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7)]

/-- Catalogue code #9994: ((6,2,2)), m=14, a=[3, 4, 4, 8, 12, 13], S=[0, 5]. -/
def code_9994 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-6 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #9995: ((6,2,2)), m=14, a=[3, 4, 4, 9, 10, 12], S=[0, 6]. -/
def code_9995 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #9996: ((6,2,2)), m=14, a=[3, 4, 4, 9, 11, 12], S=[0, 6]. -/
def code_9996 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #9997: ((6,2,2)), m=14, a=[3, 4, 4, 9, 12, 13], S=[0, 6]. -/
def code_9997 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #9998: ((6,2,2)), m=14, a=[3, 4, 5, 5, 6, 7], S=[0, 13]. -/
def code_9998 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (13 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #9999: ((6,2,2)), m=14, a=[3, 4, 5, 5, 7, 8], S=[0, 1]. -/
def code_9999 : ExampleData 6 14 2 where
  a := ![(3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (1 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7)]
def checks : List Bool :=
  [decide code_9500.OK,
   decide code_9501.OK,
   decide code_9502.OK,
   decide code_9503.OK,
   decide code_9504.OK,
   decide code_9505.OK,
   decide code_9506.OK,
   decide code_9507.OK,
   decide code_9508.OK,
   decide code_9509.OK,
   decide code_9510.OK,
   decide code_9511.OK,
   decide code_9512.OK,
   decide code_9513.OK,
   decide code_9514.OK,
   decide code_9515.OK,
   decide code_9516.OK,
   decide code_9517.OK,
   decide code_9518.OK,
   decide code_9519.OK,
   decide code_9520.OK,
   decide code_9521.OK,
   decide code_9522.OK,
   decide code_9523.OK,
   decide code_9524.OK,
   decide code_9525.OK,
   decide code_9526.OK,
   decide code_9527.OK,
   decide code_9528.OK,
   decide code_9529.OK,
   decide code_9530.OK,
   decide code_9531.OK,
   decide code_9532.OK,
   decide code_9533.OK,
   decide code_9534.OK,
   decide code_9535.OK,
   decide code_9536.OK,
   decide code_9537.OK,
   decide code_9538.OK,
   decide code_9539.OK,
   decide code_9540.OK,
   decide code_9541.OK,
   decide code_9542.OK,
   decide code_9543.OK,
   decide code_9544.OK,
   decide code_9545.OK,
   decide code_9546.OK,
   decide code_9547.OK,
   decide code_9548.OK,
   decide code_9549.OK,
   decide code_9550.OK,
   decide code_9551.OK,
   decide code_9552.OK,
   decide code_9553.OK,
   decide code_9554.OK,
   decide code_9555.OK,
   decide code_9556.OK,
   decide code_9557.OK,
   decide code_9558.OK,
   decide code_9559.OK,
   decide code_9560.OK,
   decide code_9561.OK,
   decide code_9562.OK,
   decide code_9563.OK,
   decide code_9564.OK,
   decide code_9565.OK,
   decide code_9566.OK,
   decide code_9567.OK,
   decide code_9568.OK,
   decide code_9569.OK,
   decide code_9570.OK,
   decide code_9571.OK,
   decide code_9572.OK,
   decide code_9573.OK,
   decide code_9574.OK,
   decide code_9575.OK,
   decide code_9576.OK,
   decide code_9577.OK,
   decide code_9578.OK,
   decide code_9579.OK,
   decide code_9580.OK,
   decide code_9581.OK,
   decide code_9582.OK,
   decide code_9583.OK,
   decide code_9584.OK,
   decide code_9585.OK,
   decide code_9586.OK,
   decide code_9587.OK,
   decide code_9588.OK,
   decide code_9589.OK,
   decide code_9590.OK,
   decide code_9591.OK,
   decide code_9592.OK,
   decide code_9593.OK,
   decide code_9594.OK,
   decide code_9595.OK,
   decide code_9596.OK,
   decide code_9597.OK,
   decide code_9598.OK,
   decide code_9599.OK,
   decide code_9600.OK,
   decide code_9601.OK,
   decide code_9602.OK,
   decide code_9603.OK,
   decide code_9604.OK,
   decide code_9605.OK,
   decide code_9606.OK,
   decide code_9607.OK,
   decide code_9608.OK,
   decide code_9609.OK,
   decide code_9610.OK,
   decide code_9611.OK,
   decide code_9612.OK,
   decide code_9613.OK,
   decide code_9614.OK,
   decide code_9615.OK,
   decide code_9616.OK,
   decide code_9617.OK,
   decide code_9618.OK,
   decide code_9619.OK,
   decide code_9620.OK,
   decide code_9621.OK,
   decide code_9622.OK,
   decide code_9623.OK,
   decide code_9624.OK,
   decide code_9625.OK,
   decide code_9626.OK,
   decide code_9627.OK,
   decide code_9628.OK,
   decide code_9629.OK,
   decide code_9630.OK,
   decide code_9631.OK,
   decide code_9632.OK,
   decide code_9633.OK,
   decide code_9634.OK,
   decide code_9635.OK,
   decide code_9636.OK,
   decide code_9637.OK,
   decide code_9638.OK,
   decide code_9639.OK,
   decide code_9640.OK,
   decide code_9641.OK,
   decide code_9642.OK,
   decide code_9643.OK,
   decide code_9644.OK,
   decide code_9645.OK,
   decide code_9646.OK,
   decide code_9647.OK,
   decide code_9648.OK,
   decide code_9649.OK,
   decide code_9650.OK,
   decide code_9651.OK,
   decide code_9652.OK,
   decide code_9653.OK,
   decide code_9654.OK,
   decide code_9655.OK,
   decide code_9656.OK,
   decide code_9657.OK,
   decide code_9658.OK,
   decide code_9659.OK,
   decide code_9660.OK,
   decide code_9661.OK,
   decide code_9662.OK,
   decide code_9663.OK,
   decide code_9664.OK,
   decide code_9665.OK,
   decide code_9666.OK,
   decide code_9667.OK,
   decide code_9668.OK,
   decide code_9669.OK,
   decide code_9670.OK,
   decide code_9671.OK,
   decide code_9672.OK,
   decide code_9673.OK,
   decide code_9674.OK,
   decide code_9675.OK,
   decide code_9676.OK,
   decide code_9677.OK,
   decide code_9678.OK,
   decide code_9679.OK,
   decide code_9680.OK,
   decide code_9681.OK,
   decide code_9682.OK,
   decide code_9683.OK,
   decide code_9684.OK,
   decide code_9685.OK,
   decide code_9686.OK,
   decide code_9687.OK,
   decide code_9688.OK,
   decide code_9689.OK,
   decide code_9690.OK,
   decide code_9691.OK,
   decide code_9692.OK,
   decide code_9693.OK,
   decide code_9694.OK,
   decide code_9695.OK,
   decide code_9696.OK,
   decide code_9697.OK,
   decide code_9698.OK,
   decide code_9699.OK,
   decide code_9700.OK,
   decide code_9701.OK,
   decide code_9702.OK,
   decide code_9703.OK,
   decide code_9704.OK,
   decide code_9705.OK,
   decide code_9706.OK,
   decide code_9707.OK,
   decide code_9708.OK,
   decide code_9709.OK,
   decide code_9710.OK,
   decide code_9711.OK,
   decide code_9712.OK,
   decide code_9713.OK,
   decide code_9714.OK,
   decide code_9715.OK,
   decide code_9716.OK,
   decide code_9717.OK,
   decide code_9718.OK,
   decide code_9719.OK,
   decide code_9720.OK,
   decide code_9721.OK,
   decide code_9722.OK,
   decide code_9723.OK,
   decide code_9724.OK,
   decide code_9725.OK,
   decide code_9726.OK,
   decide code_9727.OK,
   decide code_9728.OK,
   decide code_9729.OK,
   decide code_9730.OK,
   decide code_9731.OK,
   decide code_9732.OK,
   decide code_9733.OK,
   decide code_9734.OK,
   decide code_9735.OK,
   decide code_9736.OK,
   decide code_9737.OK,
   decide code_9738.OK,
   decide code_9739.OK,
   decide code_9740.OK,
   decide code_9741.OK,
   decide code_9742.OK,
   decide code_9743.OK,
   decide code_9744.OK,
   decide code_9745.OK,
   decide code_9746.OK,
   decide code_9747.OK,
   decide code_9748.OK,
   decide code_9749.OK,
   decide code_9750.OK,
   decide code_9751.OK,
   decide code_9752.OK,
   decide code_9753.OK,
   decide code_9754.OK,
   decide code_9755.OK,
   decide code_9756.OK,
   decide code_9757.OK,
   decide code_9758.OK,
   decide code_9759.OK,
   decide code_9760.OK,
   decide code_9761.OK,
   decide code_9762.OK,
   decide code_9763.OK,
   decide code_9764.OK,
   decide code_9765.OK,
   decide code_9766.OK,
   decide code_9767.OK,
   decide code_9768.OK,
   decide code_9769.OK,
   decide code_9770.OK,
   decide code_9771.OK,
   decide code_9772.OK,
   decide code_9773.OK,
   decide code_9774.OK,
   decide code_9775.OK,
   decide code_9776.OK,
   decide code_9777.OK,
   decide code_9778.OK,
   decide code_9779.OK,
   decide code_9780.OK,
   decide code_9781.OK,
   decide code_9782.OK,
   decide code_9783.OK,
   decide code_9784.OK,
   decide code_9785.OK,
   decide code_9786.OK,
   decide code_9787.OK,
   decide code_9788.OK,
   decide code_9789.OK,
   decide code_9790.OK,
   decide code_9791.OK,
   decide code_9792.OK,
   decide code_9793.OK,
   decide code_9794.OK,
   decide code_9795.OK,
   decide code_9796.OK,
   decide code_9797.OK,
   decide code_9798.OK,
   decide code_9799.OK,
   decide code_9800.OK,
   decide code_9801.OK,
   decide code_9802.OK,
   decide code_9803.OK,
   decide code_9804.OK,
   decide code_9805.OK,
   decide code_9806.OK,
   decide code_9807.OK,
   decide code_9808.OK,
   decide code_9809.OK,
   decide code_9810.OK,
   decide code_9811.OK,
   decide code_9812.OK,
   decide code_9813.OK,
   decide code_9814.OK,
   decide code_9815.OK,
   decide code_9816.OK,
   decide code_9817.OK,
   decide code_9818.OK,
   decide code_9819.OK,
   decide code_9820.OK,
   decide code_9821.OK,
   decide code_9822.OK,
   decide code_9823.OK,
   decide code_9824.OK,
   decide code_9825.OK,
   decide code_9826.OK,
   decide code_9827.OK,
   decide code_9828.OK,
   decide code_9829.OK,
   decide code_9830.OK,
   decide code_9831.OK,
   decide code_9832.OK,
   decide code_9833.OK,
   decide code_9834.OK,
   decide code_9835.OK,
   decide code_9836.OK,
   decide code_9837.OK,
   decide code_9838.OK,
   decide code_9839.OK,
   decide code_9840.OK,
   decide code_9841.OK,
   decide code_9842.OK,
   decide code_9843.OK,
   decide code_9844.OK,
   decide code_9845.OK,
   decide code_9846.OK,
   decide code_9847.OK,
   decide code_9848.OK,
   decide code_9849.OK,
   decide code_9850.OK,
   decide code_9851.OK,
   decide code_9852.OK,
   decide code_9853.OK,
   decide code_9854.OK,
   decide code_9855.OK,
   decide code_9856.OK,
   decide code_9857.OK,
   decide code_9858.OK,
   decide code_9859.OK,
   decide code_9860.OK,
   decide code_9861.OK,
   decide code_9862.OK,
   decide code_9863.OK,
   decide code_9864.OK,
   decide code_9865.OK,
   decide code_9866.OK,
   decide code_9867.OK,
   decide code_9868.OK,
   decide code_9869.OK,
   decide code_9870.OK,
   decide code_9871.OK,
   decide code_9872.OK,
   decide code_9873.OK,
   decide code_9874.OK,
   decide code_9875.OK,
   decide code_9876.OK,
   decide code_9877.OK,
   decide code_9878.OK,
   decide code_9879.OK,
   decide code_9880.OK,
   decide code_9881.OK,
   decide code_9882.OK,
   decide code_9883.OK,
   decide code_9884.OK,
   decide code_9885.OK,
   decide code_9886.OK,
   decide code_9887.OK,
   decide code_9888.OK,
   decide code_9889.OK,
   decide code_9890.OK,
   decide code_9891.OK,
   decide code_9892.OK,
   decide code_9893.OK,
   decide code_9894.OK,
   decide code_9895.OK,
   decide code_9896.OK,
   decide code_9897.OK,
   decide code_9898.OK,
   decide code_9899.OK,
   decide code_9900.OK,
   decide code_9901.OK,
   decide code_9902.OK,
   decide code_9903.OK,
   decide code_9904.OK,
   decide code_9905.OK,
   decide code_9906.OK,
   decide code_9907.OK,
   decide code_9908.OK,
   decide code_9909.OK,
   decide code_9910.OK,
   decide code_9911.OK,
   decide code_9912.OK,
   decide code_9913.OK,
   decide code_9914.OK,
   decide code_9915.OK,
   decide code_9916.OK,
   decide code_9917.OK,
   decide code_9918.OK,
   decide code_9919.OK,
   decide code_9920.OK,
   decide code_9921.OK,
   decide code_9922.OK,
   decide code_9923.OK,
   decide code_9924.OK,
   decide code_9925.OK,
   decide code_9926.OK,
   decide code_9927.OK,
   decide code_9928.OK,
   decide code_9929.OK,
   decide code_9930.OK,
   decide code_9931.OK,
   decide code_9932.OK,
   decide code_9933.OK,
   decide code_9934.OK,
   decide code_9935.OK,
   decide code_9936.OK,
   decide code_9937.OK,
   decide code_9938.OK,
   decide code_9939.OK,
   decide code_9940.OK,
   decide code_9941.OK,
   decide code_9942.OK,
   decide code_9943.OK,
   decide code_9944.OK,
   decide code_9945.OK,
   decide code_9946.OK,
   decide code_9947.OK,
   decide code_9948.OK,
   decide code_9949.OK,
   decide code_9950.OK,
   decide code_9951.OK,
   decide code_9952.OK,
   decide code_9953.OK,
   decide code_9954.OK,
   decide code_9955.OK,
   decide code_9956.OK,
   decide code_9957.OK,
   decide code_9958.OK,
   decide code_9959.OK,
   decide code_9960.OK,
   decide code_9961.OK,
   decide code_9962.OK,
   decide code_9963.OK,
   decide code_9964.OK,
   decide code_9965.OK,
   decide code_9966.OK,
   decide code_9967.OK,
   decide code_9968.OK,
   decide code_9969.OK,
   decide code_9970.OK,
   decide code_9971.OK,
   decide code_9972.OK,
   decide code_9973.OK,
   decide code_9974.OK,
   decide code_9975.OK,
   decide code_9976.OK,
   decide code_9977.OK,
   decide code_9978.OK,
   decide code_9979.OK,
   decide code_9980.OK,
   decide code_9981.OK,
   decide code_9982.OK,
   decide code_9983.OK,
   decide code_9984.OK,
   decide code_9985.OK,
   decide code_9986.OK,
   decide code_9987.OK,
   decide code_9988.OK,
   decide code_9989.OK,
   decide code_9990.OK,
   decide code_9991.OK,
   decide code_9992.OK,
   decide code_9993.OK,
   decide code_9994.OK,
   decide code_9995.OK,
   decide code_9996.OK,
   decide code_9997.OK,
   decide code_9998.OK,
   decide code_9999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk019
