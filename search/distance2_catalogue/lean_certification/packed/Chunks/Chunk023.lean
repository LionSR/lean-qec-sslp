import SS

namespace Catalogue.Chunk023

open SS SS.Verify

/-- Catalogue code #11500: ((6,2,2)), m=15, a=[1, 10, 11, 11, 12, 13], S=[0, 7]. -/
def code_11500 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11501: ((6,2,2)), m=15, a=[1, 10, 11, 12, 13, 13], S=[0, 7]. -/
def code_11501 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11502: ((6,2,2)), m=15, a=[1, 10, 11, 12, 13, 14], S=[0, 7]. -/
def code_11502 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11503: ((6,2,2)), m=15, a=[2, 2, 3, 3, 4, 5], S=[0, 8]. -/
def code_11503 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11504: ((6,2,2)), m=15, a=[2, 2, 3, 3, 4, 7], S=[0, 14]. -/
def code_11504 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-13 : ℚ) / 15)]

/-- Catalogue code #11505: ((6,2,2)), m=15, a=[2, 2, 3, 3, 4, 8], S=[0, 14]. -/
def code_11505 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-13 : ℚ) / 15)]

/-- Catalogue code #11506: ((6,2,2)), m=15, a=[2, 2, 3, 4, 4, 5], S=[0, 8]. -/
def code_11506 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #11507: ((6,2,2)), m=15, a=[2, 2, 3, 4, 4, 12], S=[0, 7]. -/
def code_11507 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #11508: ((6,2,2)), m=15, a=[2, 2, 3, 4, 5, 6], S=[0, 14]. -/
def code_11508 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-13 : ℚ) / 15)]

/-- Catalogue code #11509: ((6,2,2)), m=15, a=[2, 2, 3, 4, 5, 7], S=[0, 9]. -/
def code_11509 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11510: ((6,2,2)), m=15, a=[2, 2, 3, 4, 5, 7], S=[0, 14]. -/
def code_11510 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-13 : ℚ) / 15)]

/-- Catalogue code #11511: ((6,2,2)), m=15, a=[2, 2, 3, 4, 5, 14], S=[0, 7]. -/
def code_11511 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11512: ((6,2,2)), m=15, a=[2, 2, 3, 4, 6, 7], S=[0, 14]. -/
def code_11512 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11513: ((6,2,2)), m=15, a=[2, 2, 3, 4, 7, 8], S=[0, 14]. -/
def code_11513 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11514: ((6,2,2)), m=15, a=[2, 2, 3, 4, 10, 12], S=[0, 7]. -/
def code_11514 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11515: ((6,2,2)), m=15, a=[2, 2, 3, 5, 6, 7], S=[0, 11]. -/
def code_11515 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11516: ((6,2,2)), m=15, a=[2, 2, 3, 5, 6, 7], S=[0, 14]. -/
def code_11516 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11517: ((6,2,2)), m=15, a=[2, 2, 3, 7, 7, 12], S=[0, 4]. -/
def code_11517 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11518: ((6,2,2)), m=15, a=[2, 2, 3, 7, 7, 12], S=[0, 14]. -/
def code_11518 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11519: ((6,2,2)), m=15, a=[2, 2, 3, 7, 9, 10], S=[0, 4]. -/
def code_11519 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11520: ((6,2,2)), m=15, a=[2, 2, 3, 7, 9, 10], S=[0, 14]. -/
def code_11520 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15)]

/-- Catalogue code #11521: ((6,2,2)), m=15, a=[2, 2, 3, 7, 10, 11], S=[0, 14]. -/
def code_11521 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11522: ((6,2,2)), m=15, a=[2, 2, 3, 7, 11, 12], S=[0, 14]. -/
def code_11522 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11523: ((6,2,2)), m=15, a=[2, 2, 3, 8, 8, 12], S=[0, 4]. -/
def code_11523 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11524: ((6,2,2)), m=15, a=[2, 2, 3, 8, 8, 14], S=[0, 4]. -/
def code_11524 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11525: ((6,2,2)), m=15, a=[2, 2, 3, 8, 10, 12], S=[0, 11]. -/
def code_11525 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11526: ((6,2,2)), m=15, a=[2, 2, 3, 8, 12, 14], S=[0, 4]. -/
def code_11526 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11527: ((6,2,2)), m=15, a=[2, 2, 3, 9, 10, 11], S=[0, 14]. -/
def code_11527 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11528: ((6,2,2)), m=15, a=[2, 2, 3, 11, 12, 14], S=[0, 7]. -/
def code_11528 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11529: ((6,2,2)), m=15, a=[2, 2, 4, 5, 6, 7], S=[0, 12]. -/
def code_11529 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11530: ((6,2,2)), m=15, a=[2, 2, 4, 5, 6, 7], S=[0, 14]. -/
def code_11530 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11531: ((6,2,2)), m=15, a=[2, 2, 4, 5, 6, 9], S=[0, 14]. -/
def code_11531 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11532: ((6,2,2)), m=15, a=[2, 2, 4, 5, 7, 14], S=[0, 12]. -/
def code_11532 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11533: ((6,2,2)), m=15, a=[2, 2, 4, 7, 7, 12], S=[0, 1]. -/
def code_11533 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11534: ((6,2,2)), m=15, a=[2, 2, 4, 7, 7, 14], S=[0, 3]. -/
def code_11534 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11535: ((6,2,2)), m=15, a=[2, 2, 4, 7, 9, 10], S=[0, 1]. -/
def code_11535 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11536: ((6,2,2)), m=15, a=[2, 2, 4, 7, 9, 12], S=[0, 1]. -/
def code_11536 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11537: ((6,2,2)), m=15, a=[2, 2, 4, 7, 10, 11], S=[0, 3]. -/
def code_11537 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11538: ((6,2,2)), m=15, a=[2, 2, 4, 9, 10, 12], S=[0, 1]. -/
def code_11538 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11539: ((6,2,2)), m=15, a=[2, 2, 4, 10, 11, 12], S=[0, 8]. -/
def code_11539 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #11540: ((6,2,2)), m=15, a=[2, 2, 5, 6, 6, 11], S=[0, 1]. -/
def code_11540 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11541: ((6,2,2)), m=15, a=[2, 2, 5, 6, 6, 14], S=[0, 4]. -/
def code_11541 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11542: ((6,2,2)), m=15, a=[2, 2, 5, 6, 8, 11], S=[0, 1]. -/
def code_11542 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11543: ((6,2,2)), m=15, a=[2, 2, 5, 6, 8, 11], S=[0, 3]. -/
def code_11543 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11544: ((6,2,2)), m=15, a=[2, 2, 5, 6, 8, 12], S=[0, 1]. -/
def code_11544 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11545: ((6,2,2)), m=15, a=[2, 2, 5, 6, 8, 12], S=[0, 4]. -/
def code_11545 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11546: ((6,2,2)), m=15, a=[2, 2, 5, 6, 8, 14], S=[0, 4]. -/
def code_11546 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11547: ((6,2,2)), m=15, a=[2, 2, 5, 6, 11, 12], S=[0, 1]. -/
def code_11547 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11548: ((6,2,2)), m=15, a=[2, 2, 5, 6, 12, 14], S=[0, 4]. -/
def code_11548 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11549: ((6,2,2)), m=15, a=[2, 2, 5, 6, 14, 14], S=[0, 4]. -/
def code_11549 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11550: ((6,2,2)), m=15, a=[2, 2, 5, 7, 7, 14], S=[0, 3]. -/
def code_11550 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11551: ((6,2,2)), m=15, a=[2, 2, 5, 7, 11, 14], S=[0, 3]. -/
def code_11551 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11552: ((6,2,2)), m=15, a=[2, 2, 5, 8, 11, 12], S=[0, 1]. -/
def code_11552 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11553: ((6,2,2)), m=15, a=[2, 2, 5, 8, 12, 14], S=[0, 4]. -/
def code_11553 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11554: ((6,2,2)), m=15, a=[2, 2, 5, 11, 12, 14], S=[0, 8]. -/
def code_11554 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11555: ((6,2,2)), m=15, a=[2, 2, 6, 8, 11, 12], S=[0, 1]. -/
def code_11555 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11556: ((6,2,2)), m=15, a=[2, 2, 7, 7, 11, 12], S=[0, 14]. -/
def code_11556 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11557: ((6,2,2)), m=15, a=[2, 2, 7, 7, 11, 14], S=[0, 3]. -/
def code_11557 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11558: ((6,2,2)), m=15, a=[2, 2, 7, 7, 12, 12], S=[0, 1]. -/
def code_11558 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11559: ((6,2,2)), m=15, a=[2, 2, 7, 7, 12, 14], S=[0, 11]. -/
def code_11559 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #11560: ((6,2,2)), m=15, a=[2, 2, 7, 9, 10, 11], S=[0, 14]. -/
def code_11560 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11561: ((6,2,2)), m=15, a=[2, 2, 7, 9, 10, 12], S=[0, 1]. -/
def code_11561 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11562: ((6,2,2)), m=15, a=[2, 2, 7, 9, 10, 12], S=[0, 11]. -/
def code_11562 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #11563: ((6,2,2)), m=15, a=[2, 2, 7, 9, 10, 14], S=[0, 11]. -/
def code_11563 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #11564: ((6,2,2)), m=15, a=[2, 2, 7, 9, 12, 14], S=[0, 11]. -/
def code_11564 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11565: ((6,2,2)), m=15, a=[2, 2, 7, 10, 12, 12], S=[0, 11]. -/
def code_11565 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11566: ((6,2,2)), m=15, a=[2, 2, 7, 10, 12, 14], S=[0, 11]. -/
def code_11566 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11567: ((6,2,2)), m=15, a=[2, 2, 7, 12, 12, 14], S=[0, 11]. -/
def code_11567 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11568: ((6,2,2)), m=15, a=[2, 2, 8, 8, 11, 14], S=[0, 3]. -/
def code_11568 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11569: ((6,2,2)), m=15, a=[2, 2, 9, 10, 12, 14], S=[0, 11]. -/
def code_11569 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11570: ((6,2,2)), m=15, a=[2, 2, 10, 11, 12, 12], S=[0, 8]. -/
def code_11570 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (2 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11571: ((6,2,2)), m=15, a=[2, 3, 3, 4, 4, 5], S=[0, 8]. -/
def code_11571 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11572: ((6,2,2)), m=15, a=[2, 3, 3, 4, 7, 8], S=[0, 14]. -/
def code_11572 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11573: ((6,2,2)), m=15, a=[2, 3, 3, 4, 10, 11], S=[0, 6]. -/
def code_11573 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11574: ((6,2,2)), m=15, a=[2, 3, 3, 7, 7, 10], S=[0, 1]. -/
def code_11574 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11575: ((6,2,2)), m=15, a=[2, 3, 3, 7, 7, 14], S=[0, 4]. -/
def code_11575 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11576: ((6,2,2)), m=15, a=[2, 3, 3, 7, 10, 13], S=[0, 4]. -/
def code_11576 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11577: ((6,2,2)), m=15, a=[2, 3, 3, 7, 13, 14], S=[0, 4]. -/
def code_11577 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #11578: ((6,2,2)), m=15, a=[2, 3, 3, 10, 11, 11], S=[0, 8]. -/
def code_11578 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11579: ((6,2,2)), m=15, a=[2, 3, 3, 10, 11, 13], S=[0, 6]. -/
def code_11579 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11580: ((6,2,2)), m=15, a=[2, 3, 3, 10, 11, 13], S=[0, 8]. -/
def code_11580 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11581: ((6,2,2)), m=15, a=[2, 3, 3, 10, 14, 14], S=[0, 8]. -/
def code_11581 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11582: ((6,2,2)), m=15, a=[2, 3, 3, 11, 13, 14], S=[0, 8]. -/
def code_11582 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11583: ((6,2,2)), m=15, a=[2, 3, 4, 4, 5, 6], S=[0, 8]. -/
def code_11583 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11584: ((6,2,2)), m=15, a=[2, 3, 4, 4, 5, 7], S=[0, 9]. -/
def code_11584 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11585: ((6,2,2)), m=15, a=[2, 3, 4, 4, 5, 14], S=[0, 8]. -/
def code_11585 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11586: ((6,2,2)), m=15, a=[2, 3, 4, 4, 6, 14], S=[0, 8]. -/
def code_11586 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #11587: ((6,2,2)), m=15, a=[2, 3, 4, 4, 10, 12], S=[0, 7]. -/
def code_11587 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11588: ((6,2,2)), m=15, a=[2, 3, 4, 5, 6, 7], S=[0, 14]. -/
def code_11588 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11589: ((6,2,2)), m=15, a=[2, 3, 4, 5, 6, 8], S=[0, 14]. -/
def code_11589 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11590: ((6,2,2)), m=15, a=[2, 3, 4, 5, 6, 14], S=[0, 8]. -/
def code_11590 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11591: ((6,2,2)), m=15, a=[2, 3, 4, 5, 7, 9], S=[0, 1]. -/
def code_11591 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11592: ((6,2,2)), m=15, a=[2, 3, 4, 5, 7, 12], S=[0, 9]. -/
def code_11592 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11593: ((6,2,2)), m=15, a=[2, 3, 4, 5, 7, 14], S=[0, 6]. -/
def code_11593 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11594: ((6,2,2)), m=15, a=[2, 3, 4, 5, 8, 9], S=[0, 14]. -/
def code_11594 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11595: ((6,2,2)), m=15, a=[2, 3, 4, 5, 8, 13], S=[0, 6]. -/
def code_11595 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11596: ((6,2,2)), m=15, a=[2, 3, 4, 5, 8, 13], S=[0, 14]. -/
def code_11596 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-13 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11597: ((6,2,2)), m=15, a=[2, 3, 4, 5, 9, 13], S=[0, 14]. -/
def code_11597 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11598: ((6,2,2)), m=15, a=[2, 3, 4, 5, 9, 14], S=[0, 8]. -/
def code_11598 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11599: ((6,2,2)), m=15, a=[2, 3, 4, 6, 7, 10], S=[0, 1]. -/
def code_11599 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11600: ((6,2,2)), m=15, a=[2, 3, 4, 6, 8, 10], S=[0, 1]. -/
def code_11600 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11601: ((6,2,2)), m=15, a=[2, 3, 4, 6, 8, 13], S=[0, 1]. -/
def code_11601 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11602: ((6,2,2)), m=15, a=[2, 3, 4, 6, 10, 11], S=[0, 7]. -/
def code_11602 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11603: ((6,2,2)), m=15, a=[2, 3, 4, 6, 10, 13], S=[0, 1]. -/
def code_11603 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11604: ((6,2,2)), m=15, a=[2, 3, 4, 6, 10, 14], S=[0, 8]. -/
def code_11604 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11605: ((6,2,2)), m=15, a=[2, 3, 4, 6, 14, 14], S=[0, 8]. -/
def code_11605 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11606: ((6,2,2)), m=15, a=[2, 3, 4, 7, 10, 14], S=[0, 6]. -/
def code_11606 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11607: ((6,2,2)), m=15, a=[2, 3, 4, 8, 8, 9], S=[0, 14]. -/
def code_11607 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11608: ((6,2,2)), m=15, a=[2, 3, 4, 8, 8, 10], S=[0, 14]. -/
def code_11608 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11609: ((6,2,2)), m=15, a=[2, 3, 4, 8, 9, 10], S=[0, 14]. -/
def code_11609 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11610: ((6,2,2)), m=15, a=[2, 3, 4, 8, 9, 13], S=[0, 14]. -/
def code_11610 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11611: ((6,2,2)), m=15, a=[2, 3, 4, 8, 10, 13], S=[0, 1]. -/
def code_11611 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11612: ((6,2,2)), m=15, a=[2, 3, 4, 8, 13, 14], S=[0, 9]. -/
def code_11612 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11613: ((6,2,2)), m=15, a=[2, 3, 4, 9, 10, 14], S=[0, 8]. -/
def code_11613 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11614: ((6,2,2)), m=15, a=[2, 3, 4, 9, 11, 14], S=[0, 8]. -/
def code_11614 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-7 : ℚ) / 15)]

/-- Catalogue code #11615: ((6,2,2)), m=15, a=[2, 3, 4, 10, 11, 14], S=[0, 8]. -/
def code_11615 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11616: ((6,2,2)), m=15, a=[2, 3, 4, 10, 13, 14], S=[0, 8]. -/
def code_11616 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11617: ((6,2,2)), m=15, a=[2, 3, 4, 10, 13, 14], S=[0, 9]. -/
def code_11617 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11618: ((6,2,2)), m=15, a=[2, 3, 4, 10, 14, 14], S=[0, 8]. -/
def code_11618 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5)]

/-- Catalogue code #11619: ((6,2,2)), m=15, a=[2, 3, 5, 6, 7, 14], S=[0, 11]. -/
def code_11619 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11620: ((6,2,2)), m=15, a=[2, 3, 5, 6, 8, 14], S=[0, 4]. -/
def code_11620 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11621: ((6,2,2)), m=15, a=[2, 3, 5, 6, 11, 11], S=[0, 7]. -/
def code_11621 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11622: ((6,2,2)), m=15, a=[2, 3, 5, 6, 11, 14], S=[0, 7]. -/
def code_11622 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #11623: ((6,2,2)), m=15, a=[2, 3, 5, 7, 10, 11], S=[0, 9]. -/
def code_11623 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11624: ((6,2,2)), m=15, a=[2, 3, 5, 8, 8, 9], S=[0, 1]. -/
def code_11624 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11625: ((6,2,2)), m=15, a=[2, 3, 5, 8, 8, 11], S=[0, 1]. -/
def code_11625 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11626: ((6,2,2)), m=15, a=[2, 3, 5, 8, 8, 14], S=[0, 4]. -/
def code_11626 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11627: ((6,2,2)), m=15, a=[2, 3, 5, 8, 8, 14], S=[0, 6]. -/
def code_11627 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11628: ((6,2,2)), m=15, a=[2, 3, 5, 8, 9, 11], S=[0, 1]. -/
def code_11628 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11629: ((6,2,2)), m=15, a=[2, 3, 5, 8, 9, 13], S=[0, 14]. -/
def code_11629 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11630: ((6,2,2)), m=15, a=[2, 3, 5, 8, 9, 14], S=[0, 4]. -/
def code_11630 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11631: ((6,2,2)), m=15, a=[2, 3, 5, 8, 11, 11], S=[0, 9]. -/
def code_11631 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11632: ((6,2,2)), m=15, a=[2, 3, 5, 8, 11, 14], S=[0, 6]. -/
def code_11632 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11633: ((6,2,2)), m=15, a=[2, 3, 5, 9, 11, 14], S=[0, 7]. -/
def code_11633 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11634: ((6,2,2)), m=15, a=[2, 3, 5, 11, 11, 14], S=[0, 7]. -/
def code_11634 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11635: ((6,2,2)), m=15, a=[2, 3, 6, 7, 7, 10], S=[0, 1]. -/
def code_11635 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11636: ((6,2,2)), m=15, a=[2, 3, 6, 7, 7, 10], S=[0, 4]. -/
def code_11636 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-11 : ℚ) / 15)]

/-- Catalogue code #11637: ((6,2,2)), m=15, a=[2, 3, 6, 7, 7, 11], S=[0, 1]. -/
def code_11637 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11638: ((6,2,2)), m=15, a=[2, 3, 6, 7, 7, 14], S=[0, 4]. -/
def code_11638 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-11 : ℚ) / 15)]

/-- Catalogue code #11639: ((6,2,2)), m=15, a=[2, 3, 6, 7, 10, 11], S=[0, 1]. -/
def code_11639 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11640: ((6,2,2)), m=15, a=[2, 3, 6, 7, 10, 14], S=[0, 4]. -/
def code_11640 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11641: ((6,2,2)), m=15, a=[2, 3, 6, 8, 10, 13], S=[0, 1]. -/
def code_11641 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11642: ((6,2,2)), m=15, a=[2, 3, 6, 8, 10, 13], S=[0, 11]. -/
def code_11642 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11643: ((6,2,2)), m=15, a=[2, 3, 6, 8, 10, 14], S=[0, 11]. -/
def code_11643 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11644: ((6,2,2)), m=15, a=[2, 3, 6, 8, 13, 14], S=[0, 11]. -/
def code_11644 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11645: ((6,2,2)), m=15, a=[2, 3, 6, 10, 11, 14], S=[0, 8]. -/
def code_11645 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11646: ((6,2,2)), m=15, a=[2, 3, 6, 10, 13, 14], S=[0, 11]. -/
def code_11646 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11647: ((6,2,2)), m=15, a=[2, 3, 6, 10, 14, 14], S=[0, 8]. -/
def code_11647 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11648: ((6,2,2)), m=15, a=[2, 3, 6, 11, 11, 14], S=[0, 7]. -/
def code_11648 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11649: ((6,2,2)), m=15, a=[2, 3, 7, 7, 10, 11], S=[0, 1]. -/
def code_11649 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11650: ((6,2,2)), m=15, a=[2, 3, 7, 7, 10, 11], S=[0, 9]. -/
def code_11650 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11651: ((6,2,2)), m=15, a=[2, 3, 7, 7, 10, 14], S=[0, 4]. -/
def code_11651 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11652: ((6,2,2)), m=15, a=[2, 3, 7, 7, 11, 12], S=[0, 14]. -/
def code_11652 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11653: ((6,2,2)), m=15, a=[2, 3, 7, 7, 13, 14], S=[0, 4]. -/
def code_11653 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15)]

/-- Catalogue code #11654: ((6,2,2)), m=15, a=[2, 3, 7, 9, 10, 11], S=[0, 14]. -/
def code_11654 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11655: ((6,2,2)), m=15, a=[2, 3, 7, 9, 10, 14], S=[0, 4]. -/
def code_11655 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11656: ((6,2,2)), m=15, a=[2, 3, 7, 9, 10, 14], S=[0, 11]. -/
def code_11656 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11657: ((6,2,2)), m=15, a=[2, 3, 7, 10, 11, 12], S=[0, 6]. -/
def code_11657 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11658: ((6,2,2)), m=15, a=[2, 3, 7, 10, 11, 12], S=[0, 9]. -/
def code_11658 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11659: ((6,2,2)), m=15, a=[2, 3, 7, 10, 11, 14], S=[0, 6]. -/
def code_11659 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11660: ((6,2,2)), m=15, a=[2, 3, 7, 10, 11, 14], S=[0, 9]. -/
def code_11660 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11661: ((6,2,2)), m=15, a=[2, 3, 8, 8, 9, 10], S=[0, 11]. -/
def code_11661 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11662: ((6,2,2)), m=15, a=[2, 3, 8, 8, 9, 10], S=[0, 14]. -/
def code_11662 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11663: ((6,2,2)), m=15, a=[2, 3, 8, 8, 9, 14], S=[0, 4]. -/
def code_11663 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #11664: ((6,2,2)), m=15, a=[2, 3, 8, 8, 10, 12], S=[0, 14]. -/
def code_11664 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11665: ((6,2,2)), m=15, a=[2, 3, 8, 8, 11, 14], S=[0, 6]. -/
def code_11665 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11666: ((6,2,2)), m=15, a=[2, 3, 8, 8, 12, 14], S=[0, 4]. -/
def code_11666 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11667: ((6,2,2)), m=15, a=[2, 3, 8, 9, 10, 11], S=[0, 14]. -/
def code_11667 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11668: ((6,2,2)), m=15, a=[2, 3, 8, 10, 13, 14], S=[0, 11]. -/
def code_11668 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11669: ((6,2,2)), m=15, a=[2, 3, 9, 10, 11, 14], S=[0, 8]. -/
def code_11669 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11670: ((6,2,2)), m=15, a=[2, 3, 10, 11, 11, 13], S=[0, 8]. -/
def code_11670 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11671: ((6,2,2)), m=15, a=[2, 3, 10, 11, 12, 12], S=[0, 9]. -/
def code_11671 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11672: ((6,2,2)), m=15, a=[2, 4, 4, 5, 6, 7], S=[0, 14]. -/
def code_11672 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11673: ((6,2,2)), m=15, a=[2, 4, 4, 5, 6, 14], S=[0, 8]. -/
def code_11673 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11674: ((6,2,2)), m=15, a=[2, 4, 4, 5, 8, 9], S=[0, 1]. -/
def code_11674 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11675: ((6,2,2)), m=15, a=[2, 4, 4, 5, 8, 14], S=[0, 6]. -/
def code_11675 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11676: ((6,2,2)), m=15, a=[2, 4, 4, 5, 9, 12], S=[0, 7]. -/
def code_11676 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11677: ((6,2,2)), m=15, a=[2, 4, 4, 5, 12, 12], S=[0, 6]. -/
def code_11677 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11678: ((6,2,2)), m=15, a=[2, 4, 4, 5, 12, 12], S=[0, 7]. -/
def code_11678 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11679: ((6,2,2)), m=15, a=[2, 4, 4, 5, 12, 13], S=[0, 7]. -/
def code_11679 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11680: ((6,2,2)), m=15, a=[2, 4, 4, 5, 14, 14], S=[0, 6]. -/
def code_11680 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11681: ((6,2,2)), m=15, a=[2, 4, 5, 6, 6, 7], S=[0, 12]. -/
def code_11681 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11682: ((6,2,2)), m=15, a=[2, 4, 5, 6, 7, 8], S=[0, 3]. -/
def code_11682 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11683: ((6,2,2)), m=15, a=[2, 4, 5, 6, 7, 8], S=[0, 14]. -/
def code_11683 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11684: ((6,2,2)), m=15, a=[2, 4, 5, 6, 7, 10], S=[0, 3]. -/
def code_11684 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11685: ((6,2,2)), m=15, a=[2, 4, 5, 6, 7, 12], S=[0, 14]. -/
def code_11685 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11686: ((6,2,2)), m=15, a=[2, 4, 5, 6, 7, 14], S=[0, 3]. -/
def code_11686 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11687: ((6,2,2)), m=15, a=[2, 4, 5, 6, 8, 12], S=[0, 14]. -/
def code_11687 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11688: ((6,2,2)), m=15, a=[2, 4, 5, 7, 7, 12], S=[0, 1]. -/
def code_11688 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11689: ((6,2,2)), m=15, a=[2, 4, 5, 7, 7, 14], S=[0, 3]. -/
def code_11689 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11690: ((6,2,2)), m=15, a=[2, 4, 5, 7, 7, 14], S=[0, 6]. -/
def code_11690 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11691: ((6,2,2)), m=15, a=[2, 4, 5, 7, 8, 14], S=[0, 12]. -/
def code_11691 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11692: ((6,2,2)), m=15, a=[2, 4, 5, 7, 9, 12], S=[0, 1]. -/
def code_11692 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11693: ((6,2,2)), m=15, a=[2, 4, 5, 7, 9, 14], S=[0, 3]. -/
def code_11693 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11694: ((6,2,2)), m=15, a=[2, 4, 5, 7, 9, 14], S=[0, 12]. -/
def code_11694 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11695: ((6,2,2)), m=15, a=[2, 4, 5, 7, 12, 12], S=[0, 6]. -/
def code_11695 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11696: ((6,2,2)), m=15, a=[2, 4, 5, 8, 9, 13], S=[0, 14]. -/
def code_11696 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #11697: ((6,2,2)), m=15, a=[2, 4, 5, 8, 14, 14], S=[0, 6]. -/
def code_11697 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11698: ((6,2,2)), m=15, a=[2, 4, 5, 9, 12, 14], S=[0, 8]. -/
def code_11698 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11699: ((6,2,2)), m=15, a=[2, 4, 5, 12, 12, 13], S=[0, 7]. -/
def code_11699 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11700: ((6,2,2)), m=15, a=[2, 4, 6, 7, 8, 12], S=[0, 14]. -/
def code_11700 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11701: ((6,2,2)), m=15, a=[2, 4, 6, 7, 10, 14], S=[0, 12]. -/
def code_11701 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11702: ((6,2,2)), m=15, a=[2, 4, 6, 8, 13, 14], S=[0, 12]. -/
def code_11702 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11703: ((6,2,2)), m=15, a=[2, 4, 6, 9, 14, 14], S=[0, 8]. -/
def code_11703 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11704: ((6,2,2)), m=15, a=[2, 4, 6, 10, 13, 14], S=[0, 12]. -/
def code_11704 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11705: ((6,2,2)), m=15, a=[2, 4, 7, 7, 9, 12], S=[0, 1]. -/
def code_11705 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11706: ((6,2,2)), m=15, a=[2, 4, 7, 7, 10, 13], S=[0, 12]. -/
def code_11706 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11707: ((6,2,2)), m=15, a=[2, 4, 7, 7, 12, 12], S=[0, 1]. -/
def code_11707 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11708: ((6,2,2)), m=15, a=[2, 4, 7, 7, 13, 14], S=[0, 12]. -/
def code_11708 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11709: ((6,2,2)), m=15, a=[2, 4, 7, 9, 10, 11], S=[0, 14]. -/
def code_11709 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11710: ((6,2,2)), m=15, a=[2, 4, 7, 9, 10, 12], S=[0, 1]. -/
def code_11710 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((3 : ℚ) / 5)]

/-- Catalogue code #11711: ((6,2,2)), m=15, a=[2, 4, 7, 9, 11, 14], S=[0, 12]. -/
def code_11711 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11712: ((6,2,2)), m=15, a=[2, 4, 7, 10, 12, 14], S=[0, 9]. -/
def code_11712 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11713: ((6,2,2)), m=15, a=[2, 4, 7, 10, 13, 14], S=[0, 12]. -/
def code_11713 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11714: ((6,2,2)), m=15, a=[2, 4, 8, 8, 9, 10], S=[0, 14]. -/
def code_11714 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11715: ((6,2,2)), m=15, a=[2, 4, 8, 9, 10, 10], S=[0, 12]. -/
def code_11715 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11716: ((6,2,2)), m=15, a=[2, 4, 8, 9, 10, 12], S=[0, 1]. -/
def code_11716 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11717: ((6,2,2)), m=15, a=[2, 4, 8, 9, 10, 12], S=[0, 14]. -/
def code_11717 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11718: ((6,2,2)), m=15, a=[2, 4, 9, 9, 10, 13], S=[0, 1]. -/
def code_11718 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11719: ((6,2,2)), m=15, a=[2, 4, 9, 10, 11, 14], S=[0, 8]. -/
def code_11719 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #11720: ((6,2,2)), m=15, a=[2, 4, 9, 10, 12, 14], S=[0, 7]. -/
def code_11720 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #11721: ((6,2,2)), m=15, a=[2, 4, 10, 11, 12, 12], S=[0, 8]. -/
def code_11721 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11722: ((6,2,2)), m=15, a=[2, 5, 6, 6, 11, 13], S=[0, 14]. -/
def code_11722 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11723: ((6,2,2)), m=15, a=[2, 5, 6, 6, 14, 14], S=[0, 4]. -/
def code_11723 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11724: ((6,2,2)), m=15, a=[2, 5, 6, 7, 8, 12], S=[0, 11]. -/
def code_11724 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11725: ((6,2,2)), m=15, a=[2, 5, 6, 7, 8, 12], S=[0, 14]. -/
def code_11725 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11726: ((6,2,2)), m=15, a=[2, 5, 6, 7, 11, 12], S=[0, 14]. -/
def code_11726 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11727: ((6,2,2)), m=15, a=[2, 5, 6, 8, 11, 11], S=[0, 14]. -/
def code_11727 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11728: ((6,2,2)), m=15, a=[2, 5, 6, 8, 11, 12], S=[0, 1]. -/
def code_11728 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11729: ((6,2,2)), m=15, a=[2, 5, 6, 8, 11, 14], S=[0, 12]. -/
def code_11729 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11730: ((6,2,2)), m=15, a=[2, 5, 6, 8, 12, 14], S=[0, 4]. -/
def code_11730 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11731: ((6,2,2)), m=15, a=[2, 5, 6, 11, 11, 14], S=[0, 7]. -/
def code_11731 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11732: ((6,2,2)), m=15, a=[2, 5, 7, 7, 9, 12], S=[0, 1]. -/
def code_11732 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11733: ((6,2,2)), m=15, a=[2, 5, 7, 7, 9, 12], S=[0, 11]. -/
def code_11733 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11734: ((6,2,2)), m=15, a=[2, 5, 7, 7, 9, 14], S=[0, 11]. -/
def code_11734 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11735: ((6,2,2)), m=15, a=[2, 5, 7, 7, 11, 14], S=[0, 3]. -/
def code_11735 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11736: ((6,2,2)), m=15, a=[2, 5, 7, 7, 12, 12], S=[0, 1]. -/
def code_11736 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11737: ((6,2,2)), m=15, a=[2, 5, 7, 7, 12, 14], S=[0, 11]. -/
def code_11737 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11738: ((6,2,2)), m=15, a=[2, 5, 7, 9, 11, 12], S=[0, 14]. -/
def code_11738 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-7 : ℚ) / 15)]

/-- Catalogue code #11739: ((6,2,2)), m=15, a=[2, 5, 7, 9, 12, 13], S=[0, 4]. -/
def code_11739 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11740: ((6,2,2)), m=15, a=[2, 5, 7, 9, 12, 13], S=[0, 14]. -/
def code_11740 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11741: ((6,2,2)), m=15, a=[2, 5, 7, 9, 12, 14], S=[0, 11]. -/
def code_11741 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11742: ((6,2,2)), m=15, a=[2, 5, 7, 11, 11, 14], S=[0, 6]. -/
def code_11742 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11743: ((6,2,2)), m=15, a=[2, 5, 7, 11, 12, 13], S=[0, 14]. -/
def code_11743 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11744: ((6,2,2)), m=15, a=[2, 5, 8, 8, 9, 11], S=[0, 12]. -/
def code_11744 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11745: ((6,2,2)), m=15, a=[2, 5, 8, 8, 11, 13], S=[0, 3]. -/
def code_11745 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11746: ((6,2,2)), m=15, a=[2, 5, 8, 9, 11, 12], S=[0, 1]. -/
def code_11746 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11747: ((6,2,2)), m=15, a=[2, 5, 8, 9, 11, 14], S=[0, 3]. -/
def code_11747 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11748: ((6,2,2)), m=15, a=[2, 5, 8, 9, 11, 14], S=[0, 12]. -/
def code_11748 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11749: ((6,2,2)), m=15, a=[2, 5, 8, 9, 14, 14], S=[0, 11]. -/
def code_11749 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11750: ((6,2,2)), m=15, a=[2, 5, 8, 11, 12, 14], S=[0, 6]. -/
def code_11750 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11751: ((6,2,2)), m=15, a=[2, 5, 8, 11, 12, 14], S=[0, 9]. -/
def code_11751 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11752: ((6,2,2)), m=15, a=[2, 5, 8, 12, 12, 13], S=[0, 11]. -/
def code_11752 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11753: ((6,2,2)), m=15, a=[2, 5, 8, 12, 14, 14], S=[0, 6]. -/
def code_11753 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11754: ((6,2,2)), m=15, a=[2, 5, 9, 11, 12, 13], S=[0, 14]. -/
def code_11754 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11755: ((6,2,2)), m=15, a=[2, 5, 9, 11, 12, 14], S=[0, 7]. -/
def code_11755 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11756: ((6,2,2)), m=15, a=[2, 5, 9, 11, 14, 14], S=[0, 7]. -/
def code_11756 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11757: ((6,2,2)), m=15, a=[2, 5, 9, 12, 14, 14], S=[0, 7]. -/
def code_11757 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11758: ((6,2,2)), m=15, a=[2, 5, 11, 12, 14, 14], S=[0, 7]. -/
def code_11758 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11759: ((6,2,2)), m=15, a=[2, 5, 12, 12, 14, 14], S=[0, 7]. -/
def code_11759 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11760: ((6,2,2)), m=15, a=[2, 6, 7, 7, 10, 11], S=[0, 1]. -/
def code_11760 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #11761: ((6,2,2)), m=15, a=[2, 6, 7, 7, 10, 11], S=[0, 12]. -/
def code_11761 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11762: ((6,2,2)), m=15, a=[2, 6, 7, 7, 10, 14], S=[0, 4]. -/
def code_11762 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11763: ((6,2,2)), m=15, a=[2, 6, 7, 9, 10, 11], S=[0, 12]. -/
def code_11763 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11764: ((6,2,2)), m=15, a=[2, 6, 7, 9, 13, 14], S=[0, 3]. -/
def code_11764 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11765: ((6,2,2)), m=15, a=[2, 6, 7, 9, 14, 14], S=[0, 11]. -/
def code_11765 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11766: ((6,2,2)), m=15, a=[2, 6, 7, 10, 11, 12], S=[0, 1]. -/
def code_11766 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-7 : ℚ) / 15)]

/-- Catalogue code #11767: ((6,2,2)), m=15, a=[2, 6, 7, 10, 11, 13], S=[0, 1]. -/
def code_11767 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11768: ((6,2,2)), m=15, a=[2, 6, 7, 10, 11, 13], S=[0, 3]. -/
def code_11768 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11769: ((6,2,2)), m=15, a=[2, 6, 7, 10, 11, 14], S=[0, 12]. -/
def code_11769 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11770: ((6,2,2)), m=15, a=[2, 6, 7, 10, 12, 13], S=[0, 1]. -/
def code_11770 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11771: ((6,2,2)), m=15, a=[2, 6, 7, 10, 12, 14], S=[0, 4]. -/
def code_11771 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11772: ((6,2,2)), m=15, a=[2, 6, 7, 10, 13, 14], S=[0, 3]. -/
def code_11772 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11773: ((6,2,2)), m=15, a=[2, 6, 7, 10, 13, 14], S=[0, 4]. -/
def code_11773 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #11774: ((6,2,2)), m=15, a=[2, 6, 7, 10, 14, 14], S=[0, 4]. -/
def code_11774 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11775: ((6,2,2)), m=15, a=[2, 6, 7, 11, 12, 13], S=[0, 1]. -/
def code_11775 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11776: ((6,2,2)), m=15, a=[2, 6, 7, 11, 13, 14], S=[0, 3]. -/
def code_11776 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11777: ((6,2,2)), m=15, a=[2, 6, 7, 12, 13, 14], S=[0, 4]. -/
def code_11777 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11778: ((6,2,2)), m=15, a=[2, 6, 8, 9, 14, 14], S=[0, 4]. -/
def code_11778 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11779: ((6,2,2)), m=15, a=[2, 6, 8, 11, 11, 14], S=[0, 12]. -/
def code_11779 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11780: ((6,2,2)), m=15, a=[2, 6, 9, 9, 13, 14], S=[0, 3]. -/
def code_11780 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11781: ((6,2,2)), m=15, a=[2, 6, 9, 10, 11, 13], S=[0, 3]. -/
def code_11781 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11782: ((6,2,2)), m=15, a=[2, 6, 9, 11, 11, 14], S=[0, 7]. -/
def code_11782 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11783: ((6,2,2)), m=15, a=[2, 6, 9, 11, 14, 14], S=[0, 7]. -/
def code_11783 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11784: ((6,2,2)), m=15, a=[2, 6, 10, 11, 11, 12], S=[0, 8]. -/
def code_11784 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11785: ((6,2,2)), m=15, a=[2, 6, 10, 11, 12, 13], S=[0, 1]. -/
def code_11785 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11786: ((6,2,2)), m=15, a=[2, 6, 10, 12, 13, 14], S=[0, 4]. -/
def code_11786 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #11787: ((6,2,2)), m=15, a=[2, 6, 11, 11, 14, 14], S=[0, 7]. -/
def code_11787 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #11788: ((6,2,2)), m=15, a=[2, 7, 7, 9, 12, 14], S=[0, 11]. -/
def code_11788 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #11789: ((6,2,2)), m=15, a=[2, 7, 7, 10, 13, 14], S=[0, 12]. -/
def code_11789 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11790: ((6,2,2)), m=15, a=[2, 7, 7, 11, 13, 14], S=[0, 12]. -/
def code_11790 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11791: ((6,2,2)), m=15, a=[2, 7, 8, 9, 10, 11], S=[0, 3]. -/
def code_11791 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11792: ((6,2,2)), m=15, a=[2, 7, 8, 9, 10, 11], S=[0, 14]. -/
def code_11792 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15)]

/-- Catalogue code #11793: ((6,2,2)), m=15, a=[2, 7, 8, 9, 10, 12], S=[0, 4]. -/
def code_11793 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11794: ((6,2,2)), m=15, a=[2, 7, 8, 9, 10, 12], S=[0, 14]. -/
def code_11794 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-11 : ℚ) / 15)]

/-- Catalogue code #11795: ((6,2,2)), m=15, a=[2, 7, 8, 9, 11, 12], S=[0, 14]. -/
def code_11795 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11796: ((6,2,2)), m=15, a=[2, 7, 8, 10, 11, 12], S=[0, 14]. -/
def code_11796 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11797: ((6,2,2)), m=15, a=[2, 7, 9, 10, 11, 12], S=[0, 14]. -/
def code_11797 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11798: ((6,2,2)), m=15, a=[2, 7, 9, 10, 11, 14], S=[0, 12]. -/
def code_11798 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11799: ((6,2,2)), m=15, a=[2, 7, 9, 10, 12, 14], S=[0, 11]. -/
def code_11799 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11800: ((6,2,2)), m=15, a=[2, 7, 9, 11, 12, 13], S=[0, 14]. -/
def code_11800 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11801: ((6,2,2)), m=15, a=[2, 7, 10, 10, 11, 14], S=[0, 6]. -/
def code_11801 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11802: ((6,2,2)), m=15, a=[2, 7, 10, 11, 11, 12], S=[0, 9]. -/
def code_11802 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11803: ((6,2,2)), m=15, a=[2, 7, 10, 11, 11, 14], S=[0, 9]. -/
def code_11803 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11804: ((6,2,2)), m=15, a=[2, 7, 10, 11, 12, 13], S=[0, 1]. -/
def code_11804 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11805: ((6,2,2)), m=15, a=[2, 7, 10, 11, 12, 13], S=[0, 9]. -/
def code_11805 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11806: ((6,2,2)), m=15, a=[2, 7, 10, 11, 12, 14], S=[0, 6]. -/
def code_11806 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11807: ((6,2,2)), m=15, a=[2, 7, 10, 11, 12, 14], S=[0, 9]. -/
def code_11807 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11808: ((6,2,2)), m=15, a=[2, 7, 10, 11, 14, 14], S=[0, 9]. -/
def code_11808 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11809: ((6,2,2)), m=15, a=[2, 7, 10, 12, 13, 14], S=[0, 4]. -/
def code_11809 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11810: ((6,2,2)), m=15, a=[2, 7, 11, 11, 14, 14], S=[0, 9]. -/
def code_11810 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11811: ((6,2,2)), m=15, a=[2, 7, 11, 12, 13, 14], S=[0, 9]. -/
def code_11811 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11812: ((6,2,2)), m=15, a=[2, 8, 9, 10, 11, 12], S=[0, 14]. -/
def code_11812 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11813: ((6,2,2)), m=15, a=[2, 8, 10, 10, 13, 14], S=[0, 6]. -/
def code_11813 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11814: ((6,2,2)), m=15, a=[2, 8, 11, 11, 14, 14], S=[0, 6]. -/
def code_11814 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11815: ((6,2,2)), m=15, a=[2, 9, 9, 10, 10, 11], S=[0, 3]. -/
def code_11815 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11816: ((6,2,2)), m=15, a=[2, 9, 9, 10, 13, 14], S=[0, 3]. -/
def code_11816 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11817: ((6,2,2)), m=15, a=[2, 9, 9, 10, 13, 14], S=[0, 11]. -/
def code_11817 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((11 : ℚ) / 15)]

/-- Catalogue code #11818: ((6,2,2)), m=15, a=[2, 9, 9, 13, 14, 14], S=[0, 11]. -/
def code_11818 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11819: ((6,2,2)), m=15, a=[2, 9, 10, 13, 14, 14], S=[0, 11]. -/
def code_11819 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11820: ((6,2,2)), m=15, a=[2, 9, 11, 11, 14, 14], S=[0, 7]. -/
def code_11820 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11821: ((6,2,2)), m=15, a=[2, 9, 11, 12, 14, 14], S=[0, 7]. -/
def code_11821 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11822: ((6,2,2)), m=15, a=[2, 10, 11, 11, 14, 14], S=[0, 9]. -/
def code_11822 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11823: ((6,2,2)), m=15, a=[2, 10, 11, 12, 13, 14], S=[0, 9]. -/
def code_11823 : ExampleData 6 15 2 where
  a := ![(2 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11824: ((6,2,2)), m=15, a=[3, 3, 3, 4, 4, 13], S=[0, 6]. -/
def code_11824 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11825: ((6,2,2)), m=15, a=[3, 3, 3, 4, 8, 13], S=[0, 6]. -/
def code_11825 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11826: ((6,2,2)), m=15, a=[3, 3, 3, 7, 7, 14], S=[0, 9]. -/
def code_11826 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11827: ((6,2,2)), m=15, a=[3, 3, 3, 7, 13, 14], S=[0, 6]. -/
def code_11827 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11828: ((6,2,2)), m=15, a=[3, 3, 3, 8, 13, 14], S=[0, 6]. -/
def code_11828 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11829: ((6,2,2)), m=15, a=[3, 3, 3, 10, 11, 13], S=[0, 9]. -/
def code_11829 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11830: ((6,2,2)), m=15, a=[3, 3, 3, 10, 11, 14], S=[0, 9]. -/
def code_11830 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11831: ((6,2,2)), m=15, a=[3, 3, 4, 4, 5, 7], S=[0, 13]. -/
def code_11831 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11832: ((6,2,2)), m=15, a=[3, 3, 4, 5, 8, 11], S=[0, 2]. -/
def code_11832 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11833: ((6,2,2)), m=15, a=[3, 3, 4, 5, 10, 12], S=[0, 6]. -/
def code_11833 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11834: ((6,2,2)), m=15, a=[3, 3, 4, 5, 11, 12], S=[0, 6]. -/
def code_11834 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11835: ((6,2,2)), m=15, a=[3, 3, 4, 5, 11, 13], S=[0, 7]. -/
def code_11835 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((11 : ℚ) / 15)]

/-- Catalogue code #11836: ((6,2,2)), m=15, a=[3, 3, 4, 5, 13, 13], S=[0, 7]. -/
def code_11836 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11837: ((6,2,2)), m=15, a=[3, 3, 4, 5, 13, 14], S=[0, 6]. -/
def code_11837 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11838: ((6,2,2)), m=15, a=[3, 3, 4, 7, 12, 13], S=[0, 6]. -/
def code_11838 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11839: ((6,2,2)), m=15, a=[3, 3, 4, 7, 14, 14], S=[0, 9]. -/
def code_11839 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11840: ((6,2,2)), m=15, a=[3, 3, 4, 8, 10, 14], S=[0, 6]. -/
def code_11840 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11841: ((6,2,2)), m=15, a=[3, 3, 4, 8, 11, 13], S=[0, 6]. -/
def code_11841 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11842: ((6,2,2)), m=15, a=[3, 3, 4, 8, 13, 14], S=[0, 6]. -/
def code_11842 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11843: ((6,2,2)), m=15, a=[3, 3, 4, 8, 13, 14], S=[0, 9]. -/
def code_11843 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11844: ((6,2,2)), m=15, a=[3, 3, 4, 10, 11, 14], S=[0, 6]. -/
def code_11844 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11845: ((6,2,2)), m=15, a=[3, 3, 4, 10, 12, 14], S=[0, 6]. -/
def code_11845 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11846: ((6,2,2)), m=15, a=[3, 3, 4, 11, 13, 13], S=[0, 7]. -/
def code_11846 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11847: ((6,2,2)), m=15, a=[3, 3, 5, 7, 13, 14], S=[0, 6]. -/
def code_11847 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11848: ((6,2,2)), m=15, a=[3, 3, 5, 7, 13, 14], S=[0, 9]. -/
def code_11848 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11849: ((6,2,2)), m=15, a=[3, 3, 5, 8, 11, 11], S=[0, 13]. -/
def code_11849 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11850: ((6,2,2)), m=15, a=[3, 3, 5, 8, 13, 13], S=[0, 4]. -/
def code_11850 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11851: ((6,2,2)), m=15, a=[3, 3, 5, 11, 13, 13], S=[0, 7]. -/
def code_11851 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11852: ((6,2,2)), m=15, a=[3, 3, 7, 7, 10, 13], S=[0, 14]. -/
def code_11852 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11853: ((6,2,2)), m=15, a=[3, 3, 7, 7, 10, 14], S=[0, 13]. -/
def code_11853 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #11854: ((6,2,2)), m=15, a=[3, 3, 7, 7, 11, 13], S=[0, 1]. -/
def code_11854 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #11855: ((6,2,2)), m=15, a=[3, 3, 7, 7, 11, 14], S=[0, 2]. -/
def code_11855 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11856: ((6,2,2)), m=15, a=[3, 3, 7, 7, 13, 14], S=[0, 4]. -/
def code_11856 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-13 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11857: ((6,2,2)), m=15, a=[3, 3, 7, 7, 14, 14], S=[0, 13]. -/
def code_11857 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11858: ((6,2,2)), m=15, a=[3, 3, 7, 8, 13, 14], S=[0, 6]. -/
def code_11858 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11859: ((6,2,2)), m=15, a=[3, 3, 7, 10, 11, 11], S=[0, 2]. -/
def code_11859 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11860: ((6,2,2)), m=15, a=[3, 3, 7, 10, 11, 14], S=[0, 9]. -/
def code_11860 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11861: ((6,2,2)), m=15, a=[3, 3, 7, 10, 14, 14], S=[0, 13]. -/
def code_11861 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11862: ((6,2,2)), m=15, a=[3, 3, 8, 8, 11, 13], S=[0, 14]. -/
def code_11862 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11863: ((6,2,2)), m=15, a=[3, 3, 8, 8, 13, 13], S=[0, 4]. -/
def code_11863 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
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
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11864: ((6,2,2)), m=15, a=[3, 3, 8, 8, 13, 13], S=[0, 14]. -/
def code_11864 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11865: ((6,2,2)), m=15, a=[3, 3, 8, 10, 11, 13], S=[0, 9]. -/
def code_11865 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11866: ((6,2,2)), m=15, a=[3, 3, 8, 11, 13, 13], S=[0, 14]. -/
def code_11866 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11867: ((6,2,2)), m=15, a=[3, 3, 10, 11, 11, 13], S=[0, 8]. -/
def code_11867 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-11 : ℚ) / 15)]

/-- Catalogue code #11868: ((6,2,2)), m=15, a=[3, 3, 10, 13, 14, 14], S=[0, 6]. -/
def code_11868 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11869: ((6,2,2)), m=15, a=[3, 3, 11, 12, 14, 14], S=[0, 6]. -/
def code_11869 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (3 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11870: ((6,2,2)), m=15, a=[3, 4, 4, 5, 6, 7], S=[0, 13]. -/
def code_11870 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11871: ((6,2,2)), m=15, a=[3, 4, 4, 5, 6, 14], S=[0, 8]. -/
def code_11871 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11872: ((6,2,2)), m=15, a=[3, 4, 4, 5, 6, 14], S=[0, 13]. -/
def code_11872 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11873: ((6,2,2)), m=15, a=[3, 4, 4, 5, 7, 14], S=[0, 9]. -/
def code_11873 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11874: ((6,2,2)), m=15, a=[3, 4, 4, 5, 7, 14], S=[0, 13]. -/
def code_11874 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11875: ((6,2,2)), m=15, a=[3, 4, 4, 5, 8, 9], S=[0, 2]. -/
def code_11875 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11876: ((6,2,2)), m=15, a=[3, 4, 4, 5, 8, 13], S=[0, 6]. -/
def code_11876 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11877: ((6,2,2)), m=15, a=[3, 4, 4, 5, 8, 14], S=[0, 2]. -/
def code_11877 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11878: ((6,2,2)), m=15, a=[3, 4, 4, 5, 8, 14], S=[0, 6]. -/
def code_11878 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11879: ((6,2,2)), m=15, a=[3, 4, 4, 5, 9, 13], S=[0, 7]. -/
def code_11879 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11880: ((6,2,2)), m=15, a=[3, 4, 4, 5, 9, 14], S=[0, 7]. -/
def code_11880 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11881: ((6,2,2)), m=15, a=[3, 4, 4, 5, 12, 14], S=[0, 6]. -/
def code_11881 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11882: ((6,2,2)), m=15, a=[3, 4, 4, 5, 13, 14], S=[0, 7]. -/
def code_11882 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11883: ((6,2,2)), m=15, a=[3, 4, 4, 6, 7, 14], S=[0, 13]. -/
def code_11883 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11884: ((6,2,2)), m=15, a=[3, 4, 4, 8, 9, 14], S=[0, 2]. -/
def code_11884 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11885: ((6,2,2)), m=15, a=[3, 4, 4, 8, 10, 12], S=[0, 13]. -/
def code_11885 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11886: ((6,2,2)), m=15, a=[3, 4, 4, 9, 13, 14], S=[0, 7]. -/
def code_11886 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #11887: ((6,2,2)), m=15, a=[3, 4, 5, 5, 7, 13], S=[0, 6]. -/
def code_11887 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11888: ((6,2,2)), m=15, a=[3, 4, 5, 5, 8, 13], S=[0, 9]. -/
def code_11888 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11889: ((6,2,2)), m=15, a=[3, 4, 5, 5, 13, 14], S=[0, 6]. -/
def code_11889 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11890: ((6,2,2)), m=15, a=[3, 4, 5, 6, 7, 8], S=[0, 1]. -/
def code_11890 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11891: ((6,2,2)), m=15, a=[3, 4, 5, 6, 7, 13], S=[0, 1]. -/
def code_11891 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11892: ((6,2,2)), m=15, a=[3, 4, 5, 6, 7, 14], S=[0, 13]. -/
def code_11892 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #11893: ((6,2,2)), m=15, a=[3, 4, 5, 6, 8, 13], S=[0, 1]. -/
def code_11893 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #11894: ((6,2,2)), m=15, a=[3, 4, 5, 6, 13, 14], S=[0, 7]. -/
def code_11894 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11895: ((6,2,2)), m=15, a=[3, 4, 5, 6, 13, 14], S=[0, 8]. -/
def code_11895 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11896: ((6,2,2)), m=15, a=[3, 4, 5, 7, 8, 13], S=[0, 1]. -/
def code_11896 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11897: ((6,2,2)), m=15, a=[3, 4, 5, 7, 8, 14], S=[0, 9]. -/
def code_11897 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11898: ((6,2,2)), m=15, a=[3, 4, 5, 7, 8, 14], S=[0, 13]. -/
def code_11898 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11899: ((6,2,2)), m=15, a=[3, 4, 5, 7, 9, 14], S=[0, 13]. -/
def code_11899 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5)]

/-- Catalogue code #11900: ((6,2,2)), m=15, a=[3, 4, 5, 7, 12, 14], S=[0, 6]. -/
def code_11900 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11901: ((6,2,2)), m=15, a=[3, 4, 5, 7, 12, 14], S=[0, 9]. -/
def code_11901 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11902: ((6,2,2)), m=15, a=[3, 4, 5, 7, 13, 14], S=[0, 6]. -/
def code_11902 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11903: ((6,2,2)), m=15, a=[3, 4, 5, 7, 13, 14], S=[0, 9]. -/
def code_11903 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11904: ((6,2,2)), m=15, a=[3, 4, 5, 8, 9, 13], S=[0, 14]. -/
def code_11904 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #11905: ((6,2,2)), m=15, a=[3, 4, 5, 8, 9, 14], S=[0, 2]. -/
def code_11905 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11906: ((6,2,2)), m=15, a=[3, 4, 5, 8, 12, 13], S=[0, 6]. -/
def code_11906 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11907: ((6,2,2)), m=15, a=[3, 4, 5, 8, 13, 14], S=[0, 9]. -/
def code_11907 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11908: ((6,2,2)), m=15, a=[3, 4, 5, 9, 13, 14], S=[0, 7]. -/
def code_11908 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11909: ((6,2,2)), m=15, a=[3, 4, 5, 11, 13, 13], S=[0, 7]. -/
def code_11909 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11910: ((6,2,2)), m=15, a=[3, 4, 6, 7, 8, 13], S=[0, 1]. -/
def code_11910 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11911: ((6,2,2)), m=15, a=[3, 4, 6, 7, 10, 13], S=[0, 14]. -/
def code_11911 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11912: ((6,2,2)), m=15, a=[3, 4, 6, 7, 10, 14], S=[0, 13]. -/
def code_11912 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((3 : ℚ) / 5)]

/-- Catalogue code #11913: ((6,2,2)), m=15, a=[3, 4, 6, 7, 14, 14], S=[0, 13]. -/
def code_11913 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11914: ((6,2,2)), m=15, a=[3, 4, 6, 8, 10, 11], S=[0, 13]. -/
def code_11914 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11915: ((6,2,2)), m=15, a=[3, 4, 6, 8, 10, 13], S=[0, 1]. -/
def code_11915 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-7 : ℚ) / 15)]

/-- Catalogue code #11916: ((6,2,2)), m=15, a=[3, 4, 6, 8, 10, 14], S=[0, 2]. -/
def code_11916 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11917: ((6,2,2)), m=15, a=[3, 4, 6, 10, 14, 14], S=[0, 8]. -/
def code_11917 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #11918: ((6,2,2)), m=15, a=[3, 4, 6, 10, 14, 14], S=[0, 13]. -/
def code_11918 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11919: ((6,2,2)), m=15, a=[3, 4, 7, 7, 10, 14], S=[0, 2]. -/
def code_11919 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11920: ((6,2,2)), m=15, a=[3, 4, 7, 7, 12, 13], S=[0, 14]. -/
def code_11920 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11921: ((6,2,2)), m=15, a=[3, 4, 7, 7, 13, 13], S=[0, 14]. -/
def code_11921 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11922: ((6,2,2)), m=15, a=[3, 4, 7, 8, 13, 14], S=[0, 9]. -/
def code_11922 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11923: ((6,2,2)), m=15, a=[3, 4, 7, 9, 10, 11], S=[0, 13]. -/
def code_11923 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11924: ((6,2,2)), m=15, a=[3, 4, 7, 9, 10, 13], S=[0, 14]. -/
def code_11924 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11925: ((6,2,2)), m=15, a=[3, 4, 7, 9, 10, 14], S=[0, 13]. -/
def code_11925 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11926: ((6,2,2)), m=15, a=[3, 4, 7, 9, 11, 14], S=[0, 13]. -/
def code_11926 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11927: ((6,2,2)), m=15, a=[3, 4, 7, 9, 13, 13], S=[0, 14]. -/
def code_11927 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11928: ((6,2,2)), m=15, a=[3, 4, 7, 10, 11, 14], S=[0, 13]. -/
def code_11928 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11929: ((6,2,2)), m=15, a=[3, 4, 7, 10, 13, 13], S=[0, 14]. -/
def code_11929 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11930: ((6,2,2)), m=15, a=[3, 4, 7, 10, 14, 14], S=[0, 9]. -/
def code_11930 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11931: ((6,2,2)), m=15, a=[3, 4, 7, 10, 14, 14], S=[0, 13]. -/
def code_11931 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11932: ((6,2,2)), m=15, a=[3, 4, 7, 12, 13, 13], S=[0, 14]. -/
def code_11932 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11933: ((6,2,2)), m=15, a=[3, 4, 8, 8, 9, 10], S=[0, 14]. -/
def code_11933 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11934: ((6,2,2)), m=15, a=[3, 4, 8, 8, 12, 14], S=[0, 2]. -/
def code_11934 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11935: ((6,2,2)), m=15, a=[3, 4, 8, 9, 10, 13], S=[0, 1]. -/
def code_11935 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11936: ((6,2,2)), m=15, a=[3, 4, 8, 9, 10, 14], S=[0, 2]. -/
def code_11936 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((3 : ℚ) / 5)]

/-- Catalogue code #11937: ((6,2,2)), m=15, a=[3, 4, 8, 9, 14, 14], S=[0, 2]. -/
def code_11937 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11938: ((6,2,2)), m=15, a=[3, 4, 8, 10, 10, 14], S=[0, 6]. -/
def code_11938 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11939: ((6,2,2)), m=15, a=[3, 4, 8, 10, 13, 14], S=[0, 6]. -/
def code_11939 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11940: ((6,2,2)), m=15, a=[3, 4, 8, 10, 13, 14], S=[0, 9]. -/
def code_11940 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11941: ((6,2,2)), m=15, a=[3, 4, 8, 12, 13, 13], S=[0, 1]. -/
def code_11941 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11942: ((6,2,2)), m=15, a=[3, 4, 9, 10, 11, 14], S=[0, 8]. -/
def code_11942 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11943: ((6,2,2)), m=15, a=[3, 4, 9, 10, 11, 14], S=[0, 13]. -/
def code_11943 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11944: ((6,2,2)), m=15, a=[3, 4, 9, 10, 13, 13], S=[0, 14]. -/
def code_11944 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11945: ((6,2,2)), m=15, a=[3, 4, 9, 10, 13, 14], S=[0, 7]. -/
def code_11945 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11946: ((6,2,2)), m=15, a=[3, 4, 9, 10, 14, 14], S=[0, 7]. -/
def code_11946 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11947: ((6,2,2)), m=15, a=[3, 4, 9, 13, 14, 14], S=[0, 7]. -/
def code_11947 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11948: ((6,2,2)), m=15, a=[3, 4, 10, 13, 14, 14], S=[0, 7]. -/
def code_11948 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11949: ((6,2,2)), m=15, a=[3, 4, 11, 12, 13, 14], S=[0, 6]. -/
def code_11949 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11950: ((6,2,2)), m=15, a=[3, 4, 12, 13, 13, 14], S=[0, 7]. -/
def code_11950 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (4 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11951: ((6,2,2)), m=15, a=[3, 5, 6, 7, 8, 13], S=[0, 1]. -/
def code_11951 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11952: ((6,2,2)), m=15, a=[3, 5, 6, 7, 8, 13], S=[0, 11]. -/
def code_11952 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11953: ((6,2,2)), m=15, a=[3, 5, 6, 7, 8, 14], S=[0, 11]. -/
def code_11953 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11954: ((6,2,2)), m=15, a=[3, 5, 6, 7, 11, 13], S=[0, 1]. -/
def code_11954 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11955: ((6,2,2)), m=15, a=[3, 5, 6, 7, 11, 14], S=[0, 2]. -/
def code_11955 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-3 : ℚ) / 5)]

/-- Catalogue code #11956: ((6,2,2)), m=15, a=[3, 5, 6, 7, 13, 14], S=[0, 11]. -/
def code_11956 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11957: ((6,2,2)), m=15, a=[3, 5, 6, 8, 11, 11], S=[0, 13]. -/
def code_11957 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11958: ((6,2,2)), m=15, a=[3, 5, 6, 8, 11, 13], S=[0, 14]. -/
def code_11958 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #11959: ((6,2,2)), m=15, a=[3, 5, 6, 8, 11, 14], S=[0, 13]. -/
def code_11959 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11960: ((6,2,2)), m=15, a=[3, 5, 6, 8, 13, 13], S=[0, 4]. -/
def code_11960 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11961: ((6,2,2)), m=15, a=[3, 5, 6, 8, 13, 13], S=[0, 14]. -/
def code_11961 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11962: ((6,2,2)), m=15, a=[3, 5, 6, 8, 13, 14], S=[0, 11]. -/
def code_11962 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11963: ((6,2,2)), m=15, a=[3, 5, 6, 11, 11, 14], S=[0, 7]. -/
def code_11963 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11964: ((6,2,2)), m=15, a=[3, 5, 6, 11, 11, 14], S=[0, 13]. -/
def code_11964 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #11965: ((6,2,2)), m=15, a=[3, 5, 6, 11, 13, 13], S=[0, 14]. -/
def code_11965 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11966: ((6,2,2)), m=15, a=[3, 5, 6, 11, 13, 14], S=[0, 8]. -/
def code_11966 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 3), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #11967: ((6,2,2)), m=15, a=[3, 5, 7, 7, 9, 11], S=[0, 14]. -/
def code_11967 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11968: ((6,2,2)), m=15, a=[3, 5, 7, 7, 12, 13], S=[0, 1]. -/
def code_11968 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11969: ((6,2,2)), m=15, a=[3, 5, 7, 7, 12, 14], S=[0, 2]. -/
def code_11969 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #11970: ((6,2,2)), m=15, a=[3, 5, 7, 7, 14, 14], S=[0, 2]. -/
def code_11970 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11971: ((6,2,2)), m=15, a=[3, 5, 7, 8, 13, 14], S=[0, 9]. -/
def code_11971 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11972: ((6,2,2)), m=15, a=[3, 5, 7, 8, 13, 14], S=[0, 11]. -/
def code_11972 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11973: ((6,2,2)), m=15, a=[3, 5, 7, 9, 11, 11], S=[0, 2]. -/
def code_11973 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11974: ((6,2,2)), m=15, a=[3, 5, 7, 9, 11, 13], S=[0, 1]. -/
def code_11974 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11975: ((6,2,2)), m=15, a=[3, 5, 7, 9, 11, 14], S=[0, 2]. -/
def code_11975 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11976: ((6,2,2)), m=15, a=[3, 5, 7, 9, 13, 13], S=[0, 1]. -/
def code_11976 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11977: ((6,2,2)), m=15, a=[3, 5, 7, 9, 13, 13], S=[0, 4]. -/
def code_11977 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11978: ((6,2,2)), m=15, a=[3, 5, 7, 9, 13, 14], S=[0, 4]. -/
def code_11978 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11979: ((6,2,2)), m=15, a=[3, 5, 7, 10, 11, 12], S=[0, 9]. -/
def code_11979 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11980: ((6,2,2)), m=15, a=[3, 5, 7, 11, 11, 12], S=[0, 2]. -/
def code_11980 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11981: ((6,2,2)), m=15, a=[3, 5, 7, 11, 13, 13], S=[0, 1]. -/
def code_11981 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11982: ((6,2,2)), m=15, a=[3, 5, 7, 11, 13, 14], S=[0, 6]. -/
def code_11982 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11983: ((6,2,2)), m=15, a=[3, 5, 7, 11, 13, 14], S=[0, 9]. -/
def code_11983 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11984: ((6,2,2)), m=15, a=[3, 5, 7, 12, 13, 13], S=[0, 4]. -/
def code_11984 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11985: ((6,2,2)), m=15, a=[3, 5, 7, 12, 14, 14], S=[0, 2]. -/
def code_11985 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11986: ((6,2,2)), m=15, a=[3, 5, 7, 13, 13, 14], S=[0, 4]. -/
def code_11986 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11987: ((6,2,2)), m=15, a=[3, 5, 7, 13, 13, 14], S=[0, 6]. -/
def code_11987 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11988: ((6,2,2)), m=15, a=[3, 5, 8, 8, 9, 14], S=[0, 4]. -/
def code_11988 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11989: ((6,2,2)), m=15, a=[3, 5, 8, 8, 11, 14], S=[0, 2]. -/
def code_11989 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11990: ((6,2,2)), m=15, a=[3, 5, 8, 9, 13, 14], S=[0, 11]. -/
def code_11990 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11991: ((6,2,2)), m=15, a=[3, 5, 8, 10, 11, 13], S=[0, 6]. -/
def code_11991 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11992: ((6,2,2)), m=15, a=[3, 5, 8, 11, 11, 14], S=[0, 13]. -/
def code_11992 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11993: ((6,2,2)), m=15, a=[3, 5, 9, 11, 11, 13], S=[0, 8]. -/
def code_11993 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11994: ((6,2,2)), m=15, a=[3, 5, 9, 13, 13, 14], S=[0, 4]. -/
def code_11994 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #11995: ((6,2,2)), m=15, a=[3, 5, 11, 11, 12, 13], S=[0, 8]. -/
def code_11995 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11996: ((6,2,2)), m=15, a=[3, 5, 11, 11, 13, 13], S=[0, 8]. -/
def code_11996 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11997: ((6,2,2)), m=15, a=[3, 5, 11, 12, 13, 13], S=[0, 8]. -/
def code_11997 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11998: ((6,2,2)), m=15, a=[3, 5, 11, 13, 13, 14], S=[0, 7]. -/
def code_11998 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11999: ((6,2,2)), m=15, a=[3, 5, 12, 13, 14, 14], S=[0, 8]. -/
def code_11999 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]
def checks : List Bool :=
  [decide code_11500.OK,
   decide code_11501.OK,
   decide code_11502.OK,
   decide code_11503.OK,
   decide code_11504.OK,
   decide code_11505.OK,
   decide code_11506.OK,
   decide code_11507.OK,
   decide code_11508.OK,
   decide code_11509.OK,
   decide code_11510.OK,
   decide code_11511.OK,
   decide code_11512.OK,
   decide code_11513.OK,
   decide code_11514.OK,
   decide code_11515.OK,
   decide code_11516.OK,
   decide code_11517.OK,
   decide code_11518.OK,
   decide code_11519.OK,
   decide code_11520.OK,
   decide code_11521.OK,
   decide code_11522.OK,
   decide code_11523.OK,
   decide code_11524.OK,
   decide code_11525.OK,
   decide code_11526.OK,
   decide code_11527.OK,
   decide code_11528.OK,
   decide code_11529.OK,
   decide code_11530.OK,
   decide code_11531.OK,
   decide code_11532.OK,
   decide code_11533.OK,
   decide code_11534.OK,
   decide code_11535.OK,
   decide code_11536.OK,
   decide code_11537.OK,
   decide code_11538.OK,
   decide code_11539.OK,
   decide code_11540.OK,
   decide code_11541.OK,
   decide code_11542.OK,
   decide code_11543.OK,
   decide code_11544.OK,
   decide code_11545.OK,
   decide code_11546.OK,
   decide code_11547.OK,
   decide code_11548.OK,
   decide code_11549.OK,
   decide code_11550.OK,
   decide code_11551.OK,
   decide code_11552.OK,
   decide code_11553.OK,
   decide code_11554.OK,
   decide code_11555.OK,
   decide code_11556.OK,
   decide code_11557.OK,
   decide code_11558.OK,
   decide code_11559.OK,
   decide code_11560.OK,
   decide code_11561.OK,
   decide code_11562.OK,
   decide code_11563.OK,
   decide code_11564.OK,
   decide code_11565.OK,
   decide code_11566.OK,
   decide code_11567.OK,
   decide code_11568.OK,
   decide code_11569.OK,
   decide code_11570.OK,
   decide code_11571.OK,
   decide code_11572.OK,
   decide code_11573.OK,
   decide code_11574.OK,
   decide code_11575.OK,
   decide code_11576.OK,
   decide code_11577.OK,
   decide code_11578.OK,
   decide code_11579.OK,
   decide code_11580.OK,
   decide code_11581.OK,
   decide code_11582.OK,
   decide code_11583.OK,
   decide code_11584.OK,
   decide code_11585.OK,
   decide code_11586.OK,
   decide code_11587.OK,
   decide code_11588.OK,
   decide code_11589.OK,
   decide code_11590.OK,
   decide code_11591.OK,
   decide code_11592.OK,
   decide code_11593.OK,
   decide code_11594.OK,
   decide code_11595.OK,
   decide code_11596.OK,
   decide code_11597.OK,
   decide code_11598.OK,
   decide code_11599.OK,
   decide code_11600.OK,
   decide code_11601.OK,
   decide code_11602.OK,
   decide code_11603.OK,
   decide code_11604.OK,
   decide code_11605.OK,
   decide code_11606.OK,
   decide code_11607.OK,
   decide code_11608.OK,
   decide code_11609.OK,
   decide code_11610.OK,
   decide code_11611.OK,
   decide code_11612.OK,
   decide code_11613.OK,
   decide code_11614.OK,
   decide code_11615.OK,
   decide code_11616.OK,
   decide code_11617.OK,
   decide code_11618.OK,
   decide code_11619.OK,
   decide code_11620.OK,
   decide code_11621.OK,
   decide code_11622.OK,
   decide code_11623.OK,
   decide code_11624.OK,
   decide code_11625.OK,
   decide code_11626.OK,
   decide code_11627.OK,
   decide code_11628.OK,
   decide code_11629.OK,
   decide code_11630.OK,
   decide code_11631.OK,
   decide code_11632.OK,
   decide code_11633.OK,
   decide code_11634.OK,
   decide code_11635.OK,
   decide code_11636.OK,
   decide code_11637.OK,
   decide code_11638.OK,
   decide code_11639.OK,
   decide code_11640.OK,
   decide code_11641.OK,
   decide code_11642.OK,
   decide code_11643.OK,
   decide code_11644.OK,
   decide code_11645.OK,
   decide code_11646.OK,
   decide code_11647.OK,
   decide code_11648.OK,
   decide code_11649.OK,
   decide code_11650.OK,
   decide code_11651.OK,
   decide code_11652.OK,
   decide code_11653.OK,
   decide code_11654.OK,
   decide code_11655.OK,
   decide code_11656.OK,
   decide code_11657.OK,
   decide code_11658.OK,
   decide code_11659.OK,
   decide code_11660.OK,
   decide code_11661.OK,
   decide code_11662.OK,
   decide code_11663.OK,
   decide code_11664.OK,
   decide code_11665.OK,
   decide code_11666.OK,
   decide code_11667.OK,
   decide code_11668.OK,
   decide code_11669.OK,
   decide code_11670.OK,
   decide code_11671.OK,
   decide code_11672.OK,
   decide code_11673.OK,
   decide code_11674.OK,
   decide code_11675.OK,
   decide code_11676.OK,
   decide code_11677.OK,
   decide code_11678.OK,
   decide code_11679.OK,
   decide code_11680.OK,
   decide code_11681.OK,
   decide code_11682.OK,
   decide code_11683.OK,
   decide code_11684.OK,
   decide code_11685.OK,
   decide code_11686.OK,
   decide code_11687.OK,
   decide code_11688.OK,
   decide code_11689.OK,
   decide code_11690.OK,
   decide code_11691.OK,
   decide code_11692.OK,
   decide code_11693.OK,
   decide code_11694.OK,
   decide code_11695.OK,
   decide code_11696.OK,
   decide code_11697.OK,
   decide code_11698.OK,
   decide code_11699.OK,
   decide code_11700.OK,
   decide code_11701.OK,
   decide code_11702.OK,
   decide code_11703.OK,
   decide code_11704.OK,
   decide code_11705.OK,
   decide code_11706.OK,
   decide code_11707.OK,
   decide code_11708.OK,
   decide code_11709.OK,
   decide code_11710.OK,
   decide code_11711.OK,
   decide code_11712.OK,
   decide code_11713.OK,
   decide code_11714.OK,
   decide code_11715.OK,
   decide code_11716.OK,
   decide code_11717.OK,
   decide code_11718.OK,
   decide code_11719.OK,
   decide code_11720.OK,
   decide code_11721.OK,
   decide code_11722.OK,
   decide code_11723.OK,
   decide code_11724.OK,
   decide code_11725.OK,
   decide code_11726.OK,
   decide code_11727.OK,
   decide code_11728.OK,
   decide code_11729.OK,
   decide code_11730.OK,
   decide code_11731.OK,
   decide code_11732.OK,
   decide code_11733.OK,
   decide code_11734.OK,
   decide code_11735.OK,
   decide code_11736.OK,
   decide code_11737.OK,
   decide code_11738.OK,
   decide code_11739.OK,
   decide code_11740.OK,
   decide code_11741.OK,
   decide code_11742.OK,
   decide code_11743.OK,
   decide code_11744.OK,
   decide code_11745.OK,
   decide code_11746.OK,
   decide code_11747.OK,
   decide code_11748.OK,
   decide code_11749.OK,
   decide code_11750.OK,
   decide code_11751.OK,
   decide code_11752.OK,
   decide code_11753.OK,
   decide code_11754.OK,
   decide code_11755.OK,
   decide code_11756.OK,
   decide code_11757.OK,
   decide code_11758.OK,
   decide code_11759.OK,
   decide code_11760.OK,
   decide code_11761.OK,
   decide code_11762.OK,
   decide code_11763.OK,
   decide code_11764.OK,
   decide code_11765.OK,
   decide code_11766.OK,
   decide code_11767.OK,
   decide code_11768.OK,
   decide code_11769.OK,
   decide code_11770.OK,
   decide code_11771.OK,
   decide code_11772.OK,
   decide code_11773.OK,
   decide code_11774.OK,
   decide code_11775.OK,
   decide code_11776.OK,
   decide code_11777.OK,
   decide code_11778.OK,
   decide code_11779.OK,
   decide code_11780.OK,
   decide code_11781.OK,
   decide code_11782.OK,
   decide code_11783.OK,
   decide code_11784.OK,
   decide code_11785.OK,
   decide code_11786.OK,
   decide code_11787.OK,
   decide code_11788.OK,
   decide code_11789.OK,
   decide code_11790.OK,
   decide code_11791.OK,
   decide code_11792.OK,
   decide code_11793.OK,
   decide code_11794.OK,
   decide code_11795.OK,
   decide code_11796.OK,
   decide code_11797.OK,
   decide code_11798.OK,
   decide code_11799.OK,
   decide code_11800.OK,
   decide code_11801.OK,
   decide code_11802.OK,
   decide code_11803.OK,
   decide code_11804.OK,
   decide code_11805.OK,
   decide code_11806.OK,
   decide code_11807.OK,
   decide code_11808.OK,
   decide code_11809.OK,
   decide code_11810.OK,
   decide code_11811.OK,
   decide code_11812.OK,
   decide code_11813.OK,
   decide code_11814.OK,
   decide code_11815.OK,
   decide code_11816.OK,
   decide code_11817.OK,
   decide code_11818.OK,
   decide code_11819.OK,
   decide code_11820.OK,
   decide code_11821.OK,
   decide code_11822.OK,
   decide code_11823.OK,
   decide code_11824.OK,
   decide code_11825.OK,
   decide code_11826.OK,
   decide code_11827.OK,
   decide code_11828.OK,
   decide code_11829.OK,
   decide code_11830.OK,
   decide code_11831.OK,
   decide code_11832.OK,
   decide code_11833.OK,
   decide code_11834.OK,
   decide code_11835.OK,
   decide code_11836.OK,
   decide code_11837.OK,
   decide code_11838.OK,
   decide code_11839.OK,
   decide code_11840.OK,
   decide code_11841.OK,
   decide code_11842.OK,
   decide code_11843.OK,
   decide code_11844.OK,
   decide code_11845.OK,
   decide code_11846.OK,
   decide code_11847.OK,
   decide code_11848.OK,
   decide code_11849.OK,
   decide code_11850.OK,
   decide code_11851.OK,
   decide code_11852.OK,
   decide code_11853.OK,
   decide code_11854.OK,
   decide code_11855.OK,
   decide code_11856.OK,
   decide code_11857.OK,
   decide code_11858.OK,
   decide code_11859.OK,
   decide code_11860.OK,
   decide code_11861.OK,
   decide code_11862.OK,
   decide code_11863.OK,
   decide code_11864.OK,
   decide code_11865.OK,
   decide code_11866.OK,
   decide code_11867.OK,
   decide code_11868.OK,
   decide code_11869.OK,
   decide code_11870.OK,
   decide code_11871.OK,
   decide code_11872.OK,
   decide code_11873.OK,
   decide code_11874.OK,
   decide code_11875.OK,
   decide code_11876.OK,
   decide code_11877.OK,
   decide code_11878.OK,
   decide code_11879.OK,
   decide code_11880.OK,
   decide code_11881.OK,
   decide code_11882.OK,
   decide code_11883.OK,
   decide code_11884.OK,
   decide code_11885.OK,
   decide code_11886.OK,
   decide code_11887.OK,
   decide code_11888.OK,
   decide code_11889.OK,
   decide code_11890.OK,
   decide code_11891.OK,
   decide code_11892.OK,
   decide code_11893.OK,
   decide code_11894.OK,
   decide code_11895.OK,
   decide code_11896.OK,
   decide code_11897.OK,
   decide code_11898.OK,
   decide code_11899.OK,
   decide code_11900.OK,
   decide code_11901.OK,
   decide code_11902.OK,
   decide code_11903.OK,
   decide code_11904.OK,
   decide code_11905.OK,
   decide code_11906.OK,
   decide code_11907.OK,
   decide code_11908.OK,
   decide code_11909.OK,
   decide code_11910.OK,
   decide code_11911.OK,
   decide code_11912.OK,
   decide code_11913.OK,
   decide code_11914.OK,
   decide code_11915.OK,
   decide code_11916.OK,
   decide code_11917.OK,
   decide code_11918.OK,
   decide code_11919.OK,
   decide code_11920.OK,
   decide code_11921.OK,
   decide code_11922.OK,
   decide code_11923.OK,
   decide code_11924.OK,
   decide code_11925.OK,
   decide code_11926.OK,
   decide code_11927.OK,
   decide code_11928.OK,
   decide code_11929.OK,
   decide code_11930.OK,
   decide code_11931.OK,
   decide code_11932.OK,
   decide code_11933.OK,
   decide code_11934.OK,
   decide code_11935.OK,
   decide code_11936.OK,
   decide code_11937.OK,
   decide code_11938.OK,
   decide code_11939.OK,
   decide code_11940.OK,
   decide code_11941.OK,
   decide code_11942.OK,
   decide code_11943.OK,
   decide code_11944.OK,
   decide code_11945.OK,
   decide code_11946.OK,
   decide code_11947.OK,
   decide code_11948.OK,
   decide code_11949.OK,
   decide code_11950.OK,
   decide code_11951.OK,
   decide code_11952.OK,
   decide code_11953.OK,
   decide code_11954.OK,
   decide code_11955.OK,
   decide code_11956.OK,
   decide code_11957.OK,
   decide code_11958.OK,
   decide code_11959.OK,
   decide code_11960.OK,
   decide code_11961.OK,
   decide code_11962.OK,
   decide code_11963.OK,
   decide code_11964.OK,
   decide code_11965.OK,
   decide code_11966.OK,
   decide code_11967.OK,
   decide code_11968.OK,
   decide code_11969.OK,
   decide code_11970.OK,
   decide code_11971.OK,
   decide code_11972.OK,
   decide code_11973.OK,
   decide code_11974.OK,
   decide code_11975.OK,
   decide code_11976.OK,
   decide code_11977.OK,
   decide code_11978.OK,
   decide code_11979.OK,
   decide code_11980.OK,
   decide code_11981.OK,
   decide code_11982.OK,
   decide code_11983.OK,
   decide code_11984.OK,
   decide code_11985.OK,
   decide code_11986.OK,
   decide code_11987.OK,
   decide code_11988.OK,
   decide code_11989.OK,
   decide code_11990.OK,
   decide code_11991.OK,
   decide code_11992.OK,
   decide code_11993.OK,
   decide code_11994.OK,
   decide code_11995.OK,
   decide code_11996.OK,
   decide code_11997.OK,
   decide code_11998.OK,
   decide code_11999.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk023
