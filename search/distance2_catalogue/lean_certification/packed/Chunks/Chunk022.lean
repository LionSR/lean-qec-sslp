import SS

namespace Catalogue.Chunk022

open SS SS.Verify

/-- Catalogue code #11000: ((6,2,2)), m=15, a=[1, 2, 3, 5, 9, 13], S=[0, 11]. -/
def code_11000 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11001: ((6,2,2)), m=15, a=[1, 2, 3, 5, 9, 14], S=[0, 8]. -/
def code_11001 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11002: ((6,2,2)), m=15, a=[1, 2, 3, 5, 10, 11], S=[0, 9]. -/
def code_11002 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11003: ((6,2,2)), m=15, a=[1, 2, 3, 6, 8, 10], S=[0, 4]. -/
def code_11003 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11004: ((6,2,2)), m=15, a=[1, 2, 3, 6, 10, 11], S=[0, 7]. -/
def code_11004 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5)]

/-- Catalogue code #11005: ((6,2,2)), m=15, a=[1, 2, 3, 7, 7, 9], S=[0, 4]. -/
def code_11005 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11006: ((6,2,2)), m=15, a=[1, 2, 3, 7, 7, 12], S=[0, 4]. -/
def code_11006 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11007: ((6,2,2)), m=15, a=[1, 2, 3, 7, 8, 12], S=[0, 6]. -/
def code_11007 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11008: ((6,2,2)), m=15, a=[1, 2, 3, 7, 9, 10], S=[0, 4]. -/
def code_11008 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11009: ((6,2,2)), m=15, a=[1, 2, 3, 7, 10, 11], S=[0, 9]. -/
def code_11009 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11010: ((6,2,2)), m=15, a=[1, 2, 3, 8, 8, 9], S=[0, 11]. -/
def code_11010 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11011: ((6,2,2)), m=15, a=[1, 2, 3, 8, 8, 10], S=[0, 11]. -/
def code_11011 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11012: ((6,2,2)), m=15, a=[1, 2, 3, 8, 9, 10], S=[0, 11]. -/
def code_11012 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11013: ((6,2,2)), m=15, a=[1, 2, 3, 8, 9, 13], S=[0, 11]. -/
def code_11013 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11014: ((6,2,2)), m=15, a=[1, 2, 3, 8, 10, 11], S=[0, 9]. -/
def code_11014 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11015: ((6,2,2)), m=15, a=[1, 2, 3, 9, 10, 11], S=[0, 7]. -/
def code_11015 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (3 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #11016: ((6,2,2)), m=15, a=[1, 2, 4, 4, 5, 5], S=[0, 3]. -/
def code_11016 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11017: ((6,2,2)), m=15, a=[1, 2, 4, 4, 5, 7], S=[0, 9]. -/
def code_11017 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11018: ((6,2,2)), m=15, a=[1, 2, 4, 4, 5, 9], S=[0, 3]. -/
def code_11018 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11019: ((6,2,2)), m=15, a=[1, 2, 4, 4, 5, 9], S=[0, 7]. -/
def code_11019 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11020: ((6,2,2)), m=15, a=[1, 2, 4, 4, 5, 12], S=[0, 6]. -/
def code_11020 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11021: ((6,2,2)), m=15, a=[1, 2, 4, 4, 5, 12], S=[0, 7]. -/
def code_11021 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11022: ((6,2,2)), m=15, a=[1, 2, 4, 4, 6, 6], S=[0, 7]. -/
def code_11022 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #11023: ((6,2,2)), m=15, a=[1, 2, 4, 4, 6, 14], S=[0, 7]. -/
def code_11023 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11024: ((6,2,2)), m=15, a=[1, 2, 4, 4, 8, 9], S=[0, 3]. -/
def code_11024 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11025: ((6,2,2)), m=15, a=[1, 2, 4, 4, 8, 12], S=[0, 6]. -/
def code_11025 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11026: ((6,2,2)), m=15, a=[1, 2, 4, 4, 8, 14], S=[0, 9]. -/
def code_11026 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11027: ((6,2,2)), m=15, a=[1, 2, 4, 4, 9, 12], S=[0, 7]. -/
def code_11027 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11028: ((6,2,2)), m=15, a=[1, 2, 4, 5, 5, 7], S=[0, 3]. -/
def code_11028 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11029: ((6,2,2)), m=15, a=[1, 2, 4, 5, 5, 12], S=[0, 6]. -/
def code_11029 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11030: ((6,2,2)), m=15, a=[1, 2, 4, 5, 6, 6], S=[0, 12]. -/
def code_11030 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11031: ((6,2,2)), m=15, a=[1, 2, 4, 5, 6, 7], S=[0, 3]. -/
def code_11031 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11032: ((6,2,2)), m=15, a=[1, 2, 4, 5, 6, 7], S=[0, 12]. -/
def code_11032 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11033: ((6,2,2)), m=15, a=[1, 2, 4, 5, 6, 12], S=[0, 7]. -/
def code_11033 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11034: ((6,2,2)), m=15, a=[1, 2, 4, 5, 7, 8], S=[0, 3]. -/
def code_11034 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11035: ((6,2,2)), m=15, a=[1, 2, 4, 5, 7, 8], S=[0, 9]. -/
def code_11035 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11036: ((6,2,2)), m=15, a=[1, 2, 4, 5, 7, 9], S=[0, 3]. -/
def code_11036 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11037: ((6,2,2)), m=15, a=[1, 2, 4, 5, 7, 9], S=[0, 12]. -/
def code_11037 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11038: ((6,2,2)), m=15, a=[1, 2, 4, 5, 7, 12], S=[0, 6]. -/
def code_11038 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11039: ((6,2,2)), m=15, a=[1, 2, 4, 5, 7, 12], S=[0, 9]. -/
def code_11039 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11040: ((6,2,2)), m=15, a=[1, 2, 4, 5, 7, 14], S=[0, 6]. -/
def code_11040 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11041: ((6,2,2)), m=15, a=[1, 2, 4, 5, 7, 14], S=[0, 12]. -/
def code_11041 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11042: ((6,2,2)), m=15, a=[1, 2, 4, 5, 8, 9], S=[0, 12]. -/
def code_11042 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11043: ((6,2,2)), m=15, a=[1, 2, 4, 5, 8, 12], S=[0, 6]. -/
def code_11043 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11044: ((6,2,2)), m=15, a=[1, 2, 4, 5, 8, 13], S=[0, 6]. -/
def code_11044 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11045: ((6,2,2)), m=15, a=[1, 2, 4, 5, 8, 13], S=[0, 12]. -/
def code_11045 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11046: ((6,2,2)), m=15, a=[1, 2, 4, 5, 9, 12], S=[0, 7]. -/
def code_11046 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11047: ((6,2,2)), m=15, a=[1, 2, 4, 5, 9, 13], S=[0, 12]. -/
def code_11047 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11048: ((6,2,2)), m=15, a=[1, 2, 4, 5, 9, 14], S=[0, 8]. -/
def code_11048 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11049: ((6,2,2)), m=15, a=[1, 2, 4, 5, 9, 14], S=[0, 12]. -/
def code_11049 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11050: ((6,2,2)), m=15, a=[1, 2, 4, 6, 6, 14], S=[0, 7]. -/
def code_11050 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11051: ((6,2,2)), m=15, a=[1, 2, 4, 6, 8, 9], S=[0, 3]. -/
def code_11051 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11052: ((6,2,2)), m=15, a=[1, 2, 4, 6, 8, 11], S=[0, 12]. -/
def code_11052 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11053: ((6,2,2)), m=15, a=[1, 2, 4, 6, 10, 11], S=[0, 7]. -/
def code_11053 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11054: ((6,2,2)), m=15, a=[1, 2, 4, 6, 10, 11], S=[0, 12]. -/
def code_11054 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11055: ((6,2,2)), m=15, a=[1, 2, 4, 7, 7, 10], S=[0, 3]. -/
def code_11055 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11056: ((6,2,2)), m=15, a=[1, 2, 4, 7, 9, 14], S=[0, 12]. -/
def code_11056 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11057: ((6,2,2)), m=15, a=[1, 2, 4, 7, 10, 11], S=[0, 6]. -/
def code_11057 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11058: ((6,2,2)), m=15, a=[1, 2, 4, 8, 8, 9], S=[0, 12]. -/
def code_11058 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11059: ((6,2,2)), m=15, a=[1, 2, 4, 8, 8, 10], S=[0, 6]. -/
def code_11059 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11060: ((6,2,2)), m=15, a=[1, 2, 4, 8, 8, 10], S=[0, 12]. -/
def code_11060 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11061: ((6,2,2)), m=15, a=[1, 2, 4, 8, 8, 13], S=[0, 3]. -/
def code_11061 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11062: ((6,2,2)), m=15, a=[1, 2, 4, 8, 9, 10], S=[0, 3]. -/
def code_11062 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11063: ((6,2,2)), m=15, a=[1, 2, 4, 8, 9, 10], S=[0, 12]. -/
def code_11063 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11064: ((6,2,2)), m=15, a=[1, 2, 4, 8, 10, 11], S=[0, 9]. -/
def code_11064 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11065: ((6,2,2)), m=15, a=[1, 2, 4, 8, 10, 12], S=[0, 9]. -/
def code_11065 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11066: ((6,2,2)), m=15, a=[1, 2, 4, 8, 10, 14], S=[0, 3]. -/
def code_11066 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11067: ((6,2,2)), m=15, a=[1, 2, 4, 8, 12, 14], S=[0, 6]. -/
def code_11067 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11068: ((6,2,2)), m=15, a=[1, 2, 4, 9, 9, 11], S=[0, 7]. -/
def code_11068 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11069: ((6,2,2)), m=15, a=[1, 2, 4, 9, 10, 12], S=[0, 7]. -/
def code_11069 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11070: ((6,2,2)), m=15, a=[1, 2, 4, 9, 10, 14], S=[0, 3]. -/
def code_11070 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11071: ((6,2,2)), m=15, a=[1, 2, 4, 9, 10, 14], S=[0, 7]. -/
def code_11071 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-13 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11072: ((6,2,2)), m=15, a=[1, 2, 4, 9, 12, 14], S=[0, 7]. -/
def code_11072 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11073: ((6,2,2)), m=15, a=[1, 2, 4, 10, 12, 14], S=[0, 7]. -/
def code_11073 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #11074: ((6,2,2)), m=15, a=[1, 2, 4, 12, 12, 13], S=[0, 7]. -/
def code_11074 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (4 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11075: ((6,2,2)), m=15, a=[1, 2, 5, 5, 7, 9], S=[0, 3]. -/
def code_11075 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11076: ((6,2,2)), m=15, a=[1, 2, 5, 5, 7, 12], S=[0, 6]. -/
def code_11076 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11077: ((6,2,2)), m=15, a=[1, 2, 5, 6, 6, 13], S=[0, 4]. -/
def code_11077 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #11078: ((6,2,2)), m=15, a=[1, 2, 5, 6, 7, 8], S=[0, 3]. -/
def code_11078 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11079: ((6,2,2)), m=15, a=[1, 2, 5, 6, 7, 8], S=[0, 11]. -/
def code_11079 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #11080: ((6,2,2)), m=15, a=[1, 2, 5, 6, 7, 9], S=[0, 3]. -/
def code_11080 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11081: ((6,2,2)), m=15, a=[1, 2, 5, 6, 7, 10], S=[0, 12]. -/
def code_11081 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11082: ((6,2,2)), m=15, a=[1, 2, 5, 6, 7, 11], S=[0, 3]. -/
def code_11082 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11083: ((6,2,2)), m=15, a=[1, 2, 5, 6, 7, 11], S=[0, 12]. -/
def code_11083 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11084: ((6,2,2)), m=15, a=[1, 2, 5, 6, 7, 12], S=[0, 11]. -/
def code_11084 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11085: ((6,2,2)), m=15, a=[1, 2, 5, 6, 8, 12], S=[0, 11]. -/
def code_11085 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #11086: ((6,2,2)), m=15, a=[1, 2, 5, 6, 11, 12], S=[0, 8]. -/
def code_11086 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11087: ((6,2,2)), m=15, a=[1, 2, 5, 7, 7, 9], S=[0, 4]. -/
def code_11087 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11088: ((6,2,2)), m=15, a=[1, 2, 5, 7, 7, 11], S=[0, 12]. -/
def code_11088 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11089: ((6,2,2)), m=15, a=[1, 2, 5, 7, 8, 12], S=[0, 9]. -/
def code_11089 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11090: ((6,2,2)), m=15, a=[1, 2, 5, 7, 8, 12], S=[0, 11]. -/
def code_11090 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-13 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11091: ((6,2,2)), m=15, a=[1, 2, 5, 7, 9, 11], S=[0, 12]. -/
def code_11091 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11092: ((6,2,2)), m=15, a=[1, 2, 5, 7, 9, 12], S=[0, 4]. -/
def code_11092 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11093: ((6,2,2)), m=15, a=[1, 2, 5, 7, 9, 13], S=[0, 4]. -/
def code_11093 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11094: ((6,2,2)), m=15, a=[1, 2, 5, 7, 9, 14], S=[0, 4]. -/
def code_11094 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11095: ((6,2,2)), m=15, a=[1, 2, 5, 7, 9, 14], S=[0, 12]. -/
def code_11095 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11096: ((6,2,2)), m=15, a=[1, 2, 5, 7, 10, 11], S=[0, 9]. -/
def code_11096 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11097: ((6,2,2)), m=15, a=[1, 2, 5, 7, 11, 11], S=[0, 6]. -/
def code_11097 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11098: ((6,2,2)), m=15, a=[1, 2, 5, 7, 11, 13], S=[0, 3]. -/
def code_11098 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11099: ((6,2,2)), m=15, a=[1, 2, 5, 7, 11, 14], S=[0, 6]. -/
def code_11099 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11100: ((6,2,2)), m=15, a=[1, 2, 5, 7, 12, 13], S=[0, 4]. -/
def code_11100 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11101: ((6,2,2)), m=15, a=[1, 2, 5, 8, 8, 11], S=[0, 3]. -/
def code_11101 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11102: ((6,2,2)), m=15, a=[1, 2, 5, 8, 8, 13], S=[0, 3]. -/
def code_11102 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11103: ((6,2,2)), m=15, a=[1, 2, 5, 8, 9, 12], S=[0, 11]. -/
def code_11103 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11104: ((6,2,2)), m=15, a=[1, 2, 5, 8, 11, 13], S=[0, 3]. -/
def code_11104 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11105: ((6,2,2)), m=15, a=[1, 2, 5, 9, 9, 13], S=[0, 3]. -/
def code_11105 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11106: ((6,2,2)), m=15, a=[1, 2, 5, 9, 12, 13], S=[0, 4]. -/
def code_11106 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #11107: ((6,2,2)), m=15, a=[1, 2, 5, 10, 12, 12], S=[0, 6]. -/
def code_11107 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11108: ((6,2,2)), m=15, a=[1, 2, 5, 11, 11, 14], S=[0, 6]. -/
def code_11108 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11109: ((6,2,2)), m=15, a=[1, 2, 5, 11, 12, 13], S=[0, 7]. -/
def code_11109 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11110: ((6,2,2)), m=15, a=[1, 2, 5, 12, 12, 14], S=[0, 8]. -/
def code_11110 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11111: ((6,2,2)), m=15, a=[1, 2, 6, 6, 6, 10], S=[0, 3]. -/
def code_11111 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11112: ((6,2,2)), m=15, a=[1, 2, 6, 6, 6, 11], S=[0, 3]. -/
def code_11112 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11113: ((6,2,2)), m=15, a=[1, 2, 6, 6, 8, 14], S=[0, 11]. -/
def code_11113 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11114: ((6,2,2)), m=15, a=[1, 2, 6, 6, 10, 14], S=[0, 11]. -/
def code_11114 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11115: ((6,2,2)), m=15, a=[1, 2, 6, 6, 11, 11], S=[0, 8]. -/
def code_11115 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11116: ((6,2,2)), m=15, a=[1, 2, 6, 7, 8, 12], S=[0, 11]. -/
def code_11116 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11117: ((6,2,2)), m=15, a=[1, 2, 6, 7, 10, 11], S=[0, 3]. -/
def code_11117 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11118: ((6,2,2)), m=15, a=[1, 2, 6, 7, 10, 11], S=[0, 12]. -/
def code_11118 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11119: ((6,2,2)), m=15, a=[1, 2, 6, 7, 10, 12], S=[0, 4]. -/
def code_11119 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11120: ((6,2,2)), m=15, a=[1, 2, 6, 7, 11, 11], S=[0, 3]. -/
def code_11120 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11121: ((6,2,2)), m=15, a=[1, 2, 6, 8, 10, 10], S=[0, 3]. -/
def code_11121 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11122: ((6,2,2)), m=15, a=[1, 2, 6, 8, 10, 12], S=[0, 11]. -/
def code_11122 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11123: ((6,2,2)), m=15, a=[1, 2, 6, 9, 10, 11], S=[0, 12]. -/
def code_11123 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11124: ((6,2,2)), m=15, a=[1, 2, 6, 10, 11, 11], S=[0, 8]. -/
def code_11124 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11125: ((6,2,2)), m=15, a=[1, 2, 6, 10, 11, 12], S=[0, 8]. -/
def code_11125 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11126: ((6,2,2)), m=15, a=[1, 2, 6, 11, 11, 12], S=[0, 8]. -/
def code_11126 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((7 : ℚ) / 15)]

/-- Catalogue code #11127: ((6,2,2)), m=15, a=[1, 2, 7, 7, 9, 11], S=[0, 12]. -/
def code_11127 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11128: ((6,2,2)), m=15, a=[1, 2, 7, 8, 9, 10], S=[0, 4]. -/
def code_11128 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11129: ((6,2,2)), m=15, a=[1, 2, 7, 8, 9, 12], S=[0, 4]. -/
def code_11129 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11130: ((6,2,2)), m=15, a=[1, 2, 7, 8, 10, 12], S=[0, 4]. -/
def code_11130 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((13 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11131: ((6,2,2)), m=15, a=[1, 2, 7, 9, 10, 11], S=[0, 12]. -/
def code_11131 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11132: ((6,2,2)), m=15, a=[1, 2, 7, 9, 10, 12], S=[0, 4]. -/
def code_11132 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-7 : ℚ) / 15)]

/-- Catalogue code #11133: ((6,2,2)), m=15, a=[1, 2, 7, 9, 11, 13], S=[0, 3]. -/
def code_11133 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11134: ((6,2,2)), m=15, a=[1, 2, 7, 9, 12, 13], S=[0, 4]. -/
def code_11134 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11135: ((6,2,2)), m=15, a=[1, 2, 7, 10, 11, 11], S=[0, 3]. -/
def code_11135 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11136: ((6,2,2)), m=15, a=[1, 2, 7, 10, 11, 12], S=[0, 6]. -/
def code_11136 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11137: ((6,2,2)), m=15, a=[1, 2, 7, 10, 11, 12], S=[0, 9]. -/
def code_11137 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11138: ((6,2,2)), m=15, a=[1, 2, 7, 11, 11, 14], S=[0, 6]. -/
def code_11138 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11139: ((6,2,2)), m=15, a=[1, 2, 7, 11, 12, 13], S=[0, 6]. -/
def code_11139 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11140: ((6,2,2)), m=15, a=[1, 2, 8, 8, 10, 11], S=[0, 12]. -/
def code_11140 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11141: ((6,2,2)), m=15, a=[1, 2, 8, 8, 11, 13], S=[0, 3]. -/
def code_11141 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11142: ((6,2,2)), m=15, a=[1, 2, 8, 8, 12, 12], S=[0, 11]. -/
def code_11142 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-13 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11143: ((6,2,2)), m=15, a=[1, 2, 8, 8, 12, 13], S=[0, 11]. -/
def code_11143 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11144: ((6,2,2)), m=15, a=[1, 2, 8, 9, 10, 12], S=[0, 4]. -/
def code_11144 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((3 : ℚ) / 5)]

/-- Catalogue code #11145: ((6,2,2)), m=15, a=[1, 2, 8, 10, 10, 11], S=[0, 9]. -/
def code_11145 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11146: ((6,2,2)), m=15, a=[1, 2, 8, 10, 11, 12], S=[0, 6]. -/
def code_11146 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11147: ((6,2,2)), m=15, a=[1, 2, 8, 10, 11, 12], S=[0, 9]. -/
def code_11147 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11148: ((6,2,2)), m=15, a=[1, 2, 8, 12, 12, 13], S=[0, 11]. -/
def code_11148 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11149: ((6,2,2)), m=15, a=[1, 2, 9, 9, 9, 10], S=[0, 12]. -/
def code_11149 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11150: ((6,2,2)), m=15, a=[1, 2, 9, 9, 9, 11], S=[0, 12]. -/
def code_11150 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11151: ((6,2,2)), m=15, a=[1, 2, 9, 10, 11, 12], S=[0, 7]. -/
def code_11151 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11152: ((6,2,2)), m=15, a=[1, 2, 9, 10, 12, 14], S=[0, 7]. -/
def code_11152 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11153: ((6,2,2)), m=15, a=[1, 2, 10, 10, 11, 12], S=[0, 9]. -/
def code_11153 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11154: ((6,2,2)), m=15, a=[1, 2, 10, 11, 11, 12], S=[0, 8]. -/
def code_11154 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11155: ((6,2,2)), m=15, a=[1, 2, 10, 11, 11, 12], S=[0, 9]. -/
def code_11155 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11156: ((6,2,2)), m=15, a=[1, 2, 10, 11, 12, 12], S=[0, 9]. -/
def code_11156 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (2 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11157: ((6,2,2)), m=15, a=[1, 3, 3, 4, 7, 8], S=[0, 13]. -/
def code_11157 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11158: ((6,2,2)), m=15, a=[1, 3, 3, 4, 8, 8], S=[0, 6]. -/
def code_11158 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11159: ((6,2,2)), m=15, a=[1, 3, 3, 5, 7, 8], S=[0, 13]. -/
def code_11159 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11160: ((6,2,2)), m=15, a=[1, 3, 3, 5, 10, 11], S=[0, 6]. -/
def code_11160 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11161: ((6,2,2)), m=15, a=[1, 3, 3, 7, 7, 10], S=[0, 2]. -/
def code_11161 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11162: ((6,2,2)), m=15, a=[1, 3, 3, 8, 8, 11], S=[0, 2]. -/
def code_11162 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11163: ((6,2,2)), m=15, a=[1, 3, 3, 8, 8, 13], S=[0, 4]. -/
def code_11163 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((13 : ℚ) / 15)]

/-- Catalogue code #11164: ((6,2,2)), m=15, a=[1, 3, 3, 8, 8, 14], S=[0, 2]. -/
def code_11164 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11165: ((6,2,2)), m=15, a=[1, 3, 3, 8, 10, 14], S=[0, 2]. -/
def code_11165 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11166: ((6,2,2)), m=15, a=[1, 3, 3, 8, 10, 14], S=[0, 6]. -/
def code_11166 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11167: ((6,2,2)), m=15, a=[1, 3, 3, 8, 13, 13], S=[0, 4]. -/
def code_11167 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11168: ((6,2,2)), m=15, a=[1, 3, 3, 10, 11, 14], S=[0, 6]. -/
def code_11168 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11169: ((6,2,2)), m=15, a=[1, 3, 3, 10, 12, 14], S=[0, 6]. -/
def code_11169 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11170: ((6,2,2)), m=15, a=[1, 3, 3, 10, 13, 14], S=[0, 7]. -/
def code_11170 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11171: ((6,2,2)), m=15, a=[1, 3, 3, 11, 13, 13], S=[0, 7]. -/
def code_11171 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (3 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11172: ((6,2,2)), m=15, a=[1, 3, 4, 5, 5, 13], S=[0, 9]. -/
def code_11172 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11173: ((6,2,2)), m=15, a=[1, 3, 4, 5, 6, 7], S=[0, 13]. -/
def code_11173 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11174: ((6,2,2)), m=15, a=[1, 3, 4, 5, 6, 8], S=[0, 13]. -/
def code_11174 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11175: ((6,2,2)), m=15, a=[1, 3, 4, 5, 7, 9], S=[0, 13]. -/
def code_11175 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11176: ((6,2,2)), m=15, a=[1, 3, 4, 5, 7, 14], S=[0, 6]. -/
def code_11176 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11177: ((6,2,2)), m=15, a=[1, 3, 4, 5, 7, 14], S=[0, 13]. -/
def code_11177 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11178: ((6,2,2)), m=15, a=[1, 3, 4, 5, 8, 9], S=[0, 2]. -/
def code_11178 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11179: ((6,2,2)), m=15, a=[1, 3, 4, 5, 8, 9], S=[0, 13]. -/
def code_11179 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11180: ((6,2,2)), m=15, a=[1, 3, 4, 5, 8, 12], S=[0, 9]. -/
def code_11180 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11181: ((6,2,2)), m=15, a=[1, 3, 4, 5, 8, 13], S=[0, 9]. -/
def code_11181 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11182: ((6,2,2)), m=15, a=[1, 3, 4, 5, 9, 14], S=[0, 8]. -/
def code_11182 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11183: ((6,2,2)), m=15, a=[1, 3, 4, 5, 9, 14], S=[0, 13]. -/
def code_11183 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11184: ((6,2,2)), m=15, a=[1, 3, 4, 6, 7, 10], S=[0, 2]. -/
def code_11184 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11185: ((6,2,2)), m=15, a=[1, 3, 4, 6, 8, 10], S=[0, 13]. -/
def code_11185 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11186: ((6,2,2)), m=15, a=[1, 3, 4, 6, 8, 11], S=[0, 13]. -/
def code_11186 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11187: ((6,2,2)), m=15, a=[1, 3, 4, 6, 10, 11], S=[0, 7]. -/
def code_11187 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11188: ((6,2,2)), m=15, a=[1, 3, 4, 6, 10, 11], S=[0, 13]. -/
def code_11188 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11189: ((6,2,2)), m=15, a=[1, 3, 4, 6, 10, 13], S=[0, 8]. -/
def code_11189 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #11190: ((6,2,2)), m=15, a=[1, 3, 4, 7, 7, 12], S=[0, 2]. -/
def code_11190 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11191: ((6,2,2)), m=15, a=[1, 3, 4, 7, 9, 10], S=[0, 2]. -/
def code_11191 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11192: ((6,2,2)), m=15, a=[1, 3, 4, 7, 9, 14], S=[0, 13]. -/
def code_11192 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11193: ((6,2,2)), m=15, a=[1, 3, 4, 7, 10, 13], S=[0, 6]. -/
def code_11193 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11194: ((6,2,2)), m=15, a=[1, 3, 4, 7, 10, 13], S=[0, 9]. -/
def code_11194 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11195: ((6,2,2)), m=15, a=[1, 3, 4, 7, 13, 13], S=[0, 6]. -/
def code_11195 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11196: ((6,2,2)), m=15, a=[1, 3, 4, 8, 8, 10], S=[0, 2]. -/
def code_11196 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11197: ((6,2,2)), m=15, a=[1, 3, 4, 8, 10, 11], S=[0, 13]. -/
def code_11197 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #11198: ((6,2,2)), m=15, a=[1, 3, 4, 10, 13, 13], S=[0, 6]. -/
def code_11198 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11199: ((6,2,2)), m=15, a=[1, 3, 4, 10, 13, 13], S=[0, 7]. -/
def code_11199 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11200: ((6,2,2)), m=15, a=[1, 3, 4, 12, 13, 13], S=[0, 8]. -/
def code_11200 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (4 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11201: ((6,2,2)), m=15, a=[1, 3, 5, 5, 7, 12], S=[0, 9]. -/
def code_11201 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11202: ((6,2,2)), m=15, a=[1, 3, 5, 6, 7, 11], S=[0, 2]. -/
def code_11202 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #11203: ((6,2,2)), m=15, a=[1, 3, 5, 6, 7, 14], S=[0, 2]. -/
def code_11203 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #11204: ((6,2,2)), m=15, a=[1, 3, 5, 6, 8, 11], S=[0, 2]. -/
def code_11204 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11205: ((6,2,2)), m=15, a=[1, 3, 5, 6, 8, 13], S=[0, 4]. -/
def code_11205 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((3 : ℚ) / 5)]

/-- Catalogue code #11206: ((6,2,2)), m=15, a=[1, 3, 5, 6, 11, 13], S=[0, 8]. -/
def code_11206 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11207: ((6,2,2)), m=15, a=[1, 3, 5, 6, 11, 14], S=[0, 2]. -/
def code_11207 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11208: ((6,2,2)), m=15, a=[1, 3, 5, 6, 11, 14], S=[0, 8]. -/
def code_11208 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11209: ((6,2,2)), m=15, a=[1, 3, 5, 6, 13, 13], S=[0, 4]. -/
def code_11209 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11210: ((6,2,2)), m=15, a=[1, 3, 5, 6, 13, 14], S=[0, 8]. -/
def code_11210 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11211: ((6,2,2)), m=15, a=[1, 3, 5, 7, 7, 9], S=[0, 4]. -/
def code_11211 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((13 : ℚ) / 15)]

/-- Catalogue code #11212: ((6,2,2)), m=15, a=[1, 3, 5, 7, 7, 11], S=[0, 2]. -/
def code_11212 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11213: ((6,2,2)), m=15, a=[1, 3, 5, 7, 9, 11], S=[0, 2]. -/
def code_11213 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #11214: ((6,2,2)), m=15, a=[1, 3, 5, 7, 9, 13], S=[0, 4]. -/
def code_11214 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11215: ((6,2,2)), m=15, a=[1, 3, 5, 7, 9, 14], S=[0, 13]. -/
def code_11215 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11216: ((6,2,2)), m=15, a=[1, 3, 5, 7, 11, 11], S=[0, 2]. -/
def code_11216 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5)]

/-- Catalogue code #11217: ((6,2,2)), m=15, a=[1, 3, 5, 7, 11, 13], S=[0, 9]. -/
def code_11217 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11218: ((6,2,2)), m=15, a=[1, 3, 5, 7, 11, 14], S=[0, 2]. -/
def code_11218 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11219: ((6,2,2)), m=15, a=[1, 3, 5, 7, 11, 14], S=[0, 9]. -/
def code_11219 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11220: ((6,2,2)), m=15, a=[1, 3, 5, 7, 13, 14], S=[0, 9]. -/
def code_11220 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11221: ((6,2,2)), m=15, a=[1, 3, 5, 8, 9, 13], S=[0, 11]. -/
def code_11221 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11222: ((6,2,2)), m=15, a=[1, 3, 5, 8, 11, 13], S=[0, 9]. -/
def code_11222 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11223: ((6,2,2)), m=15, a=[1, 3, 5, 8, 12, 13], S=[0, 6]. -/
def code_11223 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11224: ((6,2,2)), m=15, a=[1, 3, 5, 8, 13, 13], S=[0, 4]. -/
def code_11224 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11225: ((6,2,2)), m=15, a=[1, 3, 5, 8, 13, 13], S=[0, 9]. -/
def code_11225 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11226: ((6,2,2)), m=15, a=[1, 3, 5, 9, 11, 11], S=[0, 2]. -/
def code_11226 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11227: ((6,2,2)), m=15, a=[1, 3, 5, 9, 11, 11], S=[0, 8]. -/
def code_11227 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11228: ((6,2,2)), m=15, a=[1, 3, 5, 9, 11, 13], S=[0, 8]. -/
def code_11228 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11229: ((6,2,2)), m=15, a=[1, 3, 5, 10, 11, 12], S=[0, 9]. -/
def code_11229 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11230: ((6,2,2)), m=15, a=[1, 3, 5, 11, 11, 13], S=[0, 8]. -/
def code_11230 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #11231: ((6,2,2)), m=15, a=[1, 3, 5, 11, 12, 13], S=[0, 6]. -/
def code_11231 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11232: ((6,2,2)), m=15, a=[1, 3, 5, 11, 13, 13], S=[0, 8]. -/
def code_11232 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11233: ((6,2,2)), m=15, a=[1, 3, 5, 11, 13, 14], S=[0, 8]. -/
def code_11233 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #11234: ((6,2,2)), m=15, a=[1, 3, 5, 11, 13, 14], S=[0, 9]. -/
def code_11234 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11235: ((6,2,2)), m=15, a=[1, 3, 5, 12, 13, 14], S=[0, 9]. -/
def code_11235 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11236: ((6,2,2)), m=15, a=[1, 3, 6, 7, 11, 14], S=[0, 2]. -/
def code_11236 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11237: ((6,2,2)), m=15, a=[1, 3, 6, 8, 8, 10], S=[0, 4]. -/
def code_11237 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11238: ((6,2,2)), m=15, a=[1, 3, 6, 8, 8, 13], S=[0, 4]. -/
def code_11238 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11239: ((6,2,2)), m=15, a=[1, 3, 6, 8, 10, 11], S=[0, 13]. -/
def code_11239 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-7 : ℚ) / 15)]

/-- Catalogue code #11240: ((6,2,2)), m=15, a=[1, 3, 6, 8, 10, 13], S=[0, 4]. -/
def code_11240 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11241: ((6,2,2)), m=15, a=[1, 3, 6, 8, 13, 13], S=[0, 4]. -/
def code_11241 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11242: ((6,2,2)), m=15, a=[1, 3, 6, 10, 11, 13], S=[0, 7]. -/
def code_11242 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11243: ((6,2,2)), m=15, a=[1, 3, 6, 11, 13, 14], S=[0, 8]. -/
def code_11243 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11244: ((6,2,2)), m=15, a=[1, 3, 7, 7, 11, 12], S=[0, 13]. -/
def code_11244 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11245: ((6,2,2)), m=15, a=[1, 3, 7, 7, 12, 13], S=[0, 11]. -/
def code_11245 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((13 : ℚ) / 15)]

/-- Catalogue code #11246: ((6,2,2)), m=15, a=[1, 3, 7, 7, 13, 13], S=[0, 11]. -/
def code_11246 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11247: ((6,2,2)), m=15, a=[1, 3, 7, 9, 10, 11], S=[0, 13]. -/
def code_11247 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11248: ((6,2,2)), m=15, a=[1, 3, 7, 9, 10, 13], S=[0, 11]. -/
def code_11248 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((3 : ℚ) / 5)]

/-- Catalogue code #11249: ((6,2,2)), m=15, a=[1, 3, 7, 9, 11, 11], S=[0, 2]. -/
def code_11249 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11250: ((6,2,2)), m=15, a=[1, 3, 7, 9, 13, 13], S=[0, 11]. -/
def code_11250 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11251: ((6,2,2)), m=15, a=[1, 3, 7, 10, 13, 13], S=[0, 11]. -/
def code_11251 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11252: ((6,2,2)), m=15, a=[1, 3, 7, 11, 12, 14], S=[0, 9]. -/
def code_11252 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11253: ((6,2,2)), m=15, a=[1, 3, 7, 12, 13, 13], S=[0, 11]. -/
def code_11253 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11254: ((6,2,2)), m=15, a=[1, 3, 8, 8, 9, 10], S=[0, 11]. -/
def code_11254 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11255: ((6,2,2)), m=15, a=[1, 3, 8, 8, 10, 11], S=[0, 13]. -/
def code_11255 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11256: ((6,2,2)), m=15, a=[1, 3, 8, 8, 10, 12], S=[0, 13]. -/
def code_11256 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11257: ((6,2,2)), m=15, a=[1, 3, 8, 8, 10, 13], S=[0, 4]. -/
def code_11257 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((13 : ℚ) / 15)]

/-- Catalogue code #11258: ((6,2,2)), m=15, a=[1, 3, 8, 8, 10, 13], S=[0, 9]. -/
def code_11258 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11259: ((6,2,2)), m=15, a=[1, 3, 8, 8, 10, 14], S=[0, 2]. -/
def code_11259 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11260: ((6,2,2)), m=15, a=[1, 3, 8, 9, 10, 11], S=[0, 13]. -/
def code_11260 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11261: ((6,2,2)), m=15, a=[1, 3, 8, 10, 11, 12], S=[0, 6]. -/
def code_11261 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11262: ((6,2,2)), m=15, a=[1, 3, 8, 10, 11, 12], S=[0, 9]. -/
def code_11262 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11263: ((6,2,2)), m=15, a=[1, 3, 8, 10, 11, 13], S=[0, 6]. -/
def code_11263 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11264: ((6,2,2)), m=15, a=[1, 3, 8, 10, 11, 13], S=[0, 9]. -/
def code_11264 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11265: ((6,2,2)), m=15, a=[1, 3, 8, 10, 12, 14], S=[0, 6]. -/
def code_11265 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11266: ((6,2,2)), m=15, a=[1, 3, 8, 11, 13, 13], S=[0, 9]. -/
def code_11266 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11267: ((6,2,2)), m=15, a=[1, 3, 9, 10, 13, 13], S=[0, 11]. -/
def code_11267 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11268: ((6,2,2)), m=15, a=[1, 3, 9, 11, 11, 13], S=[0, 8]. -/
def code_11268 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11269: ((6,2,2)), m=15, a=[1, 3, 10, 11, 11, 12], S=[0, 9]. -/
def code_11269 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11270: ((6,2,2)), m=15, a=[1, 3, 10, 11, 12, 12], S=[0, 9]. -/
def code_11270 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11271: ((6,2,2)), m=15, a=[1, 4, 4, 5, 8, 9], S=[0, 3]. -/
def code_11271 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11272: ((6,2,2)), m=15, a=[1, 4, 4, 5, 8, 9], S=[0, 13]. -/
def code_11272 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11273: ((6,2,2)), m=15, a=[1, 4, 4, 5, 8, 12], S=[0, 13]. -/
def code_11273 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11274: ((6,2,2)), m=15, a=[1, 4, 4, 5, 8, 13], S=[0, 6]. -/
def code_11274 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11275: ((6,2,2)), m=15, a=[1, 4, 4, 5, 9, 12], S=[0, 7]. -/
def code_11275 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11276: ((6,2,2)), m=15, a=[1, 4, 4, 5, 9, 12], S=[0, 13]. -/
def code_11276 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11277: ((6,2,2)), m=15, a=[1, 4, 4, 6, 6, 8], S=[0, 13]. -/
def code_11277 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11278: ((6,2,2)), m=15, a=[1, 4, 4, 6, 6, 10], S=[0, 8]. -/
def code_11278 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11279: ((6,2,2)), m=15, a=[1, 4, 4, 6, 6, 14], S=[0, 13]. -/
def code_11279 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11280: ((6,2,2)), m=15, a=[1, 4, 4, 6, 7, 9], S=[0, 2]. -/
def code_11280 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11281: ((6,2,2)), m=15, a=[1, 4, 4, 6, 8, 14], S=[0, 13]. -/
def code_11281 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11282: ((6,2,2)), m=15, a=[1, 4, 4, 6, 9, 13], S=[0, 8]. -/
def code_11282 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11283: ((6,2,2)), m=15, a=[1, 4, 4, 7, 7, 10], S=[0, 9]. -/
def code_11283 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11284: ((6,2,2)), m=15, a=[1, 4, 4, 7, 9, 10], S=[0, 2]. -/
def code_11284 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11285: ((6,2,2)), m=15, a=[1, 4, 4, 7, 9, 12], S=[0, 2]. -/
def code_11285 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11286: ((6,2,2)), m=15, a=[1, 4, 4, 7, 9, 13], S=[0, 3]. -/
def code_11286 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11287: ((6,2,2)), m=15, a=[1, 4, 4, 7, 10, 12], S=[0, 2]. -/
def code_11287 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11288: ((6,2,2)), m=15, a=[1, 4, 4, 8, 10, 13], S=[0, 9]. -/
def code_11288 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11289: ((6,2,2)), m=15, a=[1, 4, 4, 8, 10, 14], S=[0, 9]. -/
def code_11289 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11290: ((6,2,2)), m=15, a=[1, 4, 4, 8, 13, 14], S=[0, 9]. -/
def code_11290 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11291: ((6,2,2)), m=15, a=[1, 4, 4, 9, 10, 12], S=[0, 2]. -/
def code_11291 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11292: ((6,2,2)), m=15, a=[1, 4, 4, 9, 10, 12], S=[0, 8]. -/
def code_11292 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11293: ((6,2,2)), m=15, a=[1, 4, 4, 9, 10, 13], S=[0, 3]. -/
def code_11293 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11294: ((6,2,2)), m=15, a=[1, 4, 4, 9, 10, 13], S=[0, 8]. -/
def code_11294 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11295: ((6,2,2)), m=15, a=[1, 4, 4, 9, 12, 13], S=[0, 8]. -/
def code_11295 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11296: ((6,2,2)), m=15, a=[1, 4, 4, 10, 12, 13], S=[0, 6]. -/
def code_11296 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11297: ((6,2,2)), m=15, a=[1, 4, 4, 10, 12, 13], S=[0, 8]. -/
def code_11297 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #11298: ((6,2,2)), m=15, a=[1, 4, 4, 10, 13, 14], S=[0, 9]. -/
def code_11298 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (4 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11299: ((6,2,2)), m=15, a=[1, 4, 5, 5, 12, 12], S=[0, 6]. -/
def code_11299 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11300: ((6,2,2)), m=15, a=[1, 4, 5, 6, 6, 8], S=[0, 12]. -/
def code_11300 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11301: ((6,2,2)), m=15, a=[1, 4, 5, 6, 8, 11], S=[0, 2]. -/
def code_11301 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11302: ((6,2,2)), m=15, a=[1, 4, 5, 6, 8, 11], S=[0, 3]. -/
def code_11302 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11303: ((6,2,2)), m=15, a=[1, 4, 5, 6, 8, 12], S=[0, 2]. -/
def code_11303 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 3), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11304: ((6,2,2)), m=15, a=[1, 4, 5, 6, 11, 12], S=[0, 2]. -/
def code_11304 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 3), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11305: ((6,2,2)), m=15, a=[1, 4, 5, 6, 11, 12], S=[0, 7]. -/
def code_11305 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11306: ((6,2,2)), m=15, a=[1, 4, 5, 6, 11, 13], S=[0, 3]. -/
def code_11306 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11307: ((6,2,2)), m=15, a=[1, 4, 5, 6, 11, 13], S=[0, 7]. -/
def code_11307 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11308: ((6,2,2)), m=15, a=[1, 4, 5, 6, 12, 13], S=[0, 7]. -/
def code_11308 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11309: ((6,2,2)), m=15, a=[1, 4, 5, 7, 9, 14], S=[0, 12]. -/
def code_11309 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11310: ((6,2,2)), m=15, a=[1, 4, 5, 7, 9, 14], S=[0, 13]. -/
def code_11310 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11311: ((6,2,2)), m=15, a=[1, 4, 5, 8, 8, 9], S=[0, 3]. -/
def code_11311 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11312: ((6,2,2)), m=15, a=[1, 4, 5, 8, 8, 13], S=[0, 6]. -/
def code_11312 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11313: ((6,2,2)), m=15, a=[1, 4, 5, 8, 9, 12], S=[0, 13]. -/
def code_11313 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11314: ((6,2,2)), m=15, a=[1, 4, 5, 8, 9, 13], S=[0, 3]. -/
def code_11314 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11315: ((6,2,2)), m=15, a=[1, 4, 5, 8, 9, 13], S=[0, 12]. -/
def code_11315 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11316: ((6,2,2)), m=15, a=[1, 4, 5, 8, 11, 12], S=[0, 2]. -/
def code_11316 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11317: ((6,2,2)), m=15, a=[1, 4, 5, 8, 11, 13], S=[0, 9]. -/
def code_11317 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11318: ((6,2,2)), m=15, a=[1, 4, 5, 8, 12, 12], S=[0, 6]. -/
def code_11318 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11319: ((6,2,2)), m=15, a=[1, 4, 5, 8, 12, 13], S=[0, 6]. -/
def code_11319 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11320: ((6,2,2)), m=15, a=[1, 4, 5, 8, 12, 13], S=[0, 9]. -/
def code_11320 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11321: ((6,2,2)), m=15, a=[1, 4, 5, 9, 12, 13], S=[0, 7]. -/
def code_11321 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11322: ((6,2,2)), m=15, a=[1, 4, 5, 11, 12, 13], S=[0, 7]. -/
def code_11322 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15)]

/-- Catalogue code #11323: ((6,2,2)), m=15, a=[1, 4, 5, 11, 12, 13], S=[0, 9]. -/
def code_11323 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11324: ((6,2,2)), m=15, a=[1, 4, 5, 12, 12, 12], S=[0, 6]. -/
def code_11324 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11325: ((6,2,2)), m=15, a=[1, 4, 6, 6, 8, 11], S=[0, 12]. -/
def code_11325 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11326: ((6,2,2)), m=15, a=[1, 4, 6, 6, 8, 14], S=[0, 13]. -/
def code_11326 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11327: ((6,2,2)), m=15, a=[1, 4, 6, 6, 9, 14], S=[0, 12]. -/
def code_11327 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11328: ((6,2,2)), m=15, a=[1, 4, 6, 6, 10, 14], S=[0, 13]. -/
def code_11328 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11329: ((6,2,2)), m=15, a=[1, 4, 6, 7, 7, 10], S=[0, 3]. -/
def code_11329 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11330: ((6,2,2)), m=15, a=[1, 4, 6, 7, 10, 13], S=[0, 3]. -/
def code_11330 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11331: ((6,2,2)), m=15, a=[1, 4, 6, 8, 9, 11], S=[0, 3]. -/
def code_11331 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11332: ((6,2,2)), m=15, a=[1, 4, 6, 8, 10, 11], S=[0, 13]. -/
def code_11332 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11333: ((6,2,2)), m=15, a=[1, 4, 6, 8, 10, 12], S=[0, 13]. -/
def code_11333 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11334: ((6,2,2)), m=15, a=[1, 4, 6, 8, 11, 12], S=[0, 2]. -/
def code_11334 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11335: ((6,2,2)), m=15, a=[1, 4, 6, 10, 12, 13], S=[0, 8]. -/
def code_11335 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11336: ((6,2,2)), m=15, a=[1, 4, 6, 11, 12, 13], S=[0, 7]. -/
def code_11336 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11337: ((6,2,2)), m=15, a=[1, 4, 7, 7, 10, 12], S=[0, 9]. -/
def code_11337 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11338: ((6,2,2)), m=15, a=[1, 4, 7, 7, 10, 12], S=[0, 13]. -/
def code_11338 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11339: ((6,2,2)), m=15, a=[1, 4, 7, 7, 12, 13], S=[0, 9]. -/
def code_11339 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11340: ((6,2,2)), m=15, a=[1, 4, 7, 7, 13, 13], S=[0, 3]. -/
def code_11340 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11341: ((6,2,2)), m=15, a=[1, 4, 7, 9, 10, 12], S=[0, 2]. -/
def code_11341 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11342: ((6,2,2)), m=15, a=[1, 4, 7, 9, 10, 13], S=[0, 3]. -/
def code_11342 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11343: ((6,2,2)), m=15, a=[1, 4, 7, 10, 12, 13], S=[0, 9]. -/
def code_11343 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11344: ((6,2,2)), m=15, a=[1, 4, 7, 10, 13, 13], S=[0, 6]. -/
def code_11344 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11345: ((6,2,2)), m=15, a=[1, 4, 8, 8, 9, 9], S=[0, 12]. -/
def code_11345 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11346: ((6,2,2)), m=15, a=[1, 4, 8, 8, 10, 13], S=[0, 12]. -/
def code_11346 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11347: ((6,2,2)), m=15, a=[1, 4, 8, 8, 12, 12], S=[0, 2]. -/
def code_11347 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11348: ((6,2,2)), m=15, a=[1, 4, 8, 8, 12, 12], S=[0, 9]. -/
def code_11348 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11349: ((6,2,2)), m=15, a=[1, 4, 8, 8, 12, 12], S=[0, 13]. -/
def code_11349 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11350: ((6,2,2)), m=15, a=[1, 4, 8, 8, 12, 13], S=[0, 6]. -/
def code_11350 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11351: ((6,2,2)), m=15, a=[1, 4, 8, 8, 13, 13], S=[0, 12]. -/
def code_11351 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11352: ((6,2,2)), m=15, a=[1, 4, 8, 9, 9, 11], S=[0, 13]. -/
def code_11352 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11353: ((6,2,2)), m=15, a=[1, 4, 8, 9, 10, 12], S=[0, 13]. -/
def code_11353 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11354: ((6,2,2)), m=15, a=[1, 4, 8, 9, 10, 14], S=[0, 3]. -/
def code_11354 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11355: ((6,2,2)), m=15, a=[1, 4, 8, 9, 10, 14], S=[0, 13]. -/
def code_11355 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11356: ((6,2,2)), m=15, a=[1, 4, 8, 9, 12, 14], S=[0, 13]. -/
def code_11356 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11357: ((6,2,2)), m=15, a=[1, 4, 8, 10, 12, 14], S=[0, 6]. -/
def code_11357 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11358: ((6,2,2)), m=15, a=[1, 4, 8, 10, 12, 14], S=[0, 13]. -/
def code_11358 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11359: ((6,2,2)), m=15, a=[1, 4, 8, 10, 13, 13], S=[0, 12]. -/
def code_11359 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11360: ((6,2,2)), m=15, a=[1, 4, 8, 10, 13, 14], S=[0, 9]. -/
def code_11360 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11361: ((6,2,2)), m=15, a=[1, 4, 8, 11, 12, 13], S=[0, 9]. -/
def code_11361 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11362: ((6,2,2)), m=15, a=[1, 4, 9, 9, 10, 11], S=[0, 7]. -/
def code_11362 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11363: ((6,2,2)), m=15, a=[1, 4, 9, 10, 12, 13], S=[0, 8]. -/
def code_11363 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11364: ((6,2,2)), m=15, a=[1, 4, 9, 10, 12, 14], S=[0, 7]. -/
def code_11364 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11365: ((6,2,2)), m=15, a=[1, 4, 9, 10, 12, 14], S=[0, 13]. -/
def code_11365 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11366: ((6,2,2)), m=15, a=[1, 5, 5, 6, 7, 13], S=[0, 3]. -/
def code_11366 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11367: ((6,2,2)), m=15, a=[1, 5, 5, 7, 11, 12], S=[0, 9]. -/
def code_11367 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11368: ((6,2,2)), m=15, a=[1, 5, 6, 7, 8, 12], S=[0, 11]. -/
def code_11368 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11369: ((6,2,2)), m=15, a=[1, 5, 6, 7, 9, 11], S=[0, 12]. -/
def code_11369 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11370: ((6,2,2)), m=15, a=[1, 5, 6, 7, 10, 11], S=[0, 12]. -/
def code_11370 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11371: ((6,2,2)), m=15, a=[1, 5, 6, 7, 11, 12], S=[0, 13]. -/
def code_11371 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11372: ((6,2,2)), m=15, a=[1, 5, 6, 7, 11, 14], S=[0, 2]. -/
def code_11372 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11373: ((6,2,2)), m=15, a=[1, 5, 6, 8, 8, 9], S=[0, 11]. -/
def code_11373 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11374: ((6,2,2)), m=15, a=[1, 5, 6, 8, 11, 12], S=[0, 2]. -/
def code_11374 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #11375: ((6,2,2)), m=15, a=[1, 5, 6, 8, 11, 13], S=[0, 3]. -/
def code_11375 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11376: ((6,2,2)), m=15, a=[1, 5, 6, 8, 11, 13], S=[0, 12]. -/
def code_11376 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11377: ((6,2,2)), m=15, a=[1, 5, 6, 8, 12, 13], S=[0, 4]. -/
def code_11377 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11378: ((6,2,2)), m=15, a=[1, 5, 6, 8, 13, 13], S=[0, 4]. -/
def code_11378 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11379: ((6,2,2)), m=15, a=[1, 5, 6, 9, 11, 13], S=[0, 12]. -/
def code_11379 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11380: ((6,2,2)), m=15, a=[1, 5, 6, 11, 12, 13], S=[0, 7]. -/
def code_11380 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11381: ((6,2,2)), m=15, a=[1, 5, 6, 11, 13, 14], S=[0, 8]. -/
def code_11381 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11382: ((6,2,2)), m=15, a=[1, 5, 7, 7, 9, 9], S=[0, 4]. -/
def code_11382 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11383: ((6,2,2)), m=15, a=[1, 5, 7, 7, 11, 13], S=[0, 12]. -/
def code_11383 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11384: ((6,2,2)), m=15, a=[1, 5, 7, 7, 12, 12], S=[0, 13]. -/
def code_11384 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11385: ((6,2,2)), m=15, a=[1, 5, 7, 7, 12, 14], S=[0, 13]. -/
def code_11385 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11386: ((6,2,2)), m=15, a=[1, 5, 7, 7, 13, 13], S=[0, 12]. -/
def code_11386 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11387: ((6,2,2)), m=15, a=[1, 5, 7, 9, 11, 11], S=[0, 2]. -/
def code_11387 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11388: ((6,2,2)), m=15, a=[1, 5, 7, 9, 11, 11], S=[0, 12]. -/
def code_11388 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11389: ((6,2,2)), m=15, a=[1, 5, 7, 9, 11, 12], S=[0, 2]. -/
def code_11389 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11390: ((6,2,2)), m=15, a=[1, 5, 7, 9, 11, 12], S=[0, 13]. -/
def code_11390 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11391: ((6,2,2)), m=15, a=[1, 5, 7, 9, 11, 13], S=[0, 3]. -/
def code_11391 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11392: ((6,2,2)), m=15, a=[1, 5, 7, 9, 11, 13], S=[0, 12]. -/
def code_11392 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11393: ((6,2,2)), m=15, a=[1, 5, 7, 9, 12, 13], S=[0, 4]. -/
def code_11393 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-3 : ℚ) / 5)]

/-- Catalogue code #11394: ((6,2,2)), m=15, a=[1, 5, 7, 11, 11, 14], S=[0, 6]. -/
def code_11394 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11395: ((6,2,2)), m=15, a=[1, 5, 7, 11, 12, 13], S=[0, 9]. -/
def code_11395 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11396: ((6,2,2)), m=15, a=[1, 5, 7, 11, 13, 13], S=[0, 12]. -/
def code_11396 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11397: ((6,2,2)), m=15, a=[1, 5, 7, 12, 12, 14], S=[0, 13]. -/
def code_11397 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11398: ((6,2,2)), m=15, a=[1, 5, 8, 8, 9, 12], S=[0, 11]. -/
def code_11398 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-13 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11399: ((6,2,2)), m=15, a=[1, 5, 8, 8, 9, 13], S=[0, 11]. -/
def code_11399 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11400: ((6,2,2)), m=15, a=[1, 5, 8, 8, 11, 12], S=[0, 2]. -/
def code_11400 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11401: ((6,2,2)), m=15, a=[1, 5, 8, 8, 12, 12], S=[0, 2]. -/
def code_11401 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11402: ((6,2,2)), m=15, a=[1, 5, 8, 8, 12, 13], S=[0, 11]. -/
def code_11402 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-13 : ℚ) / 15)]

/-- Catalogue code #11403: ((6,2,2)), m=15, a=[1, 5, 8, 9, 9, 13], S=[0, 3]. -/
def code_11403 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11404: ((6,2,2)), m=15, a=[1, 5, 8, 9, 10, 11], S=[0, 12]. -/
def code_11404 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11405: ((6,2,2)), m=15, a=[1, 5, 8, 9, 10, 13], S=[0, 12]. -/
def code_11405 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11406: ((6,2,2)), m=15, a=[1, 5, 8, 9, 11, 12], S=[0, 2]. -/
def code_11406 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11407: ((6,2,2)), m=15, a=[1, 5, 8, 9, 11, 13], S=[0, 3]. -/
def code_11407 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #11408: ((6,2,2)), m=15, a=[1, 5, 8, 9, 12, 13], S=[0, 11]. -/
def code_11408 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11409: ((6,2,2)), m=15, a=[1, 5, 8, 10, 11, 13], S=[0, 12]. -/
def code_11409 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11410: ((6,2,2)), m=15, a=[1, 5, 8, 10, 12, 12], S=[0, 9]. -/
def code_11410 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11411: ((6,2,2)), m=15, a=[1, 5, 8, 11, 12, 13], S=[0, 6]. -/
def code_11411 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11412: ((6,2,2)), m=15, a=[1, 5, 8, 11, 12, 13], S=[0, 9]. -/
def code_11412 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11413: ((6,2,2)), m=15, a=[1, 5, 8, 12, 12, 12], S=[0, 6]. -/
def code_11413 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11414: ((6,2,2)), m=15, a=[1, 5, 9, 9, 11, 11], S=[0, 8]. -/
def code_11414 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11415: ((6,2,2)), m=15, a=[1, 5, 9, 9, 11, 14], S=[0, 2]. -/
def code_11415 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11416: ((6,2,2)), m=15, a=[1, 5, 9, 9, 13, 13], S=[0, 4]. -/
def code_11416 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11417: ((6,2,2)), m=15, a=[1, 5, 9, 9, 13, 14], S=[0, 4]. -/
def code_11417 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11418: ((6,2,2)), m=15, a=[1, 5, 9, 10, 11, 13], S=[0, 12]. -/
def code_11418 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11419: ((6,2,2)), m=15, a=[1, 5, 9, 11, 11, 13], S=[0, 8]. -/
def code_11419 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11420: ((6,2,2)), m=15, a=[1, 5, 9, 11, 12, 13], S=[0, 7]. -/
def code_11420 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #11421: ((6,2,2)), m=15, a=[1, 5, 9, 13, 13, 14], S=[0, 4]. -/
def code_11421 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11422: ((6,2,2)), m=15, a=[1, 6, 6, 7, 7, 10], S=[0, 11]. -/
def code_11422 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11423: ((6,2,2)), m=15, a=[1, 6, 6, 7, 11, 11], S=[0, 13]. -/
def code_11423 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11424: ((6,2,2)), m=15, a=[1, 6, 6, 8, 11, 13], S=[0, 3]. -/
def code_11424 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11425: ((6,2,2)), m=15, a=[1, 6, 6, 10, 11, 11], S=[0, 7]. -/
def code_11425 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11426: ((6,2,2)), m=15, a=[1, 6, 7, 7, 10, 12], S=[0, 11]. -/
def code_11426 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11427: ((6,2,2)), m=15, a=[1, 6, 7, 7, 10, 13], S=[0, 11]. -/
def code_11427 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11428: ((6,2,2)), m=15, a=[1, 6, 7, 7, 12, 13], S=[0, 11]. -/
def code_11428 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11429: ((6,2,2)), m=15, a=[1, 6, 7, 10, 11, 11], S=[0, 3]. -/
def code_11429 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11430: ((6,2,2)), m=15, a=[1, 6, 7, 10, 11, 11], S=[0, 13]. -/
def code_11430 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11431: ((6,2,2)), m=15, a=[1, 6, 7, 10, 11, 12], S=[0, 13]. -/
def code_11431 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11432: ((6,2,2)), m=15, a=[1, 6, 7, 10, 12, 13], S=[0, 11]. -/
def code_11432 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((3 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11433: ((6,2,2)), m=15, a=[1, 6, 7, 11, 11, 12], S=[0, 13]. -/
def code_11433 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11434: ((6,2,2)), m=15, a=[1, 6, 8, 8, 10, 11], S=[0, 12]. -/
def code_11434 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11435: ((6,2,2)), m=15, a=[1, 6, 8, 8, 10, 13], S=[0, 4]. -/
def code_11435 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11436: ((6,2,2)), m=15, a=[1, 6, 8, 9, 10, 11], S=[0, 3]. -/
def code_11436 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11437: ((6,2,2)), m=15, a=[1, 6, 8, 9, 10, 11], S=[0, 12]. -/
def code_11437 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11438: ((6,2,2)), m=15, a=[1, 6, 8, 9, 11, 11], S=[0, 2]. -/
def code_11438 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #11439: ((6,2,2)), m=15, a=[1, 6, 8, 10, 10, 11], S=[0, 3]. -/
def code_11439 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11440: ((6,2,2)), m=15, a=[1, 6, 8, 10, 11, 12], S=[0, 2]. -/
def code_11440 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #11441: ((6,2,2)), m=15, a=[1, 6, 8, 10, 11, 13], S=[0, 12]. -/
def code_11441 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11442: ((6,2,2)), m=15, a=[1, 6, 8, 10, 11, 14], S=[0, 2]. -/
def code_11442 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11443: ((6,2,2)), m=15, a=[1, 6, 8, 10, 11, 14], S=[0, 3]. -/
def code_11443 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11444: ((6,2,2)), m=15, a=[1, 6, 8, 10, 12, 14], S=[0, 2]. -/
def code_11444 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11445: ((6,2,2)), m=15, a=[1, 6, 8, 10, 13, 14], S=[0, 3]. -/
def code_11445 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11446: ((6,2,2)), m=15, a=[1, 6, 8, 10, 13, 14], S=[0, 11]. -/
def code_11446 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11447: ((6,2,2)), m=15, a=[1, 6, 8, 11, 12, 14], S=[0, 2]. -/
def code_11447 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11448: ((6,2,2)), m=15, a=[1, 6, 8, 11, 13, 13], S=[0, 12]. -/
def code_11448 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11449: ((6,2,2)), m=15, a=[1, 6, 9, 11, 11, 13], S=[0, 7]. -/
def code_11449 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11450: ((6,2,2)), m=15, a=[1, 6, 10, 11, 11, 12], S=[0, 8]. -/
def code_11450 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11451: ((6,2,2)), m=15, a=[1, 6, 10, 11, 11, 12], S=[0, 13]. -/
def code_11451 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11452: ((6,2,2)), m=15, a=[1, 6, 10, 11, 12, 13], S=[0, 7]. -/
def code_11452 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11453: ((6,2,2)), m=15, a=[1, 6, 10, 11, 12, 14], S=[0, 2]. -/
def code_11453 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11454: ((6,2,2)), m=15, a=[1, 6, 10, 11, 12, 14], S=[0, 7]. -/
def code_11454 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #11455: ((6,2,2)), m=15, a=[1, 6, 10, 11, 13, 14], S=[0, 3]. -/
def code_11455 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11456: ((6,2,2)), m=15, a=[1, 6, 10, 11, 13, 14], S=[0, 7]. -/
def code_11456 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11457: ((6,2,2)), m=15, a=[1, 6, 10, 12, 13, 14], S=[0, 7]. -/
def code_11457 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11458: ((6,2,2)), m=15, a=[1, 6, 11, 12, 13, 14], S=[0, 7]. -/
def code_11458 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11459: ((6,2,2)), m=15, a=[1, 7, 7, 10, 12, 13], S=[0, 11]. -/
def code_11459 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15)]

/-- Catalogue code #11460: ((6,2,2)), m=15, a=[1, 7, 7, 11, 13, 13], S=[0, 12]. -/
def code_11460 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11461: ((6,2,2)), m=15, a=[1, 7, 7, 12, 12, 14], S=[0, 13]. -/
def code_11461 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11462: ((6,2,2)), m=15, a=[1, 7, 7, 12, 13, 13], S=[0, 11]. -/
def code_11462 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11463: ((6,2,2)), m=15, a=[1, 7, 8, 9, 10, 12], S=[0, 4]. -/
def code_11463 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11464: ((6,2,2)), m=15, a=[1, 7, 8, 10, 11, 12], S=[0, 2]. -/
def code_11464 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11465: ((6,2,2)), m=15, a=[1, 7, 8, 10, 11, 12], S=[0, 6]. -/
def code_11465 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11466: ((6,2,2)), m=15, a=[1, 7, 8, 10, 11, 13], S=[0, 3]. -/
def code_11466 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11467: ((6,2,2)), m=15, a=[1, 7, 8, 10, 13, 13], S=[0, 3]. -/
def code_11467 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11468: ((6,2,2)), m=15, a=[1, 7, 9, 9, 9, 11], S=[0, 12]. -/
def code_11468 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11469: ((6,2,2)), m=15, a=[1, 7, 9, 9, 11, 11], S=[0, 2]. -/
def code_11469 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11470: ((6,2,2)), m=15, a=[1, 7, 9, 9, 11, 14], S=[0, 2]. -/
def code_11470 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #11471: ((6,2,2)), m=15, a=[1, 7, 9, 9, 13, 14], S=[0, 4]. -/
def code_11471 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11472: ((6,2,2)), m=15, a=[1, 7, 9, 10, 12, 13], S=[0, 11]. -/
def code_11472 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11473: ((6,2,2)), m=15, a=[1, 7, 9, 10, 13, 13], S=[0, 11]. -/
def code_11473 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11474: ((6,2,2)), m=15, a=[1, 7, 9, 10, 13, 13], S=[0, 12]. -/
def code_11474 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11475: ((6,2,2)), m=15, a=[1, 7, 9, 11, 11, 14], S=[0, 2]. -/
def code_11475 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11476: ((6,2,2)), m=15, a=[1, 7, 10, 11, 11, 12], S=[0, 13]. -/
def code_11476 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11477: ((6,2,2)), m=15, a=[1, 7, 10, 11, 11, 13], S=[0, 9]. -/
def code_11477 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11478: ((6,2,2)), m=15, a=[1, 7, 11, 11, 13, 14], S=[0, 6]. -/
def code_11478 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11479: ((6,2,2)), m=15, a=[1, 8, 8, 9, 9, 10], S=[0, 4]. -/
def code_11479 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11480: ((6,2,2)), m=15, a=[1, 8, 8, 9, 9, 10], S=[0, 11]. -/
def code_11480 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11481: ((6,2,2)), m=15, a=[1, 8, 8, 9, 12, 13], S=[0, 11]. -/
def code_11481 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #11482: ((6,2,2)), m=15, a=[1, 8, 8, 11, 13, 13], S=[0, 12]. -/
def code_11482 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11483: ((6,2,2)), m=15, a=[1, 8, 8, 12, 12, 13], S=[0, 11]. -/
def code_11483 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-13 : ℚ) / 15)]

/-- Catalogue code #11484: ((6,2,2)), m=15, a=[1, 8, 9, 10, 11, 11], S=[0, 2]. -/
def code_11484 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #11485: ((6,2,2)), m=15, a=[1, 8, 9, 10, 11, 12], S=[0, 2]. -/
def code_11485 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #11486: ((6,2,2)), m=15, a=[1, 8, 9, 10, 12, 14], S=[0, 13]. -/
def code_11486 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #11487: ((6,2,2)), m=15, a=[1, 8, 9, 11, 11, 12], S=[0, 2]. -/
def code_11487 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #11488: ((6,2,2)), m=15, a=[1, 8, 10, 11, 11, 12], S=[0, 2]. -/
def code_11488 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #11489: ((6,2,2)), m=15, a=[1, 8, 10, 11, 11, 13], S=[0, 3]. -/
def code_11489 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #11490: ((6,2,2)), m=15, a=[1, 8, 10, 11, 12, 14], S=[0, 2]. -/
def code_11490 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #11491: ((6,2,2)), m=15, a=[1, 9, 9, 10, 13, 13], S=[0, 11]. -/
def code_11491 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #11492: ((6,2,2)), m=15, a=[1, 9, 9, 11, 11, 14], S=[0, 2]. -/
def code_11492 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
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
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11493: ((6,2,2)), m=15, a=[1, 9, 9, 11, 13, 14], S=[0, 8]. -/
def code_11493 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #11494: ((6,2,2)), m=15, a=[1, 9, 9, 13, 13, 14], S=[0, 4]. -/
def code_11494 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11495: ((6,2,2)), m=15, a=[1, 9, 10, 11, 11, 12], S=[0, 2]. -/
def code_11495 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #11496: ((6,2,2)), m=15, a=[1, 9, 10, 11, 11, 13], S=[0, 7]. -/
def code_11496 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #11497: ((6,2,2)), m=15, a=[1, 9, 10, 11, 12, 13], S=[0, 7]. -/
def code_11497 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11498: ((6,2,2)), m=15, a=[1, 9, 11, 11, 12, 13], S=[0, 7]. -/
def code_11498 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #11499: ((6,2,2)), m=15, a=[1, 9, 11, 11, 13, 14], S=[0, 8]. -/
def code_11499 : ExampleData 6 15 2 where
  a := ![(1 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5)]
def checks : List Bool :=
  [decide code_11000.OK,
   decide code_11001.OK,
   decide code_11002.OK,
   decide code_11003.OK,
   decide code_11004.OK,
   decide code_11005.OK,
   decide code_11006.OK,
   decide code_11007.OK,
   decide code_11008.OK,
   decide code_11009.OK,
   decide code_11010.OK,
   decide code_11011.OK,
   decide code_11012.OK,
   decide code_11013.OK,
   decide code_11014.OK,
   decide code_11015.OK,
   decide code_11016.OK,
   decide code_11017.OK,
   decide code_11018.OK,
   decide code_11019.OK,
   decide code_11020.OK,
   decide code_11021.OK,
   decide code_11022.OK,
   decide code_11023.OK,
   decide code_11024.OK,
   decide code_11025.OK,
   decide code_11026.OK,
   decide code_11027.OK,
   decide code_11028.OK,
   decide code_11029.OK,
   decide code_11030.OK,
   decide code_11031.OK,
   decide code_11032.OK,
   decide code_11033.OK,
   decide code_11034.OK,
   decide code_11035.OK,
   decide code_11036.OK,
   decide code_11037.OK,
   decide code_11038.OK,
   decide code_11039.OK,
   decide code_11040.OK,
   decide code_11041.OK,
   decide code_11042.OK,
   decide code_11043.OK,
   decide code_11044.OK,
   decide code_11045.OK,
   decide code_11046.OK,
   decide code_11047.OK,
   decide code_11048.OK,
   decide code_11049.OK,
   decide code_11050.OK,
   decide code_11051.OK,
   decide code_11052.OK,
   decide code_11053.OK,
   decide code_11054.OK,
   decide code_11055.OK,
   decide code_11056.OK,
   decide code_11057.OK,
   decide code_11058.OK,
   decide code_11059.OK,
   decide code_11060.OK,
   decide code_11061.OK,
   decide code_11062.OK,
   decide code_11063.OK,
   decide code_11064.OK,
   decide code_11065.OK,
   decide code_11066.OK,
   decide code_11067.OK,
   decide code_11068.OK,
   decide code_11069.OK,
   decide code_11070.OK,
   decide code_11071.OK,
   decide code_11072.OK,
   decide code_11073.OK,
   decide code_11074.OK,
   decide code_11075.OK,
   decide code_11076.OK,
   decide code_11077.OK,
   decide code_11078.OK,
   decide code_11079.OK,
   decide code_11080.OK,
   decide code_11081.OK,
   decide code_11082.OK,
   decide code_11083.OK,
   decide code_11084.OK,
   decide code_11085.OK,
   decide code_11086.OK,
   decide code_11087.OK,
   decide code_11088.OK,
   decide code_11089.OK,
   decide code_11090.OK,
   decide code_11091.OK,
   decide code_11092.OK,
   decide code_11093.OK,
   decide code_11094.OK,
   decide code_11095.OK,
   decide code_11096.OK,
   decide code_11097.OK,
   decide code_11098.OK,
   decide code_11099.OK,
   decide code_11100.OK,
   decide code_11101.OK,
   decide code_11102.OK,
   decide code_11103.OK,
   decide code_11104.OK,
   decide code_11105.OK,
   decide code_11106.OK,
   decide code_11107.OK,
   decide code_11108.OK,
   decide code_11109.OK,
   decide code_11110.OK,
   decide code_11111.OK,
   decide code_11112.OK,
   decide code_11113.OK,
   decide code_11114.OK,
   decide code_11115.OK,
   decide code_11116.OK,
   decide code_11117.OK,
   decide code_11118.OK,
   decide code_11119.OK,
   decide code_11120.OK,
   decide code_11121.OK,
   decide code_11122.OK,
   decide code_11123.OK,
   decide code_11124.OK,
   decide code_11125.OK,
   decide code_11126.OK,
   decide code_11127.OK,
   decide code_11128.OK,
   decide code_11129.OK,
   decide code_11130.OK,
   decide code_11131.OK,
   decide code_11132.OK,
   decide code_11133.OK,
   decide code_11134.OK,
   decide code_11135.OK,
   decide code_11136.OK,
   decide code_11137.OK,
   decide code_11138.OK,
   decide code_11139.OK,
   decide code_11140.OK,
   decide code_11141.OK,
   decide code_11142.OK,
   decide code_11143.OK,
   decide code_11144.OK,
   decide code_11145.OK,
   decide code_11146.OK,
   decide code_11147.OK,
   decide code_11148.OK,
   decide code_11149.OK,
   decide code_11150.OK,
   decide code_11151.OK,
   decide code_11152.OK,
   decide code_11153.OK,
   decide code_11154.OK,
   decide code_11155.OK,
   decide code_11156.OK,
   decide code_11157.OK,
   decide code_11158.OK,
   decide code_11159.OK,
   decide code_11160.OK,
   decide code_11161.OK,
   decide code_11162.OK,
   decide code_11163.OK,
   decide code_11164.OK,
   decide code_11165.OK,
   decide code_11166.OK,
   decide code_11167.OK,
   decide code_11168.OK,
   decide code_11169.OK,
   decide code_11170.OK,
   decide code_11171.OK,
   decide code_11172.OK,
   decide code_11173.OK,
   decide code_11174.OK,
   decide code_11175.OK,
   decide code_11176.OK,
   decide code_11177.OK,
   decide code_11178.OK,
   decide code_11179.OK,
   decide code_11180.OK,
   decide code_11181.OK,
   decide code_11182.OK,
   decide code_11183.OK,
   decide code_11184.OK,
   decide code_11185.OK,
   decide code_11186.OK,
   decide code_11187.OK,
   decide code_11188.OK,
   decide code_11189.OK,
   decide code_11190.OK,
   decide code_11191.OK,
   decide code_11192.OK,
   decide code_11193.OK,
   decide code_11194.OK,
   decide code_11195.OK,
   decide code_11196.OK,
   decide code_11197.OK,
   decide code_11198.OK,
   decide code_11199.OK,
   decide code_11200.OK,
   decide code_11201.OK,
   decide code_11202.OK,
   decide code_11203.OK,
   decide code_11204.OK,
   decide code_11205.OK,
   decide code_11206.OK,
   decide code_11207.OK,
   decide code_11208.OK,
   decide code_11209.OK,
   decide code_11210.OK,
   decide code_11211.OK,
   decide code_11212.OK,
   decide code_11213.OK,
   decide code_11214.OK,
   decide code_11215.OK,
   decide code_11216.OK,
   decide code_11217.OK,
   decide code_11218.OK,
   decide code_11219.OK,
   decide code_11220.OK,
   decide code_11221.OK,
   decide code_11222.OK,
   decide code_11223.OK,
   decide code_11224.OK,
   decide code_11225.OK,
   decide code_11226.OK,
   decide code_11227.OK,
   decide code_11228.OK,
   decide code_11229.OK,
   decide code_11230.OK,
   decide code_11231.OK,
   decide code_11232.OK,
   decide code_11233.OK,
   decide code_11234.OK,
   decide code_11235.OK,
   decide code_11236.OK,
   decide code_11237.OK,
   decide code_11238.OK,
   decide code_11239.OK,
   decide code_11240.OK,
   decide code_11241.OK,
   decide code_11242.OK,
   decide code_11243.OK,
   decide code_11244.OK,
   decide code_11245.OK,
   decide code_11246.OK,
   decide code_11247.OK,
   decide code_11248.OK,
   decide code_11249.OK,
   decide code_11250.OK,
   decide code_11251.OK,
   decide code_11252.OK,
   decide code_11253.OK,
   decide code_11254.OK,
   decide code_11255.OK,
   decide code_11256.OK,
   decide code_11257.OK,
   decide code_11258.OK,
   decide code_11259.OK,
   decide code_11260.OK,
   decide code_11261.OK,
   decide code_11262.OK,
   decide code_11263.OK,
   decide code_11264.OK,
   decide code_11265.OK,
   decide code_11266.OK,
   decide code_11267.OK,
   decide code_11268.OK,
   decide code_11269.OK,
   decide code_11270.OK,
   decide code_11271.OK,
   decide code_11272.OK,
   decide code_11273.OK,
   decide code_11274.OK,
   decide code_11275.OK,
   decide code_11276.OK,
   decide code_11277.OK,
   decide code_11278.OK,
   decide code_11279.OK,
   decide code_11280.OK,
   decide code_11281.OK,
   decide code_11282.OK,
   decide code_11283.OK,
   decide code_11284.OK,
   decide code_11285.OK,
   decide code_11286.OK,
   decide code_11287.OK,
   decide code_11288.OK,
   decide code_11289.OK,
   decide code_11290.OK,
   decide code_11291.OK,
   decide code_11292.OK,
   decide code_11293.OK,
   decide code_11294.OK,
   decide code_11295.OK,
   decide code_11296.OK,
   decide code_11297.OK,
   decide code_11298.OK,
   decide code_11299.OK,
   decide code_11300.OK,
   decide code_11301.OK,
   decide code_11302.OK,
   decide code_11303.OK,
   decide code_11304.OK,
   decide code_11305.OK,
   decide code_11306.OK,
   decide code_11307.OK,
   decide code_11308.OK,
   decide code_11309.OK,
   decide code_11310.OK,
   decide code_11311.OK,
   decide code_11312.OK,
   decide code_11313.OK,
   decide code_11314.OK,
   decide code_11315.OK,
   decide code_11316.OK,
   decide code_11317.OK,
   decide code_11318.OK,
   decide code_11319.OK,
   decide code_11320.OK,
   decide code_11321.OK,
   decide code_11322.OK,
   decide code_11323.OK,
   decide code_11324.OK,
   decide code_11325.OK,
   decide code_11326.OK,
   decide code_11327.OK,
   decide code_11328.OK,
   decide code_11329.OK,
   decide code_11330.OK,
   decide code_11331.OK,
   decide code_11332.OK,
   decide code_11333.OK,
   decide code_11334.OK,
   decide code_11335.OK,
   decide code_11336.OK,
   decide code_11337.OK,
   decide code_11338.OK,
   decide code_11339.OK,
   decide code_11340.OK,
   decide code_11341.OK,
   decide code_11342.OK,
   decide code_11343.OK,
   decide code_11344.OK,
   decide code_11345.OK,
   decide code_11346.OK,
   decide code_11347.OK,
   decide code_11348.OK,
   decide code_11349.OK,
   decide code_11350.OK,
   decide code_11351.OK,
   decide code_11352.OK,
   decide code_11353.OK,
   decide code_11354.OK,
   decide code_11355.OK,
   decide code_11356.OK,
   decide code_11357.OK,
   decide code_11358.OK,
   decide code_11359.OK,
   decide code_11360.OK,
   decide code_11361.OK,
   decide code_11362.OK,
   decide code_11363.OK,
   decide code_11364.OK,
   decide code_11365.OK,
   decide code_11366.OK,
   decide code_11367.OK,
   decide code_11368.OK,
   decide code_11369.OK,
   decide code_11370.OK,
   decide code_11371.OK,
   decide code_11372.OK,
   decide code_11373.OK,
   decide code_11374.OK,
   decide code_11375.OK,
   decide code_11376.OK,
   decide code_11377.OK,
   decide code_11378.OK,
   decide code_11379.OK,
   decide code_11380.OK,
   decide code_11381.OK,
   decide code_11382.OK,
   decide code_11383.OK,
   decide code_11384.OK,
   decide code_11385.OK,
   decide code_11386.OK,
   decide code_11387.OK,
   decide code_11388.OK,
   decide code_11389.OK,
   decide code_11390.OK,
   decide code_11391.OK,
   decide code_11392.OK,
   decide code_11393.OK,
   decide code_11394.OK,
   decide code_11395.OK,
   decide code_11396.OK,
   decide code_11397.OK,
   decide code_11398.OK,
   decide code_11399.OK,
   decide code_11400.OK,
   decide code_11401.OK,
   decide code_11402.OK,
   decide code_11403.OK,
   decide code_11404.OK,
   decide code_11405.OK,
   decide code_11406.OK,
   decide code_11407.OK,
   decide code_11408.OK,
   decide code_11409.OK,
   decide code_11410.OK,
   decide code_11411.OK,
   decide code_11412.OK,
   decide code_11413.OK,
   decide code_11414.OK,
   decide code_11415.OK,
   decide code_11416.OK,
   decide code_11417.OK,
   decide code_11418.OK,
   decide code_11419.OK,
   decide code_11420.OK,
   decide code_11421.OK,
   decide code_11422.OK,
   decide code_11423.OK,
   decide code_11424.OK,
   decide code_11425.OK,
   decide code_11426.OK,
   decide code_11427.OK,
   decide code_11428.OK,
   decide code_11429.OK,
   decide code_11430.OK,
   decide code_11431.OK,
   decide code_11432.OK,
   decide code_11433.OK,
   decide code_11434.OK,
   decide code_11435.OK,
   decide code_11436.OK,
   decide code_11437.OK,
   decide code_11438.OK,
   decide code_11439.OK,
   decide code_11440.OK,
   decide code_11441.OK,
   decide code_11442.OK,
   decide code_11443.OK,
   decide code_11444.OK,
   decide code_11445.OK,
   decide code_11446.OK,
   decide code_11447.OK,
   decide code_11448.OK,
   decide code_11449.OK,
   decide code_11450.OK,
   decide code_11451.OK,
   decide code_11452.OK,
   decide code_11453.OK,
   decide code_11454.OK,
   decide code_11455.OK,
   decide code_11456.OK,
   decide code_11457.OK,
   decide code_11458.OK,
   decide code_11459.OK,
   decide code_11460.OK,
   decide code_11461.OK,
   decide code_11462.OK,
   decide code_11463.OK,
   decide code_11464.OK,
   decide code_11465.OK,
   decide code_11466.OK,
   decide code_11467.OK,
   decide code_11468.OK,
   decide code_11469.OK,
   decide code_11470.OK,
   decide code_11471.OK,
   decide code_11472.OK,
   decide code_11473.OK,
   decide code_11474.OK,
   decide code_11475.OK,
   decide code_11476.OK,
   decide code_11477.OK,
   decide code_11478.OK,
   decide code_11479.OK,
   decide code_11480.OK,
   decide code_11481.OK,
   decide code_11482.OK,
   decide code_11483.OK,
   decide code_11484.OK,
   decide code_11485.OK,
   decide code_11486.OK,
   decide code_11487.OK,
   decide code_11488.OK,
   decide code_11489.OK,
   decide code_11490.OK,
   decide code_11491.OK,
   decide code_11492.OK,
   decide code_11493.OK,
   decide code_11494.OK,
   decide code_11495.OK,
   decide code_11496.OK,
   decide code_11497.OK,
   decide code_11498.OK,
   decide code_11499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk022
