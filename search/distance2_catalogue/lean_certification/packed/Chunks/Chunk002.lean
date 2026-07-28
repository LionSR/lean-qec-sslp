import SS

namespace Catalogue.Chunk002

open SS SS.Verify

/-- Catalogue code #1000: ((6,2,2)), m=9, a=[3, 5, 5, 6, 8, 8], S=[0, 7]. -/
def code_1000 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #1001: ((6,2,2)), m=9, a=[3, 5, 5, 7, 7, 7], S=[0, 1]. -/
def code_1001 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #1002: ((6,2,2)), m=9, a=[3, 5, 5, 7, 7, 7], S=[0, 8]. -/
def code_1002 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9)]

/-- Catalogue code #1003: ((6,2,2)), m=9, a=[3, 5, 5, 8, 8, 8], S=[0, 2]. -/
def code_1003 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (-1 : ℚ), ((-1 : ℚ) / 9)]

/-- Catalogue code #1004: ((6,2,2)), m=9, a=[3, 5, 6, 6, 7, 7], S=[0, 8]. -/
def code_1004 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #1005: ((6,2,2)), m=9, a=[3, 5, 6, 6, 8, 8], S=[0, 2]. -/
def code_1005 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #1006: ((6,2,2)), m=9, a=[3, 5, 6, 6, 8, 8], S=[0, 7]. -/
def code_1006 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #1007: ((6,2,2)), m=9, a=[3, 5, 7, 7, 7, 7], S=[0, 1]. -/
def code_1007 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #1008: ((6,2,2)), m=9, a=[3, 5, 7, 7, 7, 7], S=[0, 8]. -/
def code_1008 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (5 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #1009: ((6,2,2)), m=9, a=[3, 6, 6, 7, 7, 7], S=[0, 1]. -/
def code_1009 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #1010: ((6,2,2)), m=9, a=[3, 6, 6, 7, 7, 7], S=[0, 8]. -/
def code_1010 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #1011: ((6,2,2)), m=9, a=[3, 6, 6, 7, 7, 8], S=[0, 5]. -/
def code_1011 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #1012: ((6,2,2)), m=9, a=[3, 6, 6, 7, 8, 8], S=[0, 4]. -/
def code_1012 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #1013: ((6,2,2)), m=9, a=[3, 6, 6, 8, 8, 8], S=[0, 4]. -/
def code_1013 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #1014: ((6,2,2)), m=9, a=[3, 6, 6, 8, 8, 8], S=[0, 7]. -/
def code_1014 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #1015: ((6,2,2)), m=9, a=[3, 6, 7, 7, 7, 8], S=[0, 5]. -/
def code_1015 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #1016: ((6,2,2)), m=9, a=[3, 6, 7, 7, 8, 8], S=[0, 4]. -/
def code_1016 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #1017: ((6,2,2)), m=9, a=[3, 6, 7, 7, 8, 8], S=[0, 5]. -/
def code_1017 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (5 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #1018: ((6,2,2)), m=9, a=[3, 6, 8, 8, 8, 8], S=[0, 2]. -/
def code_1018 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #1019: ((6,2,2)), m=9, a=[3, 7, 7, 7, 7, 8], S=[0, 4]. -/
def code_1019 : ExampleData 6 9 2 where
  a := ![(3 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (4 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #1020: ((6,2,2)), m=9, a=[4, 4, 4, 5, 6, 6], S=[0, 8]. -/
def code_1020 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #1021: ((6,2,2)), m=9, a=[4, 4, 4, 5, 6, 8], S=[0, 2]. -/
def code_1021 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #1022: ((6,2,2)), m=9, a=[4, 4, 5, 5, 6, 8], S=[0, 7]. -/
def code_1022 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #1023: ((6,2,2)), m=9, a=[4, 4, 5, 6, 6, 6], S=[0, 8]. -/
def code_1023 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #1024: ((6,2,2)), m=9, a=[4, 4, 5, 6, 6, 7], S=[0, 8]. -/
def code_1024 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #1025: ((6,2,2)), m=9, a=[4, 4, 5, 6, 6, 8], S=[0, 7]. -/
def code_1025 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #1026: ((6,2,2)), m=9, a=[4, 4, 5, 6, 7, 7], S=[0, 1]. -/
def code_1026 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #1027: ((6,2,2)), m=9, a=[4, 5, 5, 5, 6, 6], S=[0, 7]. -/
def code_1027 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #1028: ((6,2,2)), m=9, a=[4, 5, 5, 6, 6, 6], S=[0, 1]. -/
def code_1028 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #1029: ((6,2,2)), m=9, a=[4, 5, 5, 6, 6, 7], S=[0, 8]. -/
def code_1029 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #1030: ((6,2,2)), m=9, a=[4, 5, 5, 6, 7, 7], S=[0, 1]. -/
def code_1030 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #1031: ((6,2,2)), m=9, a=[4, 5, 5, 6, 7, 7], S=[0, 8]. -/
def code_1031 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #1032: ((6,2,2)), m=9, a=[4, 5, 5, 6, 8, 8], S=[0, 2]. -/
def code_1032 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #1033: ((6,2,2)), m=9, a=[4, 5, 5, 6, 8, 8], S=[0, 7]. -/
def code_1033 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #1034: ((6,2,2)), m=9, a=[4, 5, 6, 6, 6, 7], S=[0, 8]. -/
def code_1034 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (8 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #1035: ((6,2,2)), m=9, a=[4, 5, 6, 6, 6, 8], S=[0, 7]. -/
def code_1035 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #1036: ((6,2,2)), m=9, a=[4, 5, 6, 6, 7, 7], S=[0, 1]. -/
def code_1036 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (7 : ZMod 9), (7 : ZMod 9)]
  S := ![(0 : ZMod 9), (1 : ZMod 9)]
  supp := ![{![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #1037: ((6,2,2)), m=9, a=[4, 5, 6, 6, 8, 8], S=[0, 2]. -/
def code_1037 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #1038: ((6,2,2)), m=9, a=[4, 5, 6, 6, 8, 8], S=[0, 7]. -/
def code_1038 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (7 : ZMod 9)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-7 : ℚ) / 9)]

/-- Catalogue code #1039: ((6,2,2)), m=9, a=[4, 5, 6, 8, 8, 8], S=[0, 2]. -/
def code_1039 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (6 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #1040: ((6,2,2)), m=9, a=[4, 5, 8, 8, 8, 8], S=[0, 2]. -/
def code_1040 : ExampleData 6 9 2 where
  a := ![(4 : ZMod 9), (5 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9), (8 : ZMod 9)]
  S := ![(0 : ZMod 9), (2 : ZMod 9)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #1041: ((6,2,2)), m=10, a=[1, 1, 1, 1, 3, 3], S=[0, 4]. -/
def code_1041 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1042: ((6,2,2)), m=10, a=[1, 1, 1, 1, 4, 4], S=[0, 8]. -/
def code_1042 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1043: ((6,2,2)), m=10, a=[1, 1, 1, 1, 4, 6], S=[0, 7]. -/
def code_1043 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1044: ((6,2,2)), m=10, a=[1, 1, 1, 1, 6, 6], S=[0, 2]. -/
def code_1044 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1045: ((6,2,2)), m=10, a=[1, 1, 1, 1, 6, 6], S=[0, 3]. -/
def code_1045 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1046: ((6,2,2)), m=10, a=[1, 1, 1, 2, 2, 3], S=[0, 4]. -/
def code_1046 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1047: ((6,2,2)), m=10, a=[1, 1, 1, 2, 2, 3], S=[0, 6]. -/
def code_1047 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1048: ((6,2,2)), m=10, a=[1, 1, 1, 2, 2, 5], S=[0, 6]. -/
def code_1048 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1049: ((6,2,2)), m=10, a=[1, 1, 1, 2, 2, 5], S=[0, 7]. -/
def code_1049 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1050: ((6,2,2)), m=10, a=[1, 1, 1, 2, 3, 3], S=[0, 6]. -/
def code_1050 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1051: ((6,2,2)), m=10, a=[1, 1, 1, 2, 3, 5], S=[0, 6]. -/
def code_1051 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1052: ((6,2,2)), m=10, a=[1, 1, 1, 2, 4, 5], S=[0, 7]. -/
def code_1052 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1053: ((6,2,2)), m=10, a=[1, 1, 1, 2, 5, 5], S=[0, 3]. -/
def code_1053 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1054: ((6,2,2)), m=10, a=[1, 1, 1, 2, 5, 5], S=[0, 7]. -/
def code_1054 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1055: ((6,2,2)), m=10, a=[1, 1, 1, 2, 5, 6], S=[0, 3]. -/
def code_1055 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1056: ((6,2,2)), m=10, a=[1, 1, 1, 2, 5, 7], S=[0, 4]. -/
def code_1056 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1057: ((6,2,2)), m=10, a=[1, 1, 1, 2, 5, 8], S=[0, 3]. -/
def code_1057 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1058: ((6,2,2)), m=10, a=[1, 1, 1, 2, 5, 8], S=[0, 4]. -/
def code_1058 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1059: ((6,2,2)), m=10, a=[1, 1, 1, 2, 6, 6], S=[0, 3]. -/
def code_1059 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1060: ((6,2,2)), m=10, a=[1, 1, 1, 2, 7, 7], S=[0, 4]. -/
def code_1060 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1061: ((6,2,2)), m=10, a=[1, 1, 1, 3, 3, 3], S=[0, 6]. -/
def code_1061 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1062: ((6,2,2)), m=10, a=[1, 1, 1, 3, 3, 4], S=[0, 8]. -/
def code_1062 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1063: ((6,2,2)), m=10, a=[1, 1, 1, 3, 3, 5], S=[0, 6]. -/
def code_1063 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1064: ((6,2,2)), m=10, a=[1, 1, 1, 3, 3, 5], S=[0, 8]. -/
def code_1064 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1065: ((6,2,2)), m=10, a=[1, 1, 1, 3, 3, 7], S=[0, 8]. -/
def code_1065 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1066: ((6,2,2)), m=10, a=[1, 1, 1, 3, 4, 4], S=[0, 2]. -/
def code_1066 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1067: ((6,2,2)), m=10, a=[1, 1, 1, 3, 4, 5], S=[0, 2]. -/
def code_1067 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1068: ((6,2,2)), m=10, a=[1, 1, 1, 3, 4, 5], S=[0, 8]. -/
def code_1068 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1069: ((6,2,2)), m=10, a=[1, 1, 1, 3, 4, 6], S=[0, 8]. -/
def code_1069 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1070: ((6,2,2)), m=10, a=[1, 1, 1, 3, 4, 7], S=[0, 2]. -/
def code_1070 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1071: ((6,2,2)), m=10, a=[1, 1, 1, 3, 5, 5], S=[0, 8]. -/
def code_1071 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1072: ((6,2,2)), m=10, a=[1, 1, 1, 3, 5, 7], S=[0, 2]. -/
def code_1072 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1073: ((6,2,2)), m=10, a=[1, 1, 1, 3, 5, 7], S=[0, 4]. -/
def code_1073 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1074: ((6,2,2)), m=10, a=[1, 1, 1, 3, 5, 7], S=[0, 6]. -/
def code_1074 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1075: ((6,2,2)), m=10, a=[1, 1, 1, 3, 5, 8], S=[0, 6]. -/
def code_1075 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1076: ((6,2,2)), m=10, a=[1, 1, 1, 3, 7, 7], S=[0, 4]. -/
def code_1076 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1077: ((6,2,2)), m=10, a=[1, 1, 1, 3, 7, 8], S=[0, 6]. -/
def code_1077 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1078: ((6,2,2)), m=10, a=[1, 1, 1, 3, 7, 9], S=[0, 6]. -/
def code_1078 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1079: ((6,2,2)), m=10, a=[1, 1, 1, 3, 8, 8], S=[0, 6]. -/
def code_1079 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1080: ((6,2,2)), m=10, a=[1, 1, 1, 4, 4, 4], S=[0, 2]. -/
def code_1080 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1081: ((6,2,2)), m=10, a=[1, 1, 1, 4, 4, 4], S=[0, 3]. -/
def code_1081 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-4 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1082: ((6,2,2)), m=10, a=[1, 1, 1, 4, 4, 5], S=[0, 3]. -/
def code_1082 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1083: ((6,2,2)), m=10, a=[1, 1, 1, 4, 4, 5], S=[0, 8]. -/
def code_1083 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1084: ((6,2,2)), m=10, a=[1, 1, 1, 4, 4, 6], S=[0, 8]. -/
def code_1084 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1085: ((6,2,2)), m=10, a=[1, 1, 1, 4, 4, 7], S=[0, 2]. -/
def code_1085 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1086: ((6,2,2)), m=10, a=[1, 1, 1, 4, 4, 8], S=[0, 3]. -/
def code_1086 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1087: ((6,2,2)), m=10, a=[1, 1, 1, 4, 4, 9], S=[0, 3]. -/
def code_1087 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1088: ((6,2,2)), m=10, a=[1, 1, 1, 4, 5, 7], S=[0, 2]. -/
def code_1088 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1089: ((6,2,2)), m=10, a=[1, 1, 1, 4, 5, 8], S=[0, 3]. -/
def code_1089 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1090: ((6,2,2)), m=10, a=[1, 1, 1, 4, 5, 8], S=[0, 7]. -/
def code_1090 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1091: ((6,2,2)), m=10, a=[1, 1, 1, 5, 5, 7], S=[0, 2]. -/
def code_1091 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1092: ((6,2,2)), m=10, a=[1, 1, 1, 5, 5, 7], S=[0, 8]. -/
def code_1092 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1093: ((6,2,2)), m=10, a=[1, 1, 1, 5, 5, 8], S=[0, 3]. -/
def code_1093 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1094: ((6,2,2)), m=10, a=[1, 1, 1, 5, 6, 6], S=[0, 3]. -/
def code_1094 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1095: ((6,2,2)), m=10, a=[1, 1, 1, 5, 6, 6], S=[0, 7]. -/
def code_1095 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1096: ((6,2,2)), m=10, a=[1, 1, 1, 5, 6, 6], S=[0, 8]. -/
def code_1096 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1097: ((6,2,2)), m=10, a=[1, 1, 1, 5, 6, 7], S=[0, 8]. -/
def code_1097 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1098: ((6,2,2)), m=10, a=[1, 1, 1, 5, 7, 7], S=[0, 4]. -/
def code_1098 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1099: ((6,2,2)), m=10, a=[1, 1, 1, 5, 7, 7], S=[0, 6]. -/
def code_1099 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1100: ((6,2,2)), m=10, a=[1, 1, 1, 5, 7, 7], S=[0, 8]. -/
def code_1100 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1101: ((6,2,2)), m=10, a=[1, 1, 1, 6, 6, 6], S=[0, 3]. -/
def code_1101 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1102: ((6,2,2)), m=10, a=[1, 1, 1, 6, 6, 6], S=[0, 8]. -/
def code_1102 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1103: ((6,2,2)), m=10, a=[1, 1, 1, 6, 6, 7], S=[0, 8]. -/
def code_1103 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1104: ((6,2,2)), m=10, a=[1, 1, 1, 6, 7, 7], S=[0, 8]. -/
def code_1104 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1105: ((6,2,2)), m=10, a=[1, 1, 2, 2, 2, 2], S=[0, 4]. -/
def code_1105 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1106: ((6,2,2)), m=10, a=[1, 1, 2, 2, 2, 2], S=[0, 6]. -/
def code_1106 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1107: ((6,2,2)), m=10, a=[1, 1, 2, 2, 2, 3], S=[0, 4]. -/
def code_1107 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1108: ((6,2,2)), m=10, a=[1, 1, 2, 2, 2, 3], S=[0, 6]. -/
def code_1108 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1109: ((6,2,2)), m=10, a=[1, 1, 2, 2, 2, 4], S=[0, 7]. -/
def code_1109 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1110: ((6,2,2)), m=10, a=[1, 1, 2, 2, 2, 5], S=[0, 6]. -/
def code_1110 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1111: ((6,2,2)), m=10, a=[1, 1, 2, 2, 2, 5], S=[0, 7]. -/
def code_1111 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1112: ((6,2,2)), m=10, a=[1, 1, 2, 2, 2, 6], S=[0, 7]. -/
def code_1112 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1113: ((6,2,2)), m=10, a=[1, 1, 2, 2, 3, 3], S=[0, 4]. -/
def code_1113 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1114: ((6,2,2)), m=10, a=[1, 1, 2, 2, 3, 3], S=[0, 6]. -/
def code_1114 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1115: ((6,2,2)), m=10, a=[1, 1, 2, 2, 3, 5], S=[0, 6]. -/
def code_1115 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1116: ((6,2,2)), m=10, a=[1, 1, 2, 2, 4, 4], S=[0, 7]. -/
def code_1116 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1117: ((6,2,2)), m=10, a=[1, 1, 2, 2, 4, 5], S=[0, 3]. -/
def code_1117 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1118: ((6,2,2)), m=10, a=[1, 1, 2, 2, 4, 5], S=[0, 7]. -/
def code_1118 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1119: ((6,2,2)), m=10, a=[1, 1, 2, 2, 4, 6], S=[0, 3]. -/
def code_1119 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1120: ((6,2,2)), m=10, a=[1, 1, 2, 2, 4, 8], S=[0, 3]. -/
def code_1120 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1121: ((6,2,2)), m=10, a=[1, 1, 2, 2, 5, 5], S=[0, 4]. -/
def code_1121 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1122: ((6,2,2)), m=10, a=[1, 1, 2, 2, 5, 5], S=[0, 7]. -/
def code_1122 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1123: ((6,2,2)), m=10, a=[1, 1, 2, 2, 5, 6], S=[0, 3]. -/
def code_1123 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1124: ((6,2,2)), m=10, a=[1, 1, 2, 2, 5, 7], S=[0, 4]. -/
def code_1124 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1125: ((6,2,2)), m=10, a=[1, 1, 2, 2, 5, 8], S=[0, 3]. -/
def code_1125 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1126: ((6,2,2)), m=10, a=[1, 1, 2, 2, 5, 8], S=[0, 4]. -/
def code_1126 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (-1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1127: ((6,2,2)), m=10, a=[1, 1, 2, 2, 5, 9], S=[0, 4]. -/
def code_1127 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1128: ((6,2,2)), m=10, a=[1, 1, 2, 2, 5, 9], S=[0, 6]. -/
def code_1128 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1129: ((6,2,2)), m=10, a=[1, 1, 2, 2, 6, 6], S=[0, 3]. -/
def code_1129 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1130: ((6,2,2)), m=10, a=[1, 1, 2, 2, 7, 7], S=[0, 6]. -/
def code_1130 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1131: ((6,2,2)), m=10, a=[1, 1, 2, 2, 7, 8], S=[0, 6]. -/
def code_1131 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1132: ((6,2,2)), m=10, a=[1, 1, 2, 2, 7, 9], S=[0, 6]. -/
def code_1132 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1133: ((6,2,2)), m=10, a=[1, 1, 2, 2, 8, 8], S=[0, 6]. -/
def code_1133 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1134: ((6,2,2)), m=10, a=[1, 1, 2, 3, 3, 5], S=[0, 4]. -/
def code_1134 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1135: ((6,2,2)), m=10, a=[1, 1, 2, 3, 3, 8], S=[0, 4]. -/
def code_1135 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1136: ((6,2,2)), m=10, a=[1, 1, 2, 3, 3, 9], S=[0, 4]. -/
def code_1136 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1137: ((6,2,2)), m=10, a=[1, 1, 2, 3, 5, 5], S=[0, 4]. -/
def code_1137 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1138: ((6,2,2)), m=10, a=[1, 1, 2, 3, 5, 7], S=[0, 4]. -/
def code_1138 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1139: ((6,2,2)), m=10, a=[1, 1, 2, 3, 5, 7], S=[0, 6]. -/
def code_1139 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1140: ((6,2,2)), m=10, a=[1, 1, 2, 3, 5, 8], S=[0, 4]. -/
def code_1140 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1141: ((6,2,2)), m=10, a=[1, 1, 2, 3, 5, 8], S=[0, 6]. -/
def code_1141 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1142: ((6,2,2)), m=10, a=[1, 1, 2, 3, 5, 9], S=[0, 4]. -/
def code_1142 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1143: ((6,2,2)), m=10, a=[1, 1, 2, 3, 7, 7], S=[0, 6]. -/
def code_1143 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1144: ((6,2,2)), m=10, a=[1, 1, 2, 3, 7, 8], S=[0, 6]. -/
def code_1144 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1145: ((6,2,2)), m=10, a=[1, 1, 2, 3, 8, 8], S=[0, 6]. -/
def code_1145 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1146: ((6,2,2)), m=10, a=[1, 1, 2, 4, 4, 4], S=[0, 3]. -/
def code_1146 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1147: ((6,2,2)), m=10, a=[1, 1, 2, 4, 4, 6], S=[0, 7]. -/
def code_1147 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5)]

/-- Catalogue code #1148: ((6,2,2)), m=10, a=[1, 1, 2, 4, 4, 8], S=[0, 3]. -/
def code_1148 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1149: ((6,2,2)), m=10, a=[1, 1, 2, 4, 4, 8], S=[0, 7]. -/
def code_1149 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1150: ((6,2,2)), m=10, a=[1, 1, 2, 4, 4, 9], S=[0, 7]. -/
def code_1150 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1151: ((6,2,2)), m=10, a=[1, 1, 2, 4, 5, 6], S=[0, 7]. -/
def code_1151 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1152: ((6,2,2)), m=10, a=[1, 1, 2, 4, 5, 8], S=[0, 3]. -/
def code_1152 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1153: ((6,2,2)), m=10, a=[1, 1, 2, 4, 5, 8], S=[0, 7]. -/
def code_1153 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1154: ((6,2,2)), m=10, a=[1, 1, 2, 4, 6, 8], S=[0, 7]. -/
def code_1154 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1155: ((6,2,2)), m=10, a=[1, 1, 2, 4, 6, 9], S=[0, 7]. -/
def code_1155 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1156: ((6,2,2)), m=10, a=[1, 1, 2, 4, 8, 8], S=[0, 7]. -/
def code_1156 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1157: ((6,2,2)), m=10, a=[1, 1, 2, 5, 5, 6], S=[0, 3]. -/
def code_1157 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1158: ((6,2,2)), m=10, a=[1, 1, 2, 5, 5, 6], S=[0, 7]. -/
def code_1158 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1159: ((6,2,2)), m=10, a=[1, 1, 2, 5, 5, 7], S=[0, 4]. -/
def code_1159 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1160: ((6,2,2)), m=10, a=[1, 1, 2, 5, 5, 8], S=[0, 3]. -/
def code_1160 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1161: ((6,2,2)), m=10, a=[1, 1, 2, 5, 5, 8], S=[0, 4]. -/
def code_1161 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1162: ((6,2,2)), m=10, a=[1, 1, 2, 5, 6, 6], S=[0, 3]. -/
def code_1162 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1163: ((6,2,2)), m=10, a=[1, 1, 2, 5, 6, 8], S=[0, 7]. -/
def code_1163 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1164: ((6,2,2)), m=10, a=[1, 1, 2, 5, 6, 9], S=[0, 7]. -/
def code_1164 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1165: ((6,2,2)), m=10, a=[1, 1, 2, 5, 7, 7], S=[0, 4]. -/
def code_1165 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1166: ((6,2,2)), m=10, a=[1, 1, 2, 5, 7, 7], S=[0, 6]. -/
def code_1166 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1167: ((6,2,2)), m=10, a=[1, 1, 2, 6, 6, 6], S=[0, 3]. -/
def code_1167 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((3 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1168: ((6,2,2)), m=10, a=[1, 1, 2, 6, 6, 8], S=[0, 7]. -/
def code_1168 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1169: ((6,2,2)), m=10, a=[1, 1, 2, 7, 8, 9], S=[0, 4]. -/
def code_1169 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1170: ((6,2,2)), m=10, a=[1, 1, 2, 8, 8, 8], S=[0, 4]. -/
def code_1170 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (2 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1171: ((6,2,2)), m=10, a=[1, 1, 3, 3, 3, 3], S=[0, 2]. -/
def code_1171 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1172: ((6,2,2)), m=10, a=[1, 1, 3, 3, 3, 5], S=[0, 2]. -/
def code_1172 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1173: ((6,2,2)), m=10, a=[1, 1, 3, 3, 3, 5], S=[0, 4]. -/
def code_1173 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1174: ((6,2,2)), m=10, a=[1, 1, 3, 3, 3, 5], S=[0, 8]. -/
def code_1174 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1175: ((6,2,2)), m=10, a=[1, 1, 3, 3, 3, 6], S=[0, 2]. -/
def code_1175 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1176: ((6,2,2)), m=10, a=[1, 1, 3, 3, 3, 8], S=[0, 4]. -/
def code_1176 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1177: ((6,2,2)), m=10, a=[1, 1, 3, 3, 3, 9], S=[0, 2]. -/
def code_1177 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1178: ((6,2,2)), m=10, a=[1, 1, 3, 3, 4, 4], S=[0, 8]. -/
def code_1178 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1179: ((6,2,2)), m=10, a=[1, 1, 3, 3, 4, 5], S=[0, 2]. -/
def code_1179 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1180: ((6,2,2)), m=10, a=[1, 1, 3, 3, 4, 5], S=[0, 8]. -/
def code_1180 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1181: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 5], S=[0, 2]. -/
def code_1181 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1182: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 5], S=[0, 6]. -/
def code_1182 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1183: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 6], S=[0, 2]. -/
def code_1183 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1184: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 6], S=[0, 8]. -/
def code_1184 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1185: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 7], S=[0, 2]. -/
def code_1185 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1186: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 7], S=[0, 8]. -/
def code_1186 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1187: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 8], S=[0, 4]. -/
def code_1187 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1188: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 8], S=[0, 6]. -/
def code_1188 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1189: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 9], S=[0, 4]. -/
def code_1189 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1190: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 9], S=[0, 6]. -/
def code_1190 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1191: ((6,2,2)), m=10, a=[1, 1, 3, 3, 5, 9], S=[0, 8]. -/
def code_1191 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1192: ((6,2,2)), m=10, a=[1, 1, 3, 3, 6, 6], S=[0, 8]. -/
def code_1192 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1193: ((6,2,2)), m=10, a=[1, 1, 3, 3, 6, 9], S=[0, 8]. -/
def code_1193 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1194: ((6,2,2)), m=10, a=[1, 1, 3, 4, 4, 4], S=[0, 2]. -/
def code_1194 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1195: ((6,2,2)), m=10, a=[1, 1, 3, 4, 4, 5], S=[0, 2]. -/
def code_1195 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1196: ((6,2,2)), m=10, a=[1, 1, 3, 4, 4, 6], S=[0, 8]. -/
def code_1196 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1197: ((6,2,2)), m=10, a=[1, 1, 3, 4, 4, 7], S=[0, 2]. -/
def code_1197 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1198: ((6,2,2)), m=10, a=[1, 1, 3, 4, 4, 7], S=[0, 8]. -/
def code_1198 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1199: ((6,2,2)), m=10, a=[1, 1, 3, 4, 4, 9], S=[0, 8]. -/
def code_1199 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1200: ((6,2,2)), m=10, a=[1, 1, 3, 4, 5, 5], S=[0, 2]. -/
def code_1200 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1201: ((6,2,2)), m=10, a=[1, 1, 3, 4, 5, 6], S=[0, 2]. -/
def code_1201 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1202: ((6,2,2)), m=10, a=[1, 1, 3, 4, 5, 6], S=[0, 8]. -/
def code_1202 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1203: ((6,2,2)), m=10, a=[1, 1, 3, 4, 5, 7], S=[0, 2]. -/
def code_1203 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1204: ((6,2,2)), m=10, a=[1, 1, 3, 4, 5, 7], S=[0, 8]. -/
def code_1204 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1205: ((6,2,2)), m=10, a=[1, 1, 3, 4, 7, 7], S=[0, 8]. -/
def code_1205 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1206: ((6,2,2)), m=10, a=[1, 1, 3, 5, 5, 6], S=[0, 8]. -/
def code_1206 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1207: ((6,2,2)), m=10, a=[1, 1, 3, 5, 5, 7], S=[0, 4]. -/
def code_1207 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1208: ((6,2,2)), m=10, a=[1, 1, 3, 5, 5, 7], S=[0, 8]. -/
def code_1208 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1209: ((6,2,2)), m=10, a=[1, 1, 3, 5, 5, 8], S=[0, 6]. -/
def code_1209 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1210: ((6,2,2)), m=10, a=[1, 1, 3, 5, 5, 9], S=[0, 2]. -/
def code_1210 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1211: ((6,2,2)), m=10, a=[1, 1, 3, 5, 6, 7], S=[0, 2]. -/
def code_1211 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1212: ((6,2,2)), m=10, a=[1, 1, 3, 5, 6, 7], S=[0, 8]. -/
def code_1212 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1213: ((6,2,2)), m=10, a=[1, 1, 3, 5, 6, 9], S=[0, 2]. -/
def code_1213 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1214: ((6,2,2)), m=10, a=[1, 1, 3, 5, 6, 9], S=[0, 8]. -/
def code_1214 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1215: ((6,2,2)), m=10, a=[1, 1, 3, 5, 7, 7], S=[0, 2]. -/
def code_1215 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1216: ((6,2,2)), m=10, a=[1, 1, 3, 5, 7, 7], S=[0, 6]. -/
def code_1216 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1217: ((6,2,2)), m=10, a=[1, 1, 3, 5, 7, 7], S=[0, 8]. -/
def code_1217 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1218: ((6,2,2)), m=10, a=[1, 1, 3, 5, 7, 8], S=[0, 4]. -/
def code_1218 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1219: ((6,2,2)), m=10, a=[1, 1, 3, 5, 7, 8], S=[0, 6]. -/
def code_1219 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1220: ((6,2,2)), m=10, a=[1, 1, 3, 5, 7, 9], S=[0, 2]. -/
def code_1220 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1221: ((6,2,2)), m=10, a=[1, 1, 3, 5, 7, 9], S=[0, 4]. -/
def code_1221 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1222: ((6,2,2)), m=10, a=[1, 1, 3, 5, 8, 8], S=[0, 4]. -/
def code_1222 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1223: ((6,2,2)), m=10, a=[1, 1, 3, 5, 8, 9], S=[0, 4]. -/
def code_1223 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1224: ((6,2,2)), m=10, a=[1, 1, 3, 6, 6, 6], S=[0, 2]. -/
def code_1224 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1225: ((6,2,2)), m=10, a=[1, 1, 3, 6, 6, 7], S=[0, 2]. -/
def code_1225 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1226: ((6,2,2)), m=10, a=[1, 1, 3, 6, 6, 9], S=[0, 2]. -/
def code_1226 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1227: ((6,2,2)), m=10, a=[1, 1, 3, 6, 7, 9], S=[0, 2]. -/
def code_1227 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1228: ((6,2,2)), m=10, a=[1, 1, 3, 7, 8, 8], S=[0, 4]. -/
def code_1228 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1229: ((6,2,2)), m=10, a=[1, 1, 3, 7, 8, 9], S=[0, 4]. -/
def code_1229 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1230: ((6,2,2)), m=10, a=[1, 1, 4, 4, 4, 4], S=[0, 2]. -/
def code_1230 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ)]

/-- Catalogue code #1231: ((6,2,2)), m=10, a=[1, 1, 4, 4, 4, 6], S=[0, 2]. -/
def code_1231 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1232: ((6,2,2)), m=10, a=[1, 1, 4, 4, 4, 8], S=[0, 3]. -/
def code_1232 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-4 : ℚ) / 5)]

/-- Catalogue code #1233: ((6,2,2)), m=10, a=[1, 1, 4, 4, 5, 6], S=[0, 8]. -/
def code_1233 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1234: ((6,2,2)), m=10, a=[1, 1, 4, 4, 5, 7], S=[0, 8]. -/
def code_1234 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1235: ((6,2,2)), m=10, a=[1, 1, 4, 4, 5, 9], S=[0, 7]. -/
def code_1235 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1236: ((6,2,2)), m=10, a=[1, 1, 4, 4, 6, 8], S=[0, 7]. -/
def code_1236 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1237: ((6,2,2)), m=10, a=[1, 1, 4, 4, 6, 9], S=[0, 7]. -/
def code_1237 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1238: ((6,2,2)), m=10, a=[1, 1, 4, 4, 6, 9], S=[0, 8]. -/
def code_1238 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1239: ((6,2,2)), m=10, a=[1, 1, 4, 4, 7, 7], S=[0, 2]. -/
def code_1239 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1240: ((6,2,2)), m=10, a=[1, 1, 4, 4, 8, 8], S=[0, 3]. -/
def code_1240 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1241: ((6,2,2)), m=10, a=[1, 1, 4, 5, 5, 8], S=[0, 7]. -/
def code_1241 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1242: ((6,2,2)), m=10, a=[1, 1, 4, 5, 6, 7], S=[0, 2]. -/
def code_1242 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1243: ((6,2,2)), m=10, a=[1, 1, 4, 5, 6, 7], S=[0, 8]. -/
def code_1243 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1244: ((6,2,2)), m=10, a=[1, 1, 4, 5, 6, 8], S=[0, 3]. -/
def code_1244 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-4 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1245: ((6,2,2)), m=10, a=[1, 1, 4, 5, 6, 8], S=[0, 7]. -/
def code_1245 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1246: ((6,2,2)), m=10, a=[1, 1, 4, 5, 6, 9], S=[0, 3]. -/
def code_1246 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1247: ((6,2,2)), m=10, a=[1, 1, 4, 5, 6, 9], S=[0, 8]. -/
def code_1247 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1248: ((6,2,2)), m=10, a=[1, 1, 4, 5, 7, 7], S=[0, 2]. -/
def code_1248 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1249: ((6,2,2)), m=10, a=[1, 1, 4, 5, 7, 7], S=[0, 8]. -/
def code_1249 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1250: ((6,2,2)), m=10, a=[1, 1, 4, 5, 8, 8], S=[0, 3]. -/
def code_1250 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1251: ((6,2,2)), m=10, a=[1, 1, 4, 6, 7, 7], S=[0, 8]. -/
def code_1251 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1252: ((6,2,2)), m=10, a=[1, 1, 4, 6, 8, 8], S=[0, 3]. -/
def code_1252 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), ((-3 : ℚ) / 5)]

/-- Catalogue code #1253: ((6,2,2)), m=10, a=[1, 1, 4, 7, 7, 7], S=[0, 2]. -/
def code_1253 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1254: ((6,2,2)), m=10, a=[1, 1, 5, 5, 6, 7], S=[0, 2]. -/
def code_1254 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1255: ((6,2,2)), m=10, a=[1, 1, 5, 5, 6, 7], S=[0, 8]. -/
def code_1255 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1256: ((6,2,2)), m=10, a=[1, 1, 5, 5, 6, 8], S=[0, 3]. -/
def code_1256 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1257: ((6,2,2)), m=10, a=[1, 1, 5, 5, 7, 7], S=[0, 2]. -/
def code_1257 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1258: ((6,2,2)), m=10, a=[1, 1, 5, 5, 7, 7], S=[0, 4]. -/
def code_1258 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1259: ((6,2,2)), m=10, a=[1, 1, 5, 5, 7, 8], S=[0, 4]. -/
def code_1259 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1260: ((6,2,2)), m=10, a=[1, 1, 5, 5, 8, 8], S=[0, 7]. -/
def code_1260 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1261: ((6,2,2)), m=10, a=[1, 1, 5, 5, 8, 9], S=[0, 7]. -/
def code_1261 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1262: ((6,2,2)), m=10, a=[1, 1, 5, 6, 6, 7], S=[0, 8]. -/
def code_1262 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1263: ((6,2,2)), m=10, a=[1, 1, 5, 6, 7, 7], S=[0, 2]. -/
def code_1263 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1264: ((6,2,2)), m=10, a=[1, 1, 5, 6, 7, 7], S=[0, 8]. -/
def code_1264 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1265: ((6,2,2)), m=10, a=[1, 1, 5, 6, 7, 9], S=[0, 2]. -/
def code_1265 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1266: ((6,2,2)), m=10, a=[1, 1, 5, 6, 8, 8], S=[0, 3]. -/
def code_1266 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1267: ((6,2,2)), m=10, a=[1, 1, 5, 6, 8, 8], S=[0, 7]. -/
def code_1267 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1268: ((6,2,2)), m=10, a=[1, 1, 5, 6, 8, 9], S=[0, 3]. -/
def code_1268 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1269: ((6,2,2)), m=10, a=[1, 1, 5, 6, 8, 9], S=[0, 7]. -/
def code_1269 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1270: ((6,2,2)), m=10, a=[1, 1, 5, 7, 7, 7], S=[0, 2]. -/
def code_1270 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1271: ((6,2,2)), m=10, a=[1, 1, 5, 7, 7, 7], S=[0, 6]. -/
def code_1271 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1272: ((6,2,2)), m=10, a=[1, 1, 5, 7, 7, 8], S=[0, 4]. -/
def code_1272 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1273: ((6,2,2)), m=10, a=[1, 1, 5, 7, 7, 8], S=[0, 6]. -/
def code_1273 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1274: ((6,2,2)), m=10, a=[1, 1, 5, 7, 7, 9], S=[0, 4]. -/
def code_1274 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1275: ((6,2,2)), m=10, a=[1, 1, 5, 7, 7, 9], S=[0, 6]. -/
def code_1275 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1276: ((6,2,2)), m=10, a=[1, 1, 5, 7, 8, 8], S=[0, 4]. -/
def code_1276 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1277: ((6,2,2)), m=10, a=[1, 1, 5, 7, 8, 8], S=[0, 6]. -/
def code_1277 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1278: ((6,2,2)), m=10, a=[1, 1, 5, 7, 8, 9], S=[0, 4]. -/
def code_1278 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1279: ((6,2,2)), m=10, a=[1, 1, 5, 8, 8, 8], S=[0, 7]. -/
def code_1279 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1280: ((6,2,2)), m=10, a=[1, 1, 5, 8, 8, 9], S=[0, 6]. -/
def code_1280 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1281: ((6,2,2)), m=10, a=[1, 1, 5, 8, 8, 9], S=[0, 7]. -/
def code_1281 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1282: ((6,2,2)), m=10, a=[1, 1, 6, 6, 6, 6], S=[0, 8]. -/
def code_1282 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1283: ((6,2,2)), m=10, a=[1, 1, 6, 6, 6, 8], S=[0, 7]. -/
def code_1283 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-4 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1284: ((6,2,2)), m=10, a=[1, 1, 6, 6, 6, 9], S=[0, 2]. -/
def code_1284 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1285: ((6,2,2)), m=10, a=[1, 1, 6, 6, 6, 9], S=[0, 7]. -/
def code_1285 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1286: ((6,2,2)), m=10, a=[1, 1, 6, 6, 7, 9], S=[0, 2]. -/
def code_1286 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1287: ((6,2,2)), m=10, a=[1, 1, 6, 6, 7, 9], S=[0, 8]. -/
def code_1287 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1288: ((6,2,2)), m=10, a=[1, 1, 6, 6, 8, 8], S=[0, 3]. -/
def code_1288 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1289: ((6,2,2)), m=10, a=[1, 1, 6, 6, 8, 9], S=[0, 7]. -/
def code_1289 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1290: ((6,2,2)), m=10, a=[1, 1, 6, 8, 8, 8], S=[0, 7]. -/
def code_1290 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1291: ((6,2,2)), m=10, a=[1, 1, 7, 7, 7, 7], S=[0, 2]. -/
def code_1291 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1292: ((6,2,2)), m=10, a=[1, 1, 7, 7, 7, 8], S=[0, 6]. -/
def code_1292 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1293: ((6,2,2)), m=10, a=[1, 1, 7, 7, 7, 9], S=[0, 6]. -/
def code_1293 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (1 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1294: ((6,2,2)), m=10, a=[1, 2, 2, 2, 2, 3], S=[0, 4]. -/
def code_1294 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1295: ((6,2,2)), m=10, a=[1, 2, 2, 2, 2, 3], S=[0, 6]. -/
def code_1295 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1296: ((6,2,2)), m=10, a=[1, 2, 2, 2, 2, 5], S=[0, 6]. -/
def code_1296 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1297: ((6,2,2)), m=10, a=[1, 2, 2, 2, 3, 3], S=[0, 4]. -/
def code_1297 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ)]

/-- Catalogue code #1298: ((6,2,2)), m=10, a=[1, 2, 2, 2, 3, 3], S=[0, 6]. -/
def code_1298 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1299: ((6,2,2)), m=10, a=[1, 2, 2, 2, 3, 5], S=[0, 4]. -/
def code_1299 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1300: ((6,2,2)), m=10, a=[1, 2, 2, 2, 3, 5], S=[0, 6]. -/
def code_1300 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1301: ((6,2,2)), m=10, a=[1, 2, 2, 2, 3, 7], S=[0, 4]. -/
def code_1301 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1302: ((6,2,2)), m=10, a=[1, 2, 2, 2, 4, 5], S=[0, 3]. -/
def code_1302 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1303: ((6,2,2)), m=10, a=[1, 2, 2, 2, 4, 5], S=[0, 7]. -/
def code_1303 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1304: ((6,2,2)), m=10, a=[1, 2, 2, 2, 4, 9], S=[0, 3]. -/
def code_1304 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1305: ((6,2,2)), m=10, a=[1, 2, 2, 2, 4, 9], S=[0, 7]. -/
def code_1305 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1306: ((6,2,2)), m=10, a=[1, 2, 2, 2, 5, 5], S=[0, 6]. -/
def code_1306 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1307: ((6,2,2)), m=10, a=[1, 2, 2, 2, 5, 6], S=[0, 7]. -/
def code_1307 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1308: ((6,2,2)), m=10, a=[1, 2, 2, 2, 5, 8], S=[0, 6]. -/
def code_1308 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1309: ((6,2,2)), m=10, a=[1, 2, 2, 2, 5, 9], S=[0, 4]. -/
def code_1309 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1310: ((6,2,2)), m=10, a=[1, 2, 2, 2, 5, 9], S=[0, 6]. -/
def code_1310 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1311: ((6,2,2)), m=10, a=[1, 2, 2, 2, 5, 9], S=[0, 7]. -/
def code_1311 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1312: ((6,2,2)), m=10, a=[1, 2, 2, 2, 6, 9], S=[0, 7]. -/
def code_1312 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1313: ((6,2,2)), m=10, a=[1, 2, 2, 2, 7, 7], S=[0, 4]. -/
def code_1313 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1314: ((6,2,2)), m=10, a=[1, 2, 2, 3, 3, 3], S=[0, 6]. -/
def code_1314 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1315: ((6,2,2)), m=10, a=[1, 2, 2, 3, 5, 5], S=[0, 4]. -/
def code_1315 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1316: ((6,2,2)), m=10, a=[1, 2, 2, 3, 5, 7], S=[0, 4]. -/
def code_1316 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1317: ((6,2,2)), m=10, a=[1, 2, 2, 3, 5, 7], S=[0, 6]. -/
def code_1317 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1318: ((6,2,2)), m=10, a=[1, 2, 2, 3, 5, 8], S=[0, 4]. -/
def code_1318 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (1 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1319: ((6,2,2)), m=10, a=[1, 2, 2, 3, 5, 9], S=[0, 6]. -/
def code_1319 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1320: ((6,2,2)), m=10, a=[1, 2, 2, 3, 7, 7], S=[0, 4]. -/
def code_1320 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1321: ((6,2,2)), m=10, a=[1, 2, 2, 4, 4, 5], S=[0, 3]. -/
def code_1321 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1322: ((6,2,2)), m=10, a=[1, 2, 2, 4, 4, 5], S=[0, 7]. -/
def code_1322 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1323: ((6,2,2)), m=10, a=[1, 2, 2, 4, 4, 9], S=[0, 7]. -/
def code_1323 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1324: ((6,2,2)), m=10, a=[1, 2, 2, 4, 5, 5], S=[0, 3]. -/
def code_1324 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1325: ((6,2,2)), m=10, a=[1, 2, 2, 4, 5, 6], S=[0, 3]. -/
def code_1325 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1326: ((6,2,2)), m=10, a=[1, 2, 2, 4, 5, 6], S=[0, 7]. -/
def code_1326 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1327: ((6,2,2)), m=10, a=[1, 2, 2, 4, 5, 8], S=[0, 3]. -/
def code_1327 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1328: ((6,2,2)), m=10, a=[1, 2, 2, 4, 5, 9], S=[0, 7]. -/
def code_1328 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1329: ((6,2,2)), m=10, a=[1, 2, 2, 4, 6, 9], S=[0, 7]. -/
def code_1329 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1330: ((6,2,2)), m=10, a=[1, 2, 2, 5, 5, 6], S=[0, 7]. -/
def code_1330 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((3 : ℚ) / 5)]

/-- Catalogue code #1331: ((6,2,2)), m=10, a=[1, 2, 2, 5, 5, 7], S=[0, 6]. -/
def code_1331 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1332: ((6,2,2)), m=10, a=[1, 2, 2, 5, 5, 9], S=[0, 3]. -/
def code_1332 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((3 : ℚ) / 5)]

/-- Catalogue code #1333: ((6,2,2)), m=10, a=[1, 2, 2, 5, 5, 9], S=[0, 6]. -/
def code_1333 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1334: ((6,2,2)), m=10, a=[1, 2, 2, 5, 6, 6], S=[0, 3]. -/
def code_1334 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1335: ((6,2,2)), m=10, a=[1, 2, 2, 5, 6, 6], S=[0, 7]. -/
def code_1335 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1336: ((6,2,2)), m=10, a=[1, 2, 2, 5, 6, 8], S=[0, 3]. -/
def code_1336 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1337: ((6,2,2)), m=10, a=[1, 2, 2, 5, 6, 8], S=[0, 7]. -/
def code_1337 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5)]

/-- Catalogue code #1338: ((6,2,2)), m=10, a=[1, 2, 2, 5, 6, 9], S=[0, 3]. -/
def code_1338 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1339: ((6,2,2)), m=10, a=[1, 2, 2, 5, 6, 9], S=[0, 7]. -/
def code_1339 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1340: ((6,2,2)), m=10, a=[1, 2, 2, 5, 7, 8], S=[0, 6]. -/
def code_1340 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1341: ((6,2,2)), m=10, a=[1, 2, 2, 5, 7, 9], S=[0, 4]. -/
def code_1341 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1342: ((6,2,2)), m=10, a=[1, 2, 2, 5, 8, 9], S=[0, 3]. -/
def code_1342 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1343: ((6,2,2)), m=10, a=[1, 2, 2, 5, 8, 9], S=[0, 4]. -/
def code_1343 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1344: ((6,2,2)), m=10, a=[1, 2, 2, 5, 9, 9], S=[0, 3]. -/
def code_1344 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1345: ((6,2,2)), m=10, a=[1, 2, 2, 5, 9, 9], S=[0, 4]. -/
def code_1345 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1346: ((6,2,2)), m=10, a=[1, 2, 2, 6, 6, 9], S=[0, 3]. -/
def code_1346 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1347: ((6,2,2)), m=10, a=[1, 2, 2, 6, 8, 9], S=[0, 3]. -/
def code_1347 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1348: ((6,2,2)), m=10, a=[1, 2, 2, 7, 7, 9], S=[0, 4]. -/
def code_1348 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1349: ((6,2,2)), m=10, a=[1, 2, 2, 7, 8, 8], S=[0, 4]. -/
def code_1349 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1350: ((6,2,2)), m=10, a=[1, 2, 2, 8, 8, 8], S=[0, 4]. -/
def code_1350 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (2 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1351: ((6,2,2)), m=10, a=[1, 2, 3, 3, 3, 5], S=[0, 6]. -/
def code_1351 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1352: ((6,2,2)), m=10, a=[1, 2, 3, 3, 3, 9], S=[0, 6]. -/
def code_1352 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1353: ((6,2,2)), m=10, a=[1, 2, 3, 3, 5, 8], S=[0, 4]. -/
def code_1353 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1354: ((6,2,2)), m=10, a=[1, 2, 3, 3, 5, 8], S=[0, 6]. -/
def code_1354 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1355: ((6,2,2)), m=10, a=[1, 2, 3, 3, 5, 9], S=[0, 4]. -/
def code_1355 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1356: ((6,2,2)), m=10, a=[1, 2, 3, 3, 5, 9], S=[0, 6]. -/
def code_1356 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1357: ((6,2,2)), m=10, a=[1, 2, 3, 3, 8, 8], S=[0, 6]. -/
def code_1357 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (1 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1358: ((6,2,2)), m=10, a=[1, 2, 3, 5, 5, 7], S=[0, 4]. -/
def code_1358 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1359: ((6,2,2)), m=10, a=[1, 2, 3, 5, 7, 7], S=[0, 4]. -/
def code_1359 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1360: ((6,2,2)), m=10, a=[1, 2, 3, 5, 7, 7], S=[0, 6]. -/
def code_1360 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1361: ((6,2,2)), m=10, a=[1, 2, 3, 5, 7, 9], S=[0, 4]. -/
def code_1361 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1362: ((6,2,2)), m=10, a=[1, 2, 3, 5, 7, 9], S=[0, 6]. -/
def code_1362 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1363: ((6,2,2)), m=10, a=[1, 2, 3, 5, 8, 9], S=[0, 4]. -/
def code_1363 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1364: ((6,2,2)), m=10, a=[1, 2, 3, 7, 7, 9], S=[0, 4]. -/
def code_1364 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1365: ((6,2,2)), m=10, a=[1, 2, 3, 7, 8, 8], S=[0, 4]. -/
def code_1365 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(-1 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1366: ((6,2,2)), m=10, a=[1, 2, 3, 7, 8, 8], S=[0, 6]. -/
def code_1366 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1367: ((6,2,2)), m=10, a=[1, 2, 3, 7, 8, 9], S=[0, 4]. -/
def code_1367 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1368: ((6,2,2)), m=10, a=[1, 2, 3, 7, 8, 9], S=[0, 6]. -/
def code_1368 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1369: ((6,2,2)), m=10, a=[1, 2, 3, 7, 9, 9], S=[0, 6]. -/
def code_1369 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1370: ((6,2,2)), m=10, a=[1, 2, 3, 8, 8, 9], S=[0, 6]. -/
def code_1370 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1371: ((6,2,2)), m=10, a=[1, 2, 3, 8, 9, 9], S=[0, 6]. -/
def code_1371 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1372: ((6,2,2)), m=10, a=[1, 2, 4, 4, 4, 5], S=[0, 3]. -/
def code_1372 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1373: ((6,2,2)), m=10, a=[1, 2, 4, 4, 4, 5], S=[0, 7]. -/
def code_1373 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1374: ((6,2,2)), m=10, a=[1, 2, 4, 4, 4, 9], S=[0, 3]. -/
def code_1374 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1375: ((6,2,2)), m=10, a=[1, 2, 4, 4, 5, 5], S=[0, 3]. -/
def code_1375 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-4 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1376: ((6,2,2)), m=10, a=[1, 2, 4, 4, 5, 8], S=[0, 3]. -/
def code_1376 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((4 : ℚ) / 5)]

/-- Catalogue code #1377: ((6,2,2)), m=10, a=[1, 2, 4, 4, 5, 8], S=[0, 7]. -/
def code_1377 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1378: ((6,2,2)), m=10, a=[1, 2, 4, 4, 5, 9], S=[0, 3]. -/
def code_1378 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((4 : ℚ) / 5)]

/-- Catalogue code #1379: ((6,2,2)), m=10, a=[1, 2, 4, 4, 5, 9], S=[0, 7]. -/
def code_1379 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1380: ((6,2,2)), m=10, a=[1, 2, 4, 4, 6, 9], S=[0, 7]. -/
def code_1380 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1381: ((6,2,2)), m=10, a=[1, 2, 4, 4, 8, 9], S=[0, 3]. -/
def code_1381 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1382: ((6,2,2)), m=10, a=[1, 2, 4, 4, 9, 9], S=[0, 3]. -/
def code_1382 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((4 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1383: ((6,2,2)), m=10, a=[1, 2, 4, 5, 5, 9], S=[0, 3]. -/
def code_1383 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1384: ((6,2,2)), m=10, a=[1, 2, 4, 5, 6, 6], S=[0, 7]. -/
def code_1384 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((-4 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1385: ((6,2,2)), m=10, a=[1, 2, 4, 5, 6, 8], S=[0, 3]. -/
def code_1385 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1386: ((6,2,2)), m=10, a=[1, 2, 4, 5, 6, 8], S=[0, 7]. -/
def code_1386 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1387: ((6,2,2)), m=10, a=[1, 2, 4, 5, 8, 8], S=[0, 7]. -/
def code_1387 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1388: ((6,2,2)), m=10, a=[1, 2, 4, 5, 8, 9], S=[0, 3]. -/
def code_1388 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1389: ((6,2,2)), m=10, a=[1, 2, 4, 5, 8, 9], S=[0, 7]. -/
def code_1389 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1390: ((6,2,2)), m=10, a=[1, 2, 4, 5, 9, 9], S=[0, 3]. -/
def code_1390 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((2 : ℚ) / 5)]

/-- Catalogue code #1391: ((6,2,2)), m=10, a=[1, 2, 4, 5, 9, 9], S=[0, 7]. -/
def code_1391 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1392: ((6,2,2)), m=10, a=[1, 2, 4, 6, 8, 9], S=[0, 3]. -/
def code_1392 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1393: ((6,2,2)), m=10, a=[1, 2, 4, 6, 8, 9], S=[0, 7]. -/
def code_1393 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1394: ((6,2,2)), m=10, a=[1, 2, 4, 8, 8, 9], S=[0, 7]. -/
def code_1394 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1395: ((6,2,2)), m=10, a=[1, 2, 5, 5, 6, 6], S=[0, 3]. -/
def code_1395 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1396: ((6,2,2)), m=10, a=[1, 2, 5, 5, 6, 6], S=[0, 7]. -/
def code_1396 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1397: ((6,2,2)), m=10, a=[1, 2, 5, 5, 6, 8], S=[0, 3]. -/
def code_1397 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), (0 : ℚ), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1398: ((6,2,2)), m=10, a=[1, 2, 5, 5, 7, 7], S=[0, 6]. -/
def code_1398 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1399: ((6,2,2)), m=10, a=[1, 2, 5, 5, 7, 8], S=[0, 4]. -/
def code_1399 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1400: ((6,2,2)), m=10, a=[1, 2, 5, 5, 7, 9], S=[0, 6]. -/
def code_1400 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1401: ((6,2,2)), m=10, a=[1, 2, 5, 5, 9, 9], S=[0, 3]. -/
def code_1401 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1402: ((6,2,2)), m=10, a=[1, 2, 5, 6, 6, 6], S=[0, 3]. -/
def code_1402 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), ((-1 : ℚ) / 5), ((4 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1403: ((6,2,2)), m=10, a=[1, 2, 5, 6, 6, 8], S=[0, 3]. -/
def code_1403 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5)]

/-- Catalogue code #1404: ((6,2,2)), m=10, a=[1, 2, 5, 6, 6, 9], S=[0, 7]. -/
def code_1404 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![((-4 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1405: ((6,2,2)), m=10, a=[1, 2, 5, 6, 8, 8], S=[0, 3]. -/
def code_1405 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1406: ((6,2,2)), m=10, a=[1, 2, 5, 6, 8, 8], S=[0, 7]. -/
def code_1406 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1407: ((6,2,2)), m=10, a=[1, 2, 5, 6, 8, 9], S=[0, 3]. -/
def code_1407 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1408: ((6,2,2)), m=10, a=[1, 2, 5, 6, 8, 9], S=[0, 7]. -/
def code_1408 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), (0 : ℚ), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1409: ((6,2,2)), m=10, a=[1, 2, 5, 7, 7, 8], S=[0, 4]. -/
def code_1409 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1410: ((6,2,2)), m=10, a=[1, 2, 5, 7, 7, 8], S=[0, 6]. -/
def code_1410 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1411: ((6,2,2)), m=10, a=[1, 2, 5, 7, 7, 9], S=[0, 4]. -/
def code_1411 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1412: ((6,2,2)), m=10, a=[1, 2, 5, 7, 7, 9], S=[0, 6]. -/
def code_1412 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1413: ((6,2,2)), m=10, a=[1, 2, 5, 7, 8, 9], S=[0, 6]. -/
def code_1413 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1414: ((6,2,2)), m=10, a=[1, 2, 5, 7, 9, 9], S=[0, 6]. -/
def code_1414 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1415: ((6,2,2)), m=10, a=[1, 2, 5, 8, 8, 9], S=[0, 6]. -/
def code_1415 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1416: ((6,2,2)), m=10, a=[1, 2, 5, 8, 8, 9], S=[0, 7]. -/
def code_1416 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((2 : ℚ) / 5), ((-2 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1417: ((6,2,2)), m=10, a=[1, 2, 6, 6, 6, 9], S=[0, 3]. -/
def code_1417 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1418: ((6,2,2)), m=10, a=[1, 2, 6, 6, 8, 9], S=[0, 7]. -/
def code_1418 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 5), ((2 : ℚ) / 5), ((2 : ℚ) / 5), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #1419: ((6,2,2)), m=10, a=[1, 2, 7, 7, 7, 8], S=[0, 6]. -/
def code_1419 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1420: ((6,2,2)), m=10, a=[1, 2, 7, 7, 8, 8], S=[0, 6]. -/
def code_1420 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (2 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1421: ((6,2,2)), m=10, a=[1, 3, 3, 3, 4, 5], S=[0, 8]. -/
def code_1421 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1422: ((6,2,2)), m=10, a=[1, 3, 3, 3, 4, 9], S=[0, 8]. -/
def code_1422 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1423: ((6,2,2)), m=10, a=[1, 3, 3, 3, 5, 5], S=[0, 4]. -/
def code_1423 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1424: ((6,2,2)), m=10, a=[1, 3, 3, 3, 5, 5], S=[0, 6]. -/
def code_1424 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1425: ((6,2,2)), m=10, a=[1, 3, 3, 3, 5, 6], S=[0, 2]. -/
def code_1425 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1426: ((6,2,2)), m=10, a=[1, 3, 3, 3, 5, 8], S=[0, 4]. -/
def code_1426 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1427: ((6,2,2)), m=10, a=[1, 3, 3, 3, 5, 9], S=[0, 2]. -/
def code_1427 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1428: ((6,2,2)), m=10, a=[1, 3, 3, 3, 5, 9], S=[0, 8]. -/
def code_1428 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1429: ((6,2,2)), m=10, a=[1, 3, 3, 3, 7, 9], S=[0, 8]. -/
def code_1429 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1430: ((6,2,2)), m=10, a=[1, 3, 3, 3, 9, 9], S=[0, 4]. -/
def code_1430 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1431: ((6,2,2)), m=10, a=[1, 3, 3, 4, 4, 5], S=[0, 2]. -/
def code_1431 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1432: ((6,2,2)), m=10, a=[1, 3, 3, 4, 4, 5], S=[0, 8]. -/
def code_1432 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1433: ((6,2,2)), m=10, a=[1, 3, 3, 4, 5, 5], S=[0, 2]. -/
def code_1433 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, true, true], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1434: ((6,2,2)), m=10, a=[1, 3, 3, 4, 5, 7], S=[0, 2]. -/
def code_1434 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1435: ((6,2,2)), m=10, a=[1, 3, 3, 4, 5, 9], S=[0, 2]. -/
def code_1435 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1436: ((6,2,2)), m=10, a=[1, 3, 3, 4, 5, 9], S=[0, 8]. -/
def code_1436 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1437: ((6,2,2)), m=10, a=[1, 3, 3, 4, 7, 9], S=[0, 2]. -/
def code_1437 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1438: ((6,2,2)), m=10, a=[1, 3, 3, 5, 5, 8], S=[0, 4]. -/
def code_1438 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1439: ((6,2,2)), m=10, a=[1, 3, 3, 5, 5, 9], S=[0, 2]. -/
def code_1439 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1440: ((6,2,2)), m=10, a=[1, 3, 3, 5, 5, 9], S=[0, 4]. -/
def code_1440 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1441: ((6,2,2)), m=10, a=[1, 3, 3, 5, 6, 6], S=[0, 2]. -/
def code_1441 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1442: ((6,2,2)), m=10, a=[1, 3, 3, 5, 6, 9], S=[0, 2]. -/
def code_1442 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1443: ((6,2,2)), m=10, a=[1, 3, 3, 5, 6, 9], S=[0, 8]. -/
def code_1443 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1444: ((6,2,2)), m=10, a=[1, 3, 3, 5, 7, 8], S=[0, 6]. -/
def code_1444 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1445: ((6,2,2)), m=10, a=[1, 3, 3, 5, 7, 9], S=[0, 2]. -/
def code_1445 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1446: ((6,2,2)), m=10, a=[1, 3, 3, 5, 7, 9], S=[0, 6]. -/
def code_1446 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1447: ((6,2,2)), m=10, a=[1, 3, 3, 5, 8, 9], S=[0, 4]. -/
def code_1447 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1448: ((6,2,2)), m=10, a=[1, 3, 3, 5, 8, 9], S=[0, 6]. -/
def code_1448 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1449: ((6,2,2)), m=10, a=[1, 3, 3, 5, 9, 9], S=[0, 4]. -/
def code_1449 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1450: ((6,2,2)), m=10, a=[1, 3, 3, 5, 9, 9], S=[0, 6]. -/
def code_1450 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1451: ((6,2,2)), m=10, a=[1, 3, 3, 7, 8, 8], S=[0, 6]. -/
def code_1451 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1452: ((6,2,2)), m=10, a=[1, 3, 3, 7, 8, 9], S=[0, 6]. -/
def code_1452 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1453: ((6,2,2)), m=10, a=[1, 3, 3, 8, 8, 8], S=[0, 4]. -/
def code_1453 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1454: ((6,2,2)), m=10, a=[1, 3, 3, 8, 8, 9], S=[0, 6]. -/
def code_1454 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (3 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1455: ((6,2,2)), m=10, a=[1, 3, 4, 4, 4, 5], S=[0, 8]. -/
def code_1455 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1456: ((6,2,2)), m=10, a=[1, 3, 4, 4, 5, 7], S=[0, 2]. -/
def code_1456 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1457: ((6,2,2)), m=10, a=[1, 3, 4, 4, 5, 9], S=[0, 8]. -/
def code_1457 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1458: ((6,2,2)), m=10, a=[1, 3, 4, 4, 9, 9], S=[0, 2]. -/
def code_1458 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1459: ((6,2,2)), m=10, a=[1, 3, 4, 5, 6, 7], S=[0, 8]. -/
def code_1459 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1460: ((6,2,2)), m=10, a=[1, 3, 4, 5, 7, 7], S=[0, 8]. -/
def code_1460 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1461: ((6,2,2)), m=10, a=[1, 3, 4, 5, 7, 9], S=[0, 2]. -/
def code_1461 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1462: ((6,2,2)), m=10, a=[1, 3, 4, 5, 7, 9], S=[0, 8]. -/
def code_1462 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #1463: ((6,2,2)), m=10, a=[1, 3, 4, 6, 7, 9], S=[0, 2]. -/
def code_1463 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1464: ((6,2,2)), m=10, a=[1, 3, 4, 6, 7, 9], S=[0, 8]. -/
def code_1464 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1465: ((6,2,2)), m=10, a=[1, 3, 4, 7, 9, 9], S=[0, 8]. -/
def code_1465 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1466: ((6,2,2)), m=10, a=[1, 3, 5, 5, 6, 6], S=[0, 8]. -/
def code_1466 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1467: ((6,2,2)), m=10, a=[1, 3, 5, 5, 6, 7], S=[0, 8]. -/
def code_1467 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1468: ((6,2,2)), m=10, a=[1, 3, 5, 5, 6, 9], S=[0, 2]. -/
def code_1468 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1469: ((6,2,2)), m=10, a=[1, 3, 5, 5, 8, 9], S=[0, 4]. -/
def code_1469 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1470: ((6,2,2)), m=10, a=[1, 3, 5, 6, 6, 9], S=[0, 2]. -/
def code_1470 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1471: ((6,2,2)), m=10, a=[1, 3, 5, 6, 6, 9], S=[0, 8]. -/
def code_1471 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1472: ((6,2,2)), m=10, a=[1, 3, 5, 6, 7, 7], S=[0, 8]. -/
def code_1472 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1473: ((6,2,2)), m=10, a=[1, 3, 5, 6, 7, 9], S=[0, 2]. -/
def code_1473 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1474: ((6,2,2)), m=10, a=[1, 3, 5, 6, 7, 9], S=[0, 8]. -/
def code_1474 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1475: ((6,2,2)), m=10, a=[1, 3, 5, 7, 7, 9], S=[0, 4]. -/
def code_1475 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1476: ((6,2,2)), m=10, a=[1, 3, 5, 7, 7, 9], S=[0, 8]. -/
def code_1476 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1477: ((6,2,2)), m=10, a=[1, 3, 5, 7, 8, 8], S=[0, 6]. -/
def code_1477 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1478: ((6,2,2)), m=10, a=[1, 3, 5, 7, 8, 9], S=[0, 4]. -/
def code_1478 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1479: ((6,2,2)), m=10, a=[1, 3, 5, 7, 9, 9], S=[0, 6]. -/
def code_1479 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1480: ((6,2,2)), m=10, a=[1, 3, 5, 7, 9, 9], S=[0, 8]. -/
def code_1480 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1481: ((6,2,2)), m=10, a=[1, 3, 5, 8, 8, 9], S=[0, 6]. -/
def code_1481 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1482: ((6,2,2)), m=10, a=[1, 3, 6, 6, 9, 9], S=[0, 2]. -/
def code_1482 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (6 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1483: ((6,2,2)), m=10, a=[1, 3, 6, 7, 7, 9], S=[0, 8]. -/
def code_1483 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (6 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1484: ((6,2,2)), m=10, a=[1, 3, 7, 7, 8, 8], S=[0, 6]. -/
def code_1484 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (6 : ZMod 10)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #1485: ((6,2,2)), m=10, a=[1, 3, 7, 8, 8, 9], S=[0, 4]. -/
def code_1485 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1486: ((6,2,2)), m=10, a=[1, 3, 7, 9, 9, 9], S=[0, 4]. -/
def code_1486 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (3 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (4 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1487: ((6,2,2)), m=10, a=[1, 4, 4, 4, 5, 7], S=[0, 8]. -/
def code_1487 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1488: ((6,2,2)), m=10, a=[1, 4, 4, 4, 5, 8], S=[0, 3]. -/
def code_1488 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((-4 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5)]

/-- Catalogue code #1489: ((6,2,2)), m=10, a=[1, 4, 4, 4, 7, 9], S=[0, 8]. -/
def code_1489 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1490: ((6,2,2)), m=10, a=[1, 4, 4, 4, 8, 9], S=[0, 3]. -/
def code_1490 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1491: ((6,2,2)), m=10, a=[1, 4, 4, 4, 8, 9], S=[0, 7]. -/
def code_1491 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ)]

/-- Catalogue code #1492: ((6,2,2)), m=10, a=[1, 4, 4, 4, 9, 9], S=[0, 3]. -/
def code_1492 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), (0 : ℚ), ((-4 : ℚ) / 5)]

/-- Catalogue code #1493: ((6,2,2)), m=10, a=[1, 4, 4, 4, 9, 9], S=[0, 8]. -/
def code_1493 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (9 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1494: ((6,2,2)), m=10, a=[1, 4, 4, 5, 7, 7], S=[0, 2]. -/
def code_1494 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (7 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1495: ((6,2,2)), m=10, a=[1, 4, 4, 5, 7, 9], S=[0, 2]. -/
def code_1495 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (2 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1496: ((6,2,2)), m=10, a=[1, 4, 4, 5, 7, 9], S=[0, 8]. -/
def code_1496 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (7 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (8 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1497: ((6,2,2)), m=10, a=[1, 4, 4, 5, 8, 8], S=[0, 3]. -/
def code_1497 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 5), ((-1 : ℚ) / 5), (0 : ℚ), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #1498: ((6,2,2)), m=10, a=[1, 4, 4, 5, 8, 8], S=[0, 7]. -/
def code_1498 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (8 : ZMod 10)]
  S := ![(0 : ZMod 10), (7 : ZMod 10)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 5), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #1499: ((6,2,2)), m=10, a=[1, 4, 4, 5, 8, 9], S=[0, 3]. -/
def code_1499 : ExampleData 6 10 2 where
  a := ![(1 : ZMod 10), (4 : ZMod 10), (4 : ZMod 10), (5 : ZMod 10), (8 : ZMod 10), (9 : ZMod 10)]
  S := ![(0 : ZMod 10), (3 : ZMod 10)]
  supp := ![{![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 10)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 10)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 10)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5), ((-2 : ℚ) / 5), ((1 : ℚ) / 5), ((-2 : ℚ) / 5)]
def checks : List Bool :=
  [decide code_1000.OK,
   decide code_1001.OK,
   decide code_1002.OK,
   decide code_1003.OK,
   decide code_1004.OK,
   decide code_1005.OK,
   decide code_1006.OK,
   decide code_1007.OK,
   decide code_1008.OK,
   decide code_1009.OK,
   decide code_1010.OK,
   decide code_1011.OK,
   decide code_1012.OK,
   decide code_1013.OK,
   decide code_1014.OK,
   decide code_1015.OK,
   decide code_1016.OK,
   decide code_1017.OK,
   decide code_1018.OK,
   decide code_1019.OK,
   decide code_1020.OK,
   decide code_1021.OK,
   decide code_1022.OK,
   decide code_1023.OK,
   decide code_1024.OK,
   decide code_1025.OK,
   decide code_1026.OK,
   decide code_1027.OK,
   decide code_1028.OK,
   decide code_1029.OK,
   decide code_1030.OK,
   decide code_1031.OK,
   decide code_1032.OK,
   decide code_1033.OK,
   decide code_1034.OK,
   decide code_1035.OK,
   decide code_1036.OK,
   decide code_1037.OK,
   decide code_1038.OK,
   decide code_1039.OK,
   decide code_1040.OK,
   decide code_1041.OK,
   decide code_1042.OK,
   decide code_1043.OK,
   decide code_1044.OK,
   decide code_1045.OK,
   decide code_1046.OK,
   decide code_1047.OK,
   decide code_1048.OK,
   decide code_1049.OK,
   decide code_1050.OK,
   decide code_1051.OK,
   decide code_1052.OK,
   decide code_1053.OK,
   decide code_1054.OK,
   decide code_1055.OK,
   decide code_1056.OK,
   decide code_1057.OK,
   decide code_1058.OK,
   decide code_1059.OK,
   decide code_1060.OK,
   decide code_1061.OK,
   decide code_1062.OK,
   decide code_1063.OK,
   decide code_1064.OK,
   decide code_1065.OK,
   decide code_1066.OK,
   decide code_1067.OK,
   decide code_1068.OK,
   decide code_1069.OK,
   decide code_1070.OK,
   decide code_1071.OK,
   decide code_1072.OK,
   decide code_1073.OK,
   decide code_1074.OK,
   decide code_1075.OK,
   decide code_1076.OK,
   decide code_1077.OK,
   decide code_1078.OK,
   decide code_1079.OK,
   decide code_1080.OK,
   decide code_1081.OK,
   decide code_1082.OK,
   decide code_1083.OK,
   decide code_1084.OK,
   decide code_1085.OK,
   decide code_1086.OK,
   decide code_1087.OK,
   decide code_1088.OK,
   decide code_1089.OK,
   decide code_1090.OK,
   decide code_1091.OK,
   decide code_1092.OK,
   decide code_1093.OK,
   decide code_1094.OK,
   decide code_1095.OK,
   decide code_1096.OK,
   decide code_1097.OK,
   decide code_1098.OK,
   decide code_1099.OK,
   decide code_1100.OK,
   decide code_1101.OK,
   decide code_1102.OK,
   decide code_1103.OK,
   decide code_1104.OK,
   decide code_1105.OK,
   decide code_1106.OK,
   decide code_1107.OK,
   decide code_1108.OK,
   decide code_1109.OK,
   decide code_1110.OK,
   decide code_1111.OK,
   decide code_1112.OK,
   decide code_1113.OK,
   decide code_1114.OK,
   decide code_1115.OK,
   decide code_1116.OK,
   decide code_1117.OK,
   decide code_1118.OK,
   decide code_1119.OK,
   decide code_1120.OK,
   decide code_1121.OK,
   decide code_1122.OK,
   decide code_1123.OK,
   decide code_1124.OK,
   decide code_1125.OK,
   decide code_1126.OK,
   decide code_1127.OK,
   decide code_1128.OK,
   decide code_1129.OK,
   decide code_1130.OK,
   decide code_1131.OK,
   decide code_1132.OK,
   decide code_1133.OK,
   decide code_1134.OK,
   decide code_1135.OK,
   decide code_1136.OK,
   decide code_1137.OK,
   decide code_1138.OK,
   decide code_1139.OK,
   decide code_1140.OK,
   decide code_1141.OK,
   decide code_1142.OK,
   decide code_1143.OK,
   decide code_1144.OK,
   decide code_1145.OK,
   decide code_1146.OK,
   decide code_1147.OK,
   decide code_1148.OK,
   decide code_1149.OK,
   decide code_1150.OK,
   decide code_1151.OK,
   decide code_1152.OK,
   decide code_1153.OK,
   decide code_1154.OK,
   decide code_1155.OK,
   decide code_1156.OK,
   decide code_1157.OK,
   decide code_1158.OK,
   decide code_1159.OK,
   decide code_1160.OK,
   decide code_1161.OK,
   decide code_1162.OK,
   decide code_1163.OK,
   decide code_1164.OK,
   decide code_1165.OK,
   decide code_1166.OK,
   decide code_1167.OK,
   decide code_1168.OK,
   decide code_1169.OK,
   decide code_1170.OK,
   decide code_1171.OK,
   decide code_1172.OK,
   decide code_1173.OK,
   decide code_1174.OK,
   decide code_1175.OK,
   decide code_1176.OK,
   decide code_1177.OK,
   decide code_1178.OK,
   decide code_1179.OK,
   decide code_1180.OK,
   decide code_1181.OK,
   decide code_1182.OK,
   decide code_1183.OK,
   decide code_1184.OK,
   decide code_1185.OK,
   decide code_1186.OK,
   decide code_1187.OK,
   decide code_1188.OK,
   decide code_1189.OK,
   decide code_1190.OK,
   decide code_1191.OK,
   decide code_1192.OK,
   decide code_1193.OK,
   decide code_1194.OK,
   decide code_1195.OK,
   decide code_1196.OK,
   decide code_1197.OK,
   decide code_1198.OK,
   decide code_1199.OK,
   decide code_1200.OK,
   decide code_1201.OK,
   decide code_1202.OK,
   decide code_1203.OK,
   decide code_1204.OK,
   decide code_1205.OK,
   decide code_1206.OK,
   decide code_1207.OK,
   decide code_1208.OK,
   decide code_1209.OK,
   decide code_1210.OK,
   decide code_1211.OK,
   decide code_1212.OK,
   decide code_1213.OK,
   decide code_1214.OK,
   decide code_1215.OK,
   decide code_1216.OK,
   decide code_1217.OK,
   decide code_1218.OK,
   decide code_1219.OK,
   decide code_1220.OK,
   decide code_1221.OK,
   decide code_1222.OK,
   decide code_1223.OK,
   decide code_1224.OK,
   decide code_1225.OK,
   decide code_1226.OK,
   decide code_1227.OK,
   decide code_1228.OK,
   decide code_1229.OK,
   decide code_1230.OK,
   decide code_1231.OK,
   decide code_1232.OK,
   decide code_1233.OK,
   decide code_1234.OK,
   decide code_1235.OK,
   decide code_1236.OK,
   decide code_1237.OK,
   decide code_1238.OK,
   decide code_1239.OK,
   decide code_1240.OK,
   decide code_1241.OK,
   decide code_1242.OK,
   decide code_1243.OK,
   decide code_1244.OK,
   decide code_1245.OK,
   decide code_1246.OK,
   decide code_1247.OK,
   decide code_1248.OK,
   decide code_1249.OK,
   decide code_1250.OK,
   decide code_1251.OK,
   decide code_1252.OK,
   decide code_1253.OK,
   decide code_1254.OK,
   decide code_1255.OK,
   decide code_1256.OK,
   decide code_1257.OK,
   decide code_1258.OK,
   decide code_1259.OK,
   decide code_1260.OK,
   decide code_1261.OK,
   decide code_1262.OK,
   decide code_1263.OK,
   decide code_1264.OK,
   decide code_1265.OK,
   decide code_1266.OK,
   decide code_1267.OK,
   decide code_1268.OK,
   decide code_1269.OK,
   decide code_1270.OK,
   decide code_1271.OK,
   decide code_1272.OK,
   decide code_1273.OK,
   decide code_1274.OK,
   decide code_1275.OK,
   decide code_1276.OK,
   decide code_1277.OK,
   decide code_1278.OK,
   decide code_1279.OK,
   decide code_1280.OK,
   decide code_1281.OK,
   decide code_1282.OK,
   decide code_1283.OK,
   decide code_1284.OK,
   decide code_1285.OK,
   decide code_1286.OK,
   decide code_1287.OK,
   decide code_1288.OK,
   decide code_1289.OK,
   decide code_1290.OK,
   decide code_1291.OK,
   decide code_1292.OK,
   decide code_1293.OK,
   decide code_1294.OK,
   decide code_1295.OK,
   decide code_1296.OK,
   decide code_1297.OK,
   decide code_1298.OK,
   decide code_1299.OK,
   decide code_1300.OK,
   decide code_1301.OK,
   decide code_1302.OK,
   decide code_1303.OK,
   decide code_1304.OK,
   decide code_1305.OK,
   decide code_1306.OK,
   decide code_1307.OK,
   decide code_1308.OK,
   decide code_1309.OK,
   decide code_1310.OK,
   decide code_1311.OK,
   decide code_1312.OK,
   decide code_1313.OK,
   decide code_1314.OK,
   decide code_1315.OK,
   decide code_1316.OK,
   decide code_1317.OK,
   decide code_1318.OK,
   decide code_1319.OK,
   decide code_1320.OK,
   decide code_1321.OK,
   decide code_1322.OK,
   decide code_1323.OK,
   decide code_1324.OK,
   decide code_1325.OK,
   decide code_1326.OK,
   decide code_1327.OK,
   decide code_1328.OK,
   decide code_1329.OK,
   decide code_1330.OK,
   decide code_1331.OK,
   decide code_1332.OK,
   decide code_1333.OK,
   decide code_1334.OK,
   decide code_1335.OK,
   decide code_1336.OK,
   decide code_1337.OK,
   decide code_1338.OK,
   decide code_1339.OK,
   decide code_1340.OK,
   decide code_1341.OK,
   decide code_1342.OK,
   decide code_1343.OK,
   decide code_1344.OK,
   decide code_1345.OK,
   decide code_1346.OK,
   decide code_1347.OK,
   decide code_1348.OK,
   decide code_1349.OK,
   decide code_1350.OK,
   decide code_1351.OK,
   decide code_1352.OK,
   decide code_1353.OK,
   decide code_1354.OK,
   decide code_1355.OK,
   decide code_1356.OK,
   decide code_1357.OK,
   decide code_1358.OK,
   decide code_1359.OK,
   decide code_1360.OK,
   decide code_1361.OK,
   decide code_1362.OK,
   decide code_1363.OK,
   decide code_1364.OK,
   decide code_1365.OK,
   decide code_1366.OK,
   decide code_1367.OK,
   decide code_1368.OK,
   decide code_1369.OK,
   decide code_1370.OK,
   decide code_1371.OK,
   decide code_1372.OK,
   decide code_1373.OK,
   decide code_1374.OK,
   decide code_1375.OK,
   decide code_1376.OK,
   decide code_1377.OK,
   decide code_1378.OK,
   decide code_1379.OK,
   decide code_1380.OK,
   decide code_1381.OK,
   decide code_1382.OK,
   decide code_1383.OK,
   decide code_1384.OK,
   decide code_1385.OK,
   decide code_1386.OK,
   decide code_1387.OK,
   decide code_1388.OK,
   decide code_1389.OK,
   decide code_1390.OK,
   decide code_1391.OK,
   decide code_1392.OK,
   decide code_1393.OK,
   decide code_1394.OK,
   decide code_1395.OK,
   decide code_1396.OK,
   decide code_1397.OK,
   decide code_1398.OK,
   decide code_1399.OK,
   decide code_1400.OK,
   decide code_1401.OK,
   decide code_1402.OK,
   decide code_1403.OK,
   decide code_1404.OK,
   decide code_1405.OK,
   decide code_1406.OK,
   decide code_1407.OK,
   decide code_1408.OK,
   decide code_1409.OK,
   decide code_1410.OK,
   decide code_1411.OK,
   decide code_1412.OK,
   decide code_1413.OK,
   decide code_1414.OK,
   decide code_1415.OK,
   decide code_1416.OK,
   decide code_1417.OK,
   decide code_1418.OK,
   decide code_1419.OK,
   decide code_1420.OK,
   decide code_1421.OK,
   decide code_1422.OK,
   decide code_1423.OK,
   decide code_1424.OK,
   decide code_1425.OK,
   decide code_1426.OK,
   decide code_1427.OK,
   decide code_1428.OK,
   decide code_1429.OK,
   decide code_1430.OK,
   decide code_1431.OK,
   decide code_1432.OK,
   decide code_1433.OK,
   decide code_1434.OK,
   decide code_1435.OK,
   decide code_1436.OK,
   decide code_1437.OK,
   decide code_1438.OK,
   decide code_1439.OK,
   decide code_1440.OK,
   decide code_1441.OK,
   decide code_1442.OK,
   decide code_1443.OK,
   decide code_1444.OK,
   decide code_1445.OK,
   decide code_1446.OK,
   decide code_1447.OK,
   decide code_1448.OK,
   decide code_1449.OK,
   decide code_1450.OK,
   decide code_1451.OK,
   decide code_1452.OK,
   decide code_1453.OK,
   decide code_1454.OK,
   decide code_1455.OK,
   decide code_1456.OK,
   decide code_1457.OK,
   decide code_1458.OK,
   decide code_1459.OK,
   decide code_1460.OK,
   decide code_1461.OK,
   decide code_1462.OK,
   decide code_1463.OK,
   decide code_1464.OK,
   decide code_1465.OK,
   decide code_1466.OK,
   decide code_1467.OK,
   decide code_1468.OK,
   decide code_1469.OK,
   decide code_1470.OK,
   decide code_1471.OK,
   decide code_1472.OK,
   decide code_1473.OK,
   decide code_1474.OK,
   decide code_1475.OK,
   decide code_1476.OK,
   decide code_1477.OK,
   decide code_1478.OK,
   decide code_1479.OK,
   decide code_1480.OK,
   decide code_1481.OK,
   decide code_1482.OK,
   decide code_1483.OK,
   decide code_1484.OK,
   decide code_1485.OK,
   decide code_1486.OK,
   decide code_1487.OK,
   decide code_1488.OK,
   decide code_1489.OK,
   decide code_1490.OK,
   decide code_1491.OK,
   decide code_1492.OK,
   decide code_1493.OK,
   decide code_1494.OK,
   decide code_1495.OK,
   decide code_1496.OK,
   decide code_1497.OK,
   decide code_1498.OK,
   decide code_1499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk002
