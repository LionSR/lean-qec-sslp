import SS

namespace Catalogue.Chunk024

open SS SS.Verify

/-- Catalogue code #12000: ((6,2,2)), m=15, a=[3, 6, 7, 7, 10, 11], S=[0, 1]. -/
def code_12000 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12001: ((6,2,2)), m=15, a=[3, 6, 7, 7, 10, 14], S=[0, 4]. -/
def code_12001 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12002: ((6,2,2)), m=15, a=[3, 6, 7, 8, 13, 14], S=[0, 11]. -/
def code_12002 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #12003: ((6,2,2)), m=15, a=[3, 6, 7, 10, 11, 11], S=[0, 2]. -/
def code_12003 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12004: ((6,2,2)), m=15, a=[3, 6, 7, 10, 11, 14], S=[0, 2]. -/
def code_12004 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12005: ((6,2,2)), m=15, a=[3, 6, 7, 10, 13, 14], S=[0, 4]. -/
def code_12005 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12006: ((6,2,2)), m=15, a=[3, 6, 7, 10, 14, 14], S=[0, 13]. -/
def code_12006 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12007: ((6,2,2)), m=15, a=[3, 6, 7, 11, 11, 14], S=[0, 2]. -/
def code_12007 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15)]

/-- Catalogue code #12008: ((6,2,2)), m=15, a=[3, 6, 8, 8, 10, 11], S=[0, 14]. -/
def code_12008 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12009: ((6,2,2)), m=15, a=[3, 6, 8, 8, 10, 13], S=[0, 4]. -/
def code_12009 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12010: ((6,2,2)), m=15, a=[3, 6, 8, 8, 10, 13], S=[0, 14]. -/
def code_12010 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12011: ((6,2,2)), m=15, a=[3, 6, 8, 8, 11, 13], S=[0, 14]. -/
def code_12011 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #12012: ((6,2,2)), m=15, a=[3, 6, 8, 10, 11, 13], S=[0, 14]. -/
def code_12012 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #12013: ((6,2,2)), m=15, a=[3, 6, 8, 10, 13, 14], S=[0, 11]. -/
def code_12013 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-3 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12014: ((6,2,2)), m=15, a=[3, 6, 8, 11, 11, 14], S=[0, 13]. -/
def code_12014 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15)]

/-- Catalogue code #12015: ((6,2,2)), m=15, a=[3, 6, 8, 11, 13, 13], S=[0, 14]. -/
def code_12015 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12016: ((6,2,2)), m=15, a=[3, 6, 10, 11, 11, 13], S=[0, 8]. -/
def code_12016 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #12017: ((6,2,2)), m=15, a=[3, 6, 10, 11, 11, 14], S=[0, 2]. -/
def code_12017 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12018: ((6,2,2)), m=15, a=[3, 6, 10, 11, 11, 14], S=[0, 8]. -/
def code_12018 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12019: ((6,2,2)), m=15, a=[3, 6, 10, 11, 13, 14], S=[0, 8]. -/
def code_12019 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #12020: ((6,2,2)), m=15, a=[3, 6, 11, 11, 13, 14], S=[0, 8]. -/
def code_12020 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #12021: ((6,2,2)), m=15, a=[3, 7, 7, 10, 14, 14], S=[0, 13]. -/
def code_12021 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12022: ((6,2,2)), m=15, a=[3, 7, 7, 12, 13, 13], S=[0, 11]. -/
def code_12022 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12023: ((6,2,2)), m=15, a=[3, 7, 7, 12, 13, 13], S=[0, 14]. -/
def code_12023 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12024: ((6,2,2)), m=15, a=[3, 7, 7, 12, 14, 14], S=[0, 2]. -/
def code_12024 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12025: ((6,2,2)), m=15, a=[3, 7, 8, 9, 10, 11], S=[0, 1]. -/
def code_12025 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12026: ((6,2,2)), m=15, a=[3, 7, 8, 9, 10, 13], S=[0, 1]. -/
def code_12026 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12027: ((6,2,2)), m=15, a=[3, 7, 8, 9, 10, 13], S=[0, 4]. -/
def code_12027 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12028: ((6,2,2)), m=15, a=[3, 7, 8, 9, 10, 14], S=[0, 4]. -/
def code_12028 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12029: ((6,2,2)), m=15, a=[3, 7, 8, 9, 11, 13], S=[0, 1]. -/
def code_12029 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #12030: ((6,2,2)), m=15, a=[3, 7, 8, 9, 13, 14], S=[0, 4]. -/
def code_12030 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15)]

/-- Catalogue code #12031: ((6,2,2)), m=15, a=[3, 7, 8, 10, 11, 13], S=[0, 1]. -/
def code_12031 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #12032: ((6,2,2)), m=15, a=[3, 7, 8, 10, 13, 14], S=[0, 4]. -/
def code_12032 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12033: ((6,2,2)), m=15, a=[3, 7, 8, 10, 13, 14], S=[0, 6]. -/
def code_12033 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12034: ((6,2,2)), m=15, a=[3, 7, 9, 10, 11, 13], S=[0, 1]. -/
def code_12034 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #12035: ((6,2,2)), m=15, a=[3, 7, 9, 10, 11, 14], S=[0, 13]. -/
def code_12035 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12036: ((6,2,2)), m=15, a=[3, 7, 9, 10, 13, 13], S=[0, 11]. -/
def code_12036 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12037: ((6,2,2)), m=15, a=[3, 7, 9, 10, 13, 13], S=[0, 14]. -/
def code_12037 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #12038: ((6,2,2)), m=15, a=[3, 7, 9, 10, 13, 14], S=[0, 4]. -/
def code_12038 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12039: ((6,2,2)), m=15, a=[3, 7, 9, 11, 13, 13], S=[0, 1]. -/
def code_12039 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12040: ((6,2,2)), m=15, a=[3, 7, 9, 13, 13, 14], S=[0, 4]. -/
def code_12040 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12041: ((6,2,2)), m=15, a=[3, 7, 10, 11, 11, 13], S=[0, 9]. -/
def code_12041 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12042: ((6,2,2)), m=15, a=[3, 7, 10, 11, 11, 14], S=[0, 2]. -/
def code_12042 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12043: ((6,2,2)), m=15, a=[3, 7, 10, 11, 12, 14], S=[0, 6]. -/
def code_12043 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12044: ((6,2,2)), m=15, a=[3, 7, 10, 11, 13, 14], S=[0, 6]. -/
def code_12044 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12045: ((6,2,2)), m=15, a=[3, 7, 10, 11, 13, 14], S=[0, 9]. -/
def code_12045 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12046: ((6,2,2)), m=15, a=[3, 7, 11, 12, 13, 14], S=[0, 6]. -/
def code_12046 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12047: ((6,2,2)), m=15, a=[3, 7, 12, 13, 14, 14], S=[0, 9]. -/
def code_12047 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12048: ((6,2,2)), m=15, a=[3, 8, 8, 11, 12, 14], S=[0, 13]. -/
def code_12048 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12049: ((6,2,2)), m=15, a=[3, 8, 8, 11, 13, 13], S=[0, 14]. -/
def code_12049 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12050: ((6,2,2)), m=15, a=[3, 8, 8, 12, 13, 13], S=[0, 11]. -/
def code_12050 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12051: ((6,2,2)), m=15, a=[3, 8, 8, 12, 13, 14], S=[0, 11]. -/
def code_12051 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12052: ((6,2,2)), m=15, a=[3, 8, 8, 13, 13, 14], S=[0, 11]. -/
def code_12052 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #12053: ((6,2,2)), m=15, a=[3, 8, 9, 10, 11, 13], S=[0, 1]. -/
def code_12053 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #12054: ((6,2,2)), m=15, a=[3, 8, 9, 10, 13, 14], S=[0, 4]. -/
def code_12054 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #12055: ((6,2,2)), m=15, a=[3, 8, 9, 10, 14, 14], S=[0, 2]. -/
def code_12055 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12056: ((6,2,2)), m=15, a=[3, 8, 10, 11, 12, 13], S=[0, 6]. -/
def code_12056 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12057: ((6,2,2)), m=15, a=[3, 8, 10, 11, 13, 14], S=[0, 6]. -/
def code_12057 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #12058: ((6,2,2)), m=15, a=[3, 8, 10, 11, 13, 14], S=[0, 9]. -/
def code_12058 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #12059: ((6,2,2)), m=15, a=[3, 8, 10, 12, 13, 14], S=[0, 6]. -/
def code_12059 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12060: ((6,2,2)), m=15, a=[3, 8, 12, 13, 13, 14], S=[0, 9]. -/
def code_12060 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12061: ((6,2,2)), m=15, a=[3, 8, 12, 13, 13, 14], S=[0, 11]. -/
def code_12061 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #12062: ((6,2,2)), m=15, a=[3, 9, 10, 11, 13, 14], S=[0, 7]. -/
def code_12062 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12063: ((6,2,2)), m=15, a=[3, 9, 10, 13, 14, 14], S=[0, 7]. -/
def code_12063 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #12064: ((6,2,2)), m=15, a=[3, 10, 11, 11, 13, 14], S=[0, 8]. -/
def code_12064 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12065: ((6,2,2)), m=15, a=[3, 10, 11, 12, 13, 14], S=[0, 9]. -/
def code_12065 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12066: ((6,2,2)), m=15, a=[3, 11, 11, 12, 13, 13], S=[0, 8]. -/
def code_12066 : ExampleData 6 15 2 where
  a := ![(3 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12067: ((6,2,2)), m=15, a=[4, 4, 5, 6, 7, 14], S=[0, 13]. -/
def code_12067 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((13 : ℚ) / 15)]

/-- Catalogue code #12068: ((6,2,2)), m=15, a=[4, 4, 5, 6, 8, 8], S=[0, 14]. -/
def code_12068 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12069: ((6,2,2)), m=15, a=[4, 4, 5, 6, 8, 9], S=[0, 14]. -/
def code_12069 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12070: ((6,2,2)), m=15, a=[4, 4, 5, 7, 8, 9], S=[0, 1]. -/
def code_12070 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #12071: ((6,2,2)), m=15, a=[4, 4, 5, 8, 9, 9], S=[0, 1]. -/
def code_12071 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12072: ((6,2,2)), m=15, a=[4, 4, 5, 8, 9, 12], S=[0, 13]. -/
def code_12072 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((13 : ℚ) / 15)]

/-- Catalogue code #12073: ((6,2,2)), m=15, a=[4, 4, 5, 8, 9, 14], S=[0, 2]. -/
def code_12073 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((13 : ℚ) / 15)]

/-- Catalogue code #12074: ((6,2,2)), m=15, a=[4, 4, 5, 8, 9, 14], S=[0, 12]. -/
def code_12074 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12075: ((6,2,2)), m=15, a=[4, 4, 5, 8, 12, 12], S=[0, 2]. -/
def code_12075 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12076: ((6,2,2)), m=15, a=[4, 4, 5, 8, 13, 14], S=[0, 12]. -/
def code_12076 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12077: ((6,2,2)), m=15, a=[4, 4, 5, 8, 14, 14], S=[0, 6]. -/
def code_12077 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12078: ((6,2,2)), m=15, a=[4, 4, 5, 12, 12, 13], S=[0, 7]. -/
def code_12078 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-11 : ℚ) / 15)]

/-- Catalogue code #12079: ((6,2,2)), m=15, a=[4, 4, 6, 7, 9, 14], S=[0, 13]. -/
def code_12079 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((13 : ℚ) / 15)]

/-- Catalogue code #12080: ((6,2,2)), m=15, a=[4, 4, 7, 9, 10, 12], S=[0, 2]. -/
def code_12080 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((13 : ℚ) / 15)]

/-- Catalogue code #12081: ((6,2,2)), m=15, a=[4, 4, 7, 9, 10, 13], S=[0, 1]. -/
def code_12081 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12082: ((6,2,2)), m=15, a=[4, 4, 7, 9, 14, 14], S=[0, 13]. -/
def code_12082 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12083: ((6,2,2)), m=15, a=[4, 4, 9, 10, 12, 13], S=[0, 8]. -/
def code_12083 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12084: ((6,2,2)), m=15, a=[4, 5, 6, 6, 7, 8], S=[0, 12]. -/
def code_12084 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12085: ((6,2,2)), m=15, a=[4, 5, 6, 6, 11, 14], S=[0, 8]. -/
def code_12085 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12086: ((6,2,2)), m=15, a=[4, 5, 6, 7, 8, 12], S=[0, 14]. -/
def code_12086 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #12087: ((6,2,2)), m=15, a=[4, 5, 6, 7, 8, 13], S=[0, 1]. -/
def code_12087 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12088: ((6,2,2)), m=15, a=[4, 5, 6, 7, 12, 13], S=[0, 1]. -/
def code_12088 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12089: ((6,2,2)), m=15, a=[4, 5, 6, 7, 12, 14], S=[0, 2]. -/
def code_12089 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #12090: ((6,2,2)), m=15, a=[4, 5, 6, 7, 13, 14], S=[0, 3]. -/
def code_12090 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12091: ((6,2,2)), m=15, a=[4, 5, 6, 7, 13, 14], S=[0, 12]. -/
def code_12091 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12092: ((6,2,2)), m=15, a=[4, 5, 6, 7, 14, 14], S=[0, 2]. -/
def code_12092 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12093: ((6,2,2)), m=15, a=[4, 5, 6, 8, 8, 9], S=[0, 14]. -/
def code_12093 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #12094: ((6,2,2)), m=15, a=[4, 5, 6, 8, 9, 13], S=[0, 12]. -/
def code_12094 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12095: ((6,2,2)), m=15, a=[4, 5, 6, 8, 11, 12], S=[0, 2]. -/
def code_12095 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((13 : ℚ) / 15)]

/-- Catalogue code #12096: ((6,2,2)), m=15, a=[4, 5, 6, 8, 11, 13], S=[0, 1]. -/
def code_12096 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12097: ((6,2,2)), m=15, a=[4, 5, 6, 8, 12, 13], S=[0, 1]. -/
def code_12097 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #12098: ((6,2,2)), m=15, a=[4, 5, 6, 8, 12, 14], S=[0, 2]. -/
def code_12098 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #12099: ((6,2,2)), m=15, a=[4, 5, 6, 8, 13, 13], S=[0, 1]. -/
def code_12099 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5)]

/-- Catalogue code #12100: ((6,2,2)), m=15, a=[4, 5, 6, 8, 13, 13], S=[0, 3]. -/
def code_12100 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12101: ((6,2,2)), m=15, a=[4, 5, 6, 9, 13, 14], S=[0, 3]. -/
def code_12101 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12102: ((6,2,2)), m=15, a=[4, 5, 6, 11, 12, 13], S=[0, 7]. -/
def code_12102 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12103: ((6,2,2)), m=15, a=[4, 5, 6, 12, 13, 13], S=[0, 1]. -/
def code_12103 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12104: ((6,2,2)), m=15, a=[4, 5, 6, 12, 13, 14], S=[0, 8]. -/
def code_12104 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #12105: ((6,2,2)), m=15, a=[4, 5, 6, 12, 14, 14], S=[0, 2]. -/
def code_12105 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12106: ((6,2,2)), m=15, a=[4, 5, 6, 12, 14, 14], S=[0, 8]. -/
def code_12106 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #12107: ((6,2,2)), m=15, a=[4, 5, 6, 13, 14, 14], S=[0, 3]. -/
def code_12107 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12108: ((6,2,2)), m=15, a=[4, 5, 6, 13, 14, 14], S=[0, 8]. -/
def code_12108 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12109: ((6,2,2)), m=15, a=[4, 5, 7, 7, 9, 12], S=[0, 1]. -/
def code_12109 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12110: ((6,2,2)), m=15, a=[4, 5, 7, 7, 12, 14], S=[0, 2]. -/
def code_12110 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12111: ((6,2,2)), m=15, a=[4, 5, 7, 7, 13, 14], S=[0, 3]. -/
def code_12111 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12112: ((6,2,2)), m=15, a=[4, 5, 7, 8, 9, 9], S=[0, 1]. -/
def code_12112 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12113: ((6,2,2)), m=15, a=[4, 5, 7, 8, 13, 14], S=[0, 9]. -/
def code_12113 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12114: ((6,2,2)), m=15, a=[4, 5, 7, 9, 11, 12], S=[0, 2]. -/
def code_12114 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-13 : ℚ) / 15)]

/-- Catalogue code #12115: ((6,2,2)), m=15, a=[4, 5, 7, 9, 11, 14], S=[0, 2]. -/
def code_12115 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-13 : ℚ) / 15)]

/-- Catalogue code #12116: ((6,2,2)), m=15, a=[4, 5, 7, 9, 11, 14], S=[0, 3]. -/
def code_12116 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12117: ((6,2,2)), m=15, a=[4, 5, 7, 9, 12, 14], S=[0, 2]. -/
def code_12117 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12118: ((6,2,2)), m=15, a=[4, 5, 7, 9, 13, 14], S=[0, 12]. -/
def code_12118 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12119: ((6,2,2)), m=15, a=[4, 5, 7, 10, 14, 14], S=[0, 12]. -/
def code_12119 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12120: ((6,2,2)), m=15, a=[4, 5, 7, 11, 12, 13], S=[0, 6]. -/
def code_12120 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12121: ((6,2,2)), m=15, a=[4, 5, 7, 11, 12, 14], S=[0, 2]. -/
def code_12121 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12122: ((6,2,2)), m=15, a=[4, 5, 7, 11, 13, 14], S=[0, 6]. -/
def code_12122 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #12123: ((6,2,2)), m=15, a=[4, 5, 7, 12, 13, 14], S=[0, 6]. -/
def code_12123 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12124: ((6,2,2)), m=15, a=[4, 5, 7, 12, 14, 14], S=[0, 2]. -/
def code_12124 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12125: ((6,2,2)), m=15, a=[4, 5, 7, 13, 13, 14], S=[0, 3]. -/
def code_12125 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12126: ((6,2,2)), m=15, a=[4, 5, 8, 8, 9, 12], S=[0, 14]. -/
def code_12126 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12127: ((6,2,2)), m=15, a=[4, 5, 8, 8, 9, 13], S=[0, 14]. -/
def code_12127 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12128: ((6,2,2)), m=15, a=[4, 5, 8, 8, 12, 13], S=[0, 14]. -/
def code_12128 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #12129: ((6,2,2)), m=15, a=[4, 5, 8, 9, 10, 13], S=[0, 3]. -/
def code_12129 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12130: ((6,2,2)), m=15, a=[4, 5, 8, 9, 12, 13], S=[0, 14]. -/
def code_12130 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #12131: ((6,2,2)), m=15, a=[4, 5, 8, 11, 13, 13], S=[0, 12]. -/
def code_12131 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12132: ((6,2,2)), m=15, a=[4, 5, 8, 11, 13, 14], S=[0, 9]. -/
def code_12132 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #12133: ((6,2,2)), m=15, a=[4, 5, 8, 11, 14, 14], S=[0, 9]. -/
def code_12133 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12134: ((6,2,2)), m=15, a=[4, 5, 8, 12, 13, 14], S=[0, 9]. -/
def code_12134 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12135: ((6,2,2)), m=15, a=[4, 5, 8, 13, 13, 14], S=[0, 3]. -/
def code_12135 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12136: ((6,2,2)), m=15, a=[4, 5, 8, 13, 14, 14], S=[0, 9]. -/
def code_12136 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12137: ((6,2,2)), m=15, a=[4, 5, 9, 11, 12, 13], S=[0, 8]. -/
def code_12137 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12138: ((6,2,2)), m=15, a=[4, 5, 9, 11, 12, 14], S=[0, 2]. -/
def code_12138 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-11 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12139: ((6,2,2)), m=15, a=[4, 5, 9, 11, 12, 14], S=[0, 8]. -/
def code_12139 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12140: ((6,2,2)), m=15, a=[4, 5, 9, 11, 13, 14], S=[0, 3]. -/
def code_12140 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12141: ((6,2,2)), m=15, a=[4, 5, 9, 11, 13, 14], S=[0, 8]. -/
def code_12141 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #12142: ((6,2,2)), m=15, a=[4, 5, 9, 12, 13, 14], S=[0, 8]. -/
def code_12142 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #12143: ((6,2,2)), m=15, a=[4, 5, 10, 12, 13, 14], S=[0, 6]. -/
def code_12143 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12144: ((6,2,2)), m=15, a=[4, 5, 11, 12, 12, 13], S=[0, 9]. -/
def code_12144 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12145: ((6,2,2)), m=15, a=[4, 5, 11, 12, 13, 14], S=[0, 8]. -/
def code_12145 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12146: ((6,2,2)), m=15, a=[4, 5, 11, 13, 14, 14], S=[0, 9]. -/
def code_12146 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12147: ((6,2,2)), m=15, a=[4, 5, 12, 12, 13, 14], S=[0, 6]. -/
def code_12147 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12148: ((6,2,2)), m=15, a=[4, 5, 12, 12, 13, 14], S=[0, 9]. -/
def code_12148 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12149: ((6,2,2)), m=15, a=[4, 5, 12, 13, 13, 14], S=[0, 8]. -/
def code_12149 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12150: ((6,2,2)), m=15, a=[4, 5, 12, 13, 14, 14], S=[0, 8]. -/
def code_12150 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5)]

/-- Catalogue code #12151: ((6,2,2)), m=15, a=[4, 5, 12, 13, 14, 14], S=[0, 9]. -/
def code_12151 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (5 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12152: ((6,2,2)), m=15, a=[4, 6, 6, 7, 11, 14], S=[0, 2]. -/
def code_12152 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((13 : ℚ) / 15)]

/-- Catalogue code #12153: ((6,2,2)), m=15, a=[4, 6, 6, 7, 11, 14], S=[0, 12]. -/
def code_12153 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12154: ((6,2,2)), m=15, a=[4, 6, 6, 11, 13, 14], S=[0, 8]. -/
def code_12154 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #12155: ((6,2,2)), m=15, a=[4, 6, 6, 11, 14, 14], S=[0, 2]. -/
def code_12155 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
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
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12156: ((6,2,2)), m=15, a=[4, 6, 6, 11, 14, 14], S=[0, 8]. -/
def code_12156 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
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
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12157: ((6,2,2)), m=15, a=[4, 6, 6, 13, 14, 14], S=[0, 8]. -/
def code_12157 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #12158: ((6,2,2)), m=15, a=[4, 6, 7, 7, 10, 12], S=[0, 14]. -/
def code_12158 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12159: ((6,2,2)), m=15, a=[4, 6, 7, 9, 14, 14], S=[0, 13]. -/
def code_12159 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12160: ((6,2,2)), m=15, a=[4, 6, 7, 10, 14, 14], S=[0, 13]. -/
def code_12160 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12161: ((6,2,2)), m=15, a=[4, 6, 7, 11, 14, 14], S=[0, 2]. -/
def code_12161 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12162: ((6,2,2)), m=15, a=[4, 6, 7, 12, 14, 14], S=[0, 2]. -/
def code_12162 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #12163: ((6,2,2)), m=15, a=[4, 6, 8, 9, 10, 14], S=[0, 3]. -/
def code_12163 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12164: ((6,2,2)), m=15, a=[4, 6, 8, 9, 13, 14], S=[0, 12]. -/
def code_12164 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12165: ((6,2,2)), m=15, a=[4, 6, 8, 10, 13, 14], S=[0, 3]. -/
def code_12165 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12166: ((6,2,2)), m=15, a=[4, 6, 8, 13, 13, 14], S=[0, 3]. -/
def code_12166 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12167: ((6,2,2)), m=15, a=[4, 6, 9, 10, 11, 14], S=[0, 12]. -/
def code_12167 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12168: ((6,2,2)), m=15, a=[4, 6, 10, 12, 13, 14], S=[0, 7]. -/
def code_12168 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12169: ((6,2,2)), m=15, a=[4, 6, 11, 13, 14, 14], S=[0, 8]. -/
def code_12169 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #12170: ((6,2,2)), m=15, a=[4, 6, 12, 13, 14, 14], S=[0, 8]. -/
def code_12170 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #12171: ((6,2,2)), m=15, a=[4, 7, 7, 10, 13, 14], S=[0, 12]. -/
def code_12171 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12172: ((6,2,2)), m=15, a=[4, 7, 9, 10, 11, 14], S=[0, 12]. -/
def code_12172 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12173: ((6,2,2)), m=15, a=[4, 7, 9, 10, 11, 14], S=[0, 13]. -/
def code_12173 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((13 : ℚ) / 15)]

/-- Catalogue code #12174: ((6,2,2)), m=15, a=[4, 7, 9, 10, 12, 14], S=[0, 13]. -/
def code_12174 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12175: ((6,2,2)), m=15, a=[4, 7, 9, 10, 13, 13], S=[0, 14]. -/
def code_12175 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #12176: ((6,2,2)), m=15, a=[4, 7, 9, 11, 12, 14], S=[0, 2]. -/
def code_12176 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12177: ((6,2,2)), m=15, a=[4, 7, 9, 11, 13, 14], S=[0, 3]. -/
def code_12177 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12178: ((6,2,2)), m=15, a=[4, 7, 10, 11, 12, 12], S=[0, 13]. -/
def code_12178 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12179: ((6,2,2)), m=15, a=[4, 7, 11, 13, 14, 14], S=[0, 9]. -/
def code_12179 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12180: ((6,2,2)), m=15, a=[4, 8, 8, 9, 12, 13], S=[0, 14]. -/
def code_12180 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #12181: ((6,2,2)), m=15, a=[4, 8, 9, 10, 12, 14], S=[0, 13]. -/
def code_12181 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #12182: ((6,2,2)), m=15, a=[4, 8, 9, 10, 13, 14], S=[0, 12]. -/
def code_12182 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12183: ((6,2,2)), m=15, a=[4, 8, 10, 12, 13, 14], S=[0, 6]. -/
def code_12183 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #12184: ((6,2,2)), m=15, a=[4, 8, 10, 13, 14, 14], S=[0, 12]. -/
def code_12184 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12185: ((6,2,2)), m=15, a=[4, 8, 11, 13, 14, 14], S=[0, 9]. -/
def code_12185 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12186: ((6,2,2)), m=15, a=[4, 9, 10, 13, 14, 14], S=[0, 7]. -/
def code_12186 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12187: ((6,2,2)), m=15, a=[4, 9, 11, 12, 13, 14], S=[0, 8]. -/
def code_12187 : ExampleData 6 15 2 where
  a := ![(4 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((7 : ℚ) / 15)]

/-- Catalogue code #12188: ((6,2,2)), m=15, a=[5, 6, 6, 7, 7, 11], S=[0, 1]. -/
def code_12188 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-11 : ℚ) / 15)]

/-- Catalogue code #12189: ((6,2,2)), m=15, a=[5, 6, 6, 7, 7, 14], S=[0, 4]. -/
def code_12189 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12190: ((6,2,2)), m=15, a=[5, 6, 6, 11, 14, 14], S=[0, 13]. -/
def code_12190 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12191: ((6,2,2)), m=15, a=[5, 6, 6, 13, 14, 14], S=[0, 11]. -/
def code_12191 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12192: ((6,2,2)), m=15, a=[5, 6, 7, 7, 11, 12], S=[0, 1]. -/
def code_12192 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12193: ((6,2,2)), m=15, a=[5, 6, 7, 7, 11, 13], S=[0, 1]. -/
def code_12193 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12194: ((6,2,2)), m=15, a=[5, 6, 7, 7, 12, 13], S=[0, 1]. -/
def code_12194 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12195: ((6,2,2)), m=15, a=[5, 6, 7, 7, 12, 13], S=[0, 4]. -/
def code_12195 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12196: ((6,2,2)), m=15, a=[5, 6, 7, 7, 12, 14], S=[0, 4]. -/
def code_12196 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12197: ((6,2,2)), m=15, a=[5, 6, 7, 7, 13, 14], S=[0, 4]. -/
def code_12197 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12198: ((6,2,2)), m=15, a=[5, 6, 7, 8, 13, 14], S=[0, 11]. -/
def code_12198 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12199: ((6,2,2)), m=15, a=[5, 6, 7, 9, 13, 14], S=[0, 12]. -/
def code_12199 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12200: ((6,2,2)), m=15, a=[5, 6, 7, 11, 12, 13], S=[0, 1]. -/
def code_12200 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 3)]

/-- Catalogue code #12201: ((6,2,2)), m=15, a=[5, 6, 7, 12, 13, 14], S=[0, 4]. -/
def code_12201 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3)]

/-- Catalogue code #12202: ((6,2,2)), m=15, a=[5, 6, 7, 12, 14, 14], S=[0, 2]. -/
def code_12202 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12203: ((6,2,2)), m=15, a=[5, 6, 8, 11, 11, 14], S=[0, 12]. -/
def code_12203 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12204: ((6,2,2)), m=15, a=[5, 6, 8, 11, 11, 14], S=[0, 13]. -/
def code_12204 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((13 : ℚ) / 15)]

/-- Catalogue code #12205: ((6,2,2)), m=15, a=[5, 6, 8, 11, 12, 14], S=[0, 13]. -/
def code_12205 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12206: ((6,2,2)), m=15, a=[5, 6, 8, 11, 13, 13], S=[0, 14]. -/
def code_12206 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #12207: ((6,2,2)), m=15, a=[5, 6, 8, 12, 13, 13], S=[0, 1]. -/
def code_12207 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #12208: ((6,2,2)), m=15, a=[5, 6, 8, 12, 13, 13], S=[0, 11]. -/
def code_12208 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #12209: ((6,2,2)), m=15, a=[5, 6, 8, 12, 13, 14], S=[0, 11]. -/
def code_12209 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #12210: ((6,2,2)), m=15, a=[5, 6, 8, 13, 13, 14], S=[0, 3]. -/
def code_12210 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12211: ((6,2,2)), m=15, a=[5, 6, 8, 13, 13, 14], S=[0, 11]. -/
def code_12211 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #12212: ((6,2,2)), m=15, a=[5, 6, 8, 13, 14, 14], S=[0, 4]. -/
def code_12212 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (8 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12213: ((6,2,2)), m=15, a=[5, 6, 9, 10, 11, 13], S=[0, 12]. -/
def code_12213 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12214: ((6,2,2)), m=15, a=[5, 6, 11, 12, 13, 14], S=[0, 8]. -/
def code_12214 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12215: ((6,2,2)), m=15, a=[5, 6, 12, 13, 13, 14], S=[0, 11]. -/
def code_12215 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5)]

/-- Catalogue code #12216: ((6,2,2)), m=15, a=[5, 6, 12, 13, 14, 14], S=[0, 8]. -/
def code_12216 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12217: ((6,2,2)), m=15, a=[5, 6, 13, 13, 14, 14], S=[0, 11]. -/
def code_12217 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (6 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12218: ((6,2,2)), m=15, a=[5, 7, 7, 9, 9, 11], S=[0, 14]. -/
def code_12218 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((11 : ℚ) / 15)]

/-- Catalogue code #12219: ((6,2,2)), m=15, a=[5, 7, 7, 9, 11, 11], S=[0, 14]. -/
def code_12219 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12220: ((6,2,2)), m=15, a=[5, 7, 7, 9, 12, 14], S=[0, 11]. -/
def code_12220 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((13 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12221: ((6,2,2)), m=15, a=[5, 7, 7, 11, 12, 13], S=[0, 1]. -/
def code_12221 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #12222: ((6,2,2)), m=15, a=[5, 7, 7, 11, 12, 14], S=[0, 9]. -/
def code_12222 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12223: ((6,2,2)), m=15, a=[5, 7, 7, 11, 12, 14], S=[0, 13]. -/
def code_12223 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12224: ((6,2,2)), m=15, a=[5, 7, 7, 11, 13, 13], S=[0, 12]. -/
def code_12224 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12225: ((6,2,2)), m=15, a=[5, 7, 7, 12, 12, 14], S=[0, 13]. -/
def code_12225 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-3 : ℚ) / 5)]

/-- Catalogue code #12226: ((6,2,2)), m=15, a=[5, 7, 7, 12, 13, 14], S=[0, 4]. -/
def code_12226 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12227: ((6,2,2)), m=15, a=[5, 7, 7, 12, 14, 14], S=[0, 2]. -/
def code_12227 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12228: ((6,2,2)), m=15, a=[5, 7, 7, 13, 13, 14], S=[0, 3]. -/
def code_12228 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #12229: ((6,2,2)), m=15, a=[5, 7, 8, 9, 9, 14], S=[0, 11]. -/
def code_12229 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12230: ((6,2,2)), m=15, a=[5, 7, 9, 9, 11, 11], S=[0, 14]. -/
def code_12230 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12231: ((6,2,2)), m=15, a=[5, 7, 9, 11, 11, 13], S=[0, 12]. -/
def code_12231 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12232: ((6,2,2)), m=15, a=[5, 7, 9, 11, 12, 13], S=[0, 14]. -/
def code_12232 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #12233: ((6,2,2)), m=15, a=[5, 7, 9, 11, 12, 14], S=[0, 2]. -/
def code_12233 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15)]

/-- Catalogue code #12234: ((6,2,2)), m=15, a=[5, 7, 9, 11, 13, 13], S=[0, 1]. -/
def code_12234 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((3 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #12235: ((6,2,2)), m=15, a=[5, 7, 9, 11, 13, 14], S=[0, 3]. -/
def code_12235 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #12236: ((6,2,2)), m=15, a=[5, 7, 9, 12, 13, 14], S=[0, 4]. -/
def code_12236 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12237: ((6,2,2)), m=15, a=[5, 7, 9, 13, 13, 14], S=[0, 4]. -/
def code_12237 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-11 : ℚ) / 15)]

/-- Catalogue code #12238: ((6,2,2)), m=15, a=[5, 7, 9, 13, 13, 14], S=[0, 12]. -/
def code_12238 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12239: ((6,2,2)), m=15, a=[5, 7, 11, 12, 13, 14], S=[0, 6]. -/
def code_12239 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12240: ((6,2,2)), m=15, a=[5, 8, 8, 9, 9, 14], S=[0, 4]. -/
def code_12240 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12241: ((6,2,2)), m=15, a=[5, 8, 8, 9, 12, 13], S=[0, 11]. -/
def code_12241 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12242: ((6,2,2)), m=15, a=[5, 8, 8, 9, 12, 13], S=[0, 14]. -/
def code_12242 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((11 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12243: ((6,2,2)), m=15, a=[5, 8, 8, 11, 13, 14], S=[0, 12]. -/
def code_12243 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12244: ((6,2,2)), m=15, a=[5, 8, 8, 12, 12, 13], S=[0, 14]. -/
def code_12244 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12245: ((6,2,2)), m=15, a=[5, 8, 9, 10, 11, 13], S=[0, 12]. -/
def code_12245 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12246: ((6,2,2)), m=15, a=[5, 8, 9, 11, 12, 13], S=[0, 14]. -/
def code_12246 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12247: ((6,2,2)), m=15, a=[5, 8, 9, 11, 12, 14], S=[0, 13]. -/
def code_12247 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5), ((3 : ℚ) / 5)]

/-- Catalogue code #12248: ((6,2,2)), m=15, a=[5, 8, 9, 11, 14, 14], S=[0, 13]. -/
def code_12248 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12249: ((6,2,2)), m=15, a=[5, 8, 9, 12, 14, 14], S=[0, 13]. -/
def code_12249 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #12250: ((6,2,2)), m=15, a=[5, 8, 10, 13, 13, 14], S=[0, 9]. -/
def code_12250 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12251: ((6,2,2)), m=15, a=[5, 8, 11, 12, 14, 14], S=[0, 13]. -/
def code_12251 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12252: ((6,2,2)), m=15, a=[5, 8, 11, 13, 13, 14], S=[0, 12]. -/
def code_12252 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12253: ((6,2,2)), m=15, a=[5, 8, 11, 13, 14, 14], S=[0, 9]. -/
def code_12253 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (9 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12254: ((6,2,2)), m=15, a=[5, 8, 12, 12, 14, 14], S=[0, 13]. -/
def code_12254 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #12255: ((6,2,2)), m=15, a=[5, 8, 12, 13, 13, 14], S=[0, 11]. -/
def code_12255 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12256: ((6,2,2)), m=15, a=[5, 9, 9, 11, 11, 14], S=[0, 7]. -/
def code_12256 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12257: ((6,2,2)), m=15, a=[5, 9, 9, 11, 13, 13], S=[0, 1]. -/
def code_12257 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12258: ((6,2,2)), m=15, a=[5, 9, 11, 12, 13, 14], S=[0, 8]. -/
def code_12258 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #12259: ((6,2,2)), m=15, a=[5, 9, 11, 12, 14, 14], S=[0, 7]. -/
def code_12259 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((11 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 5)]

/-- Catalogue code #12260: ((6,2,2)), m=15, a=[5, 9, 11, 12, 14, 14], S=[0, 13]. -/
def code_12260 : ExampleData 6 15 2 where
  a := ![(5 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12261: ((6,2,2)), m=15, a=[6, 6, 6, 10, 13, 14], S=[0, 12]. -/
def code_12261 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #12262: ((6,2,2)), m=15, a=[6, 6, 7, 8, 9, 11], S=[0, 12]. -/
def code_12262 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12263: ((6,2,2)), m=15, a=[6, 6, 7, 8, 10, 11], S=[0, 14]. -/
def code_12263 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #12264: ((6,2,2)), m=15, a=[6, 6, 7, 9, 10, 11], S=[0, 12]. -/
def code_12264 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #12265: ((6,2,2)), m=15, a=[6, 6, 7, 10, 11, 14], S=[0, 12]. -/
def code_12265 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12266: ((6,2,2)), m=15, a=[6, 6, 7, 11, 14, 14], S=[0, 2]. -/
def code_12266 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12267: ((6,2,2)), m=15, a=[6, 6, 7, 13, 14, 14], S=[0, 4]. -/
def code_12267 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12268: ((6,2,2)), m=15, a=[6, 6, 7, 13, 14, 14], S=[0, 11]. -/
def code_12268 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (7 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12269: ((6,2,2)), m=15, a=[6, 6, 10, 11, 13, 14], S=[0, 3]. -/
def code_12269 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12270: ((6,2,2)), m=15, a=[6, 6, 10, 11, 13, 14], S=[0, 12]. -/
def code_12270 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12271: ((6,2,2)), m=15, a=[6, 6, 11, 13, 14, 14], S=[0, 8]. -/
def code_12271 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (6 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-13 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12272: ((6,2,2)), m=15, a=[6, 7, 7, 9, 10, 11], S=[0, 1]. -/
def code_12272 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #12273: ((6,2,2)), m=15, a=[6, 7, 7, 9, 10, 14], S=[0, 4]. -/
def code_12273 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12274: ((6,2,2)), m=15, a=[6, 7, 7, 10, 11, 11], S=[0, 1]. -/
def code_12274 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12275: ((6,2,2)), m=15, a=[6, 7, 7, 10, 12, 13], S=[0, 14]. -/
def code_12275 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12276: ((6,2,2)), m=15, a=[6, 7, 7, 11, 12, 13], S=[0, 1]. -/
def code_12276 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15)]

/-- Catalogue code #12277: ((6,2,2)), m=15, a=[6, 7, 7, 12, 13, 14], S=[0, 4]. -/
def code_12277 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (7 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((11 : ℚ) / 15)]

/-- Catalogue code #12278: ((6,2,2)), m=15, a=[6, 7, 8, 9, 11, 13], S=[0, 12]. -/
def code_12278 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12279: ((6,2,2)), m=15, a=[6, 7, 8, 10, 11, 11], S=[0, 14]. -/
def code_12279 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12280: ((6,2,2)), m=15, a=[6, 7, 9, 10, 11, 11], S=[0, 1]. -/
def code_12280 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12281: ((6,2,2)), m=15, a=[6, 7, 9, 11, 13, 14], S=[0, 3]. -/
def code_12281 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12282: ((6,2,2)), m=15, a=[6, 7, 9, 11, 13, 14], S=[0, 12]. -/
def code_12282 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12283: ((6,2,2)), m=15, a=[6, 7, 10, 11, 11, 12], S=[0, 13]. -/
def code_12283 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((13 : ℚ) / 15)]

/-- Catalogue code #12284: ((6,2,2)), m=15, a=[6, 7, 10, 11, 11, 13], S=[0, 14]. -/
def code_12284 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12285: ((6,2,2)), m=15, a=[6, 7, 10, 11, 11, 14], S=[0, 2]. -/
def code_12285 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((13 : ℚ) / 15)]

/-- Catalogue code #12286: ((6,2,2)), m=15, a=[6, 7, 10, 11, 11, 14], S=[0, 12]. -/
def code_12286 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12287: ((6,2,2)), m=15, a=[6, 7, 10, 11, 12, 13], S=[0, 1]. -/
def code_12287 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #12288: ((6,2,2)), m=15, a=[6, 7, 10, 11, 12, 14], S=[0, 2]. -/
def code_12288 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12289: ((6,2,2)), m=15, a=[6, 7, 10, 12, 13, 14], S=[0, 4]. -/
def code_12289 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (7 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-3 : ℚ) / 5), ((1 : ℚ) / 15)]

/-- Catalogue code #12290: ((6,2,2)), m=15, a=[6, 8, 8, 10, 13, 14], S=[0, 11]. -/
def code_12290 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-3 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12291: ((6,2,2)), m=15, a=[6, 8, 8, 12, 13, 14], S=[0, 11]. -/
def code_12291 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-11 : ℚ) / 15)]

/-- Catalogue code #12292: ((6,2,2)), m=15, a=[6, 8, 9, 10, 13, 14], S=[0, 3]. -/
def code_12292 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12293: ((6,2,2)), m=15, a=[6, 8, 9, 10, 13, 14], S=[0, 12]. -/
def code_12293 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12294: ((6,2,2)), m=15, a=[6, 8, 9, 11, 11, 14], S=[0, 13]. -/
def code_12294 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((13 : ℚ) / 15)]

/-- Catalogue code #12295: ((6,2,2)), m=15, a=[6, 8, 9, 11, 14, 14], S=[0, 13]. -/
def code_12295 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((7 : ℚ) / 15), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #12296: ((6,2,2)), m=15, a=[6, 8, 10, 11, 12, 13], S=[0, 1]. -/
def code_12296 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12297: ((6,2,2)), m=15, a=[6, 8, 10, 11, 12, 14], S=[0, 2]. -/
def code_12297 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 5), ((-3 : ℚ) / 5)]

/-- Catalogue code #12298: ((6,2,2)), m=15, a=[6, 8, 10, 11, 13, 14], S=[0, 12]. -/
def code_12298 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12299: ((6,2,2)), m=15, a=[6, 8, 10, 12, 13, 14], S=[0, 11]. -/
def code_12299 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (10 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((7 : ℚ) / 15), ((1 : ℚ) / 3), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 3)]

/-- Catalogue code #12300: ((6,2,2)), m=15, a=[6, 8, 11, 11, 14, 14], S=[0, 13]. -/
def code_12300 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12301: ((6,2,2)), m=15, a=[6, 8, 12, 13, 13, 14], S=[0, 11]. -/
def code_12301 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (11 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((7 : ℚ) / 15), ((7 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12302: ((6,2,2)), m=15, a=[6, 9, 10, 11, 11, 14], S=[0, 8]. -/
def code_12302 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12303: ((6,2,2)), m=15, a=[6, 9, 10, 13, 14, 14], S=[0, 3]. -/
def code_12303 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12304: ((6,2,2)), m=15, a=[6, 9, 11, 11, 14, 14], S=[0, 13]. -/
def code_12304 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (13 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((11 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12305: ((6,2,2)), m=15, a=[6, 10, 11, 11, 13, 14], S=[0, 8]. -/
def code_12305 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (8 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #12306: ((6,2,2)), m=15, a=[6, 10, 11, 12, 13, 14], S=[0, 7]. -/
def code_12306 : ExampleData 6 15 2 where
  a := ![(6 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (7 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((3 : ℚ) / 5), ((-1 : ℚ) / 3), ((-1 : ℚ) / 15), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15)]

/-- Catalogue code #12307: ((6,2,2)), m=15, a=[7, 8, 9, 10, 11, 12], S=[0, 14]. -/
def code_12307 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12308: ((6,2,2)), m=15, a=[7, 8, 9, 10, 11, 13], S=[0, 1]. -/
def code_12308 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((11 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12309: ((6,2,2)), m=15, a=[7, 8, 9, 10, 13, 14], S=[0, 4]. -/
def code_12309 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-7 : ℚ) / 15), ((3 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12310: ((6,2,2)), m=15, a=[7, 8, 9, 11, 13, 14], S=[0, 12]. -/
def code_12310 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12311: ((6,2,2)), m=15, a=[7, 8, 11, 12, 12, 13], S=[0, 1]. -/
def code_12311 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 5), ((-7 : ℚ) / 15), ((1 : ℚ) / 5), ((7 : ℚ) / 15)]

/-- Catalogue code #12312: ((6,2,2)), m=15, a=[7, 8, 11, 12, 12, 14], S=[0, 2]. -/
def code_12312 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12313: ((6,2,2)), m=15, a=[7, 8, 11, 12, 13, 13], S=[0, 1]. -/
def code_12313 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12314: ((6,2,2)), m=15, a=[7, 8, 11, 13, 13, 14], S=[0, 3]. -/
def code_12314 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12315: ((6,2,2)), m=15, a=[7, 8, 12, 12, 13, 14], S=[0, 4]. -/
def code_12315 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (8 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (4 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((13 : ℚ) / 15), ((1 : ℚ) / 5)]

/-- Catalogue code #12316: ((6,2,2)), m=15, a=[7, 9, 9, 10, 11, 14], S=[0, 3]. -/
def code_12316 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12317: ((6,2,2)), m=15, a=[7, 9, 9, 10, 11, 14], S=[0, 12]. -/
def code_12317 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (12 : ZMod 15)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((-3 : ℚ) / 5), ((1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5)]

/-- Catalogue code #12318: ((6,2,2)), m=15, a=[7, 9, 9, 11, 11, 13], S=[0, 14]. -/
def code_12318 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (14 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15), ((-1 : ℚ) / 15)]

/-- Catalogue code #12319: ((6,2,2)), m=15, a=[7, 9, 9, 11, 11, 14], S=[0, 2]. -/
def code_12319 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-13 : ℚ) / 15)]

/-- Catalogue code #12320: ((6,2,2)), m=15, a=[7, 9, 10, 11, 12, 13], S=[0, 1]. -/
def code_12320 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((8 : ℚ) / 15)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12321: ((6,2,2)), m=15, a=[7, 9, 10, 11, 12, 14], S=[0, 2]. -/
def code_12321 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 15), ((3 : ℚ) / 5)]

/-- Catalogue code #12322: ((6,2,2)), m=15, a=[7, 9, 10, 11, 14, 14], S=[0, 2]. -/
def code_12322 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((-7 : ℚ) / 15), ((7 : ℚ) / 15), ((1 : ℚ) / 15), ((-1 : ℚ) / 5)]

/-- Catalogue code #12323: ((6,2,2)), m=15, a=[7, 9, 11, 12, 14, 14], S=[0, 2]. -/
def code_12323 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 15), ((1 : ℚ) / 15), ((-7 : ℚ) / 15), ((-7 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3)]

/-- Catalogue code #12324: ((6,2,2)), m=15, a=[7, 9, 11, 13, 14, 14], S=[0, 3]. -/
def code_12324 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (9 : ZMod 15), (11 : ZMod 15), (13 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (3 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else 0)]
  targetZ := ![((-3 : ℚ) / 5), ((3 : ℚ) / 5), ((-1 : ℚ) / 5), ((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12325: ((6,2,2)), m=15, a=[7, 10, 11, 12, 14, 14], S=[0, 2]. -/
def code_12325 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (2 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-11 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15)]

/-- Catalogue code #12326: ((6,2,2)), m=15, a=[7, 10, 11, 12, 14, 14], S=[0, 6]. -/
def code_12326 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (10 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (14 : ZMod 15), (14 : ZMod 15)]
  S := ![(0 : ZMod 15), (6 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 5)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 5)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 5)
      else 0)]
  targetZ := ![((-1 : ℚ) / 5), ((1 : ℚ) / 5), ((3 : ℚ) / 5), ((3 : ℚ) / 5), ((1 : ℚ) / 5), ((1 : ℚ) / 5)]

/-- Catalogue code #12327: ((6,2,2)), m=15, a=[7, 11, 12, 12, 13, 13], S=[0, 1]. -/
def code_12327 : ExampleData 6 15 2 where
  a := ![(7 : ZMod 15), (11 : ZMod 15), (12 : ZMod 15), (12 : ZMod 15), (13 : ZMod 15), (13 : ZMod 15)]
  S := ![(0 : ZMod 15), (1 : ZMod 15)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 15)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 15)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 15)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 5)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 15)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 15)
      else 0)]
  targetZ := ![((-13 : ℚ) / 15), ((-1 : ℚ) / 5), ((1 : ℚ) / 15), ((1 : ℚ) / 15), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #12328: ((6,2,2)), m=16, a=[1, 1, 2, 3, 4, 5], S=[0, 7]. -/
def code_12328 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (5 : ZMod 16)]
  S := ![(0 : ZMod 16), (7 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((1 : ℚ) / 8), ((1 : ℚ) / 8), ((1 : ℚ) / 8), ((1 : ℚ) / 8), ((1 : ℚ) / 8), ((1 : ℚ) / 8)]

/-- Catalogue code #12329: ((6,2,2)), m=16, a=[1, 1, 2, 4, 9, 9], S=[0, 6]. -/
def code_12329 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (1 : ZMod 16), (2 : ZMod 16), (4 : ZMod 16), (9 : ZMod 16), (9 : ZMod 16)]
  S := ![(0 : ZMod 16), (6 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 2), ((-1 : ℚ) / 2), ((1 : ℚ) / 4), ((1 : ℚ) / 4)]

/-- Catalogue code #12330: ((6,2,2)), m=16, a=[1, 1, 2, 4, 10, 12], S=[0, 7]. -/
def code_12330 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (1 : ZMod 16), (2 : ZMod 16), (4 : ZMod 16), (10 : ZMod 16), (12 : ZMod 16)]
  S := ![(0 : ZMod 16), (7 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 8), ((-1 : ℚ) / 8), ((1 : ℚ) / 8), ((1 : ℚ) / 8)]

/-- Catalogue code #12331: ((6,2,2)), m=16, a=[1, 2, 2, 3, 4, 7], S=[0, 11]. -/
def code_12331 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (7 : ZMod 16)]
  S := ![(0 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0)]
  targetZ := ![((5 : ℚ) / 8), ((1 : ℚ) / 8), ((1 : ℚ) / 8), (0 : ℚ), ((-3 : ℚ) / 8), ((-3 : ℚ) / 8)]

/-- Catalogue code #12332: ((6,2,2)), m=16, a=[1, 2, 2, 3, 4, 8], S=[0, 11]. -/
def code_12332 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (8 : ZMod 16)]
  S := ![(0 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 8), ((-1 : ℚ) / 8), (0 : ℚ), ((3 : ℚ) / 8), ((-3 : ℚ) / 8)]

/-- Catalogue code #12333: ((6,2,2)), m=16, a=[1, 2, 2, 3, 7, 8], S=[0, 11]. -/
def code_12333 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (7 : ZMod 16), (8 : ZMod 16)]
  S := ![(0 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-3 : ℚ) / 8), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((3 : ℚ) / 8), ((-3 : ℚ) / 8)]

/-- Catalogue code #12334: ((6,2,2)), m=16, a=[1, 2, 2, 4, 5, 8], S=[0, 13]. -/
def code_12334 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (2 : ZMod 16), (4 : ZMod 16), (5 : ZMod 16), (8 : ZMod 16)]
  S := ![(0 : ZMod 16), (13 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 8), ((-1 : ℚ) / 8), ((3 : ℚ) / 8), (0 : ℚ), ((-5 : ℚ) / 8)]

/-- Catalogue code #12335: ((6,2,2)), m=16, a=[1, 2, 2, 4, 7, 8], S=[0, 3]. -/
def code_12335 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (2 : ZMod 16), (4 : ZMod 16), (7 : ZMod 16), (8 : ZMod 16)]
  S := ![(0 : ZMod 16), (3 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 4), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #12336: ((6,2,2)), m=16, a=[1, 2, 3, 4, 4, 5], S=[0, 9]. -/
def code_12336 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (5 : ZMod 16)]
  S := ![(0 : ZMod 16), (9 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 2), ((1 : ℚ) / 2), ((3 : ℚ) / 8), ((-1 : ℚ) / 8), ((-1 : ℚ) / 8), ((-1 : ℚ) / 8)]

/-- Catalogue code #12337: ((6,2,2)), m=16, a=[1, 2, 3, 4, 4, 6], S=[0, 9]. -/
def code_12337 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (6 : ZMod 16)]
  S := ![(0 : ZMod 16), (9 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 8), (0 : ℚ), ((1 : ℚ) / 8), ((5 : ℚ) / 8), ((-1 : ℚ) / 8)]

/-- Catalogue code #12338: ((6,2,2)), m=16, a=[1, 2, 3, 4, 4, 7], S=[0, 11]. -/
def code_12338 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (4 : ZMod 16), (7 : ZMod 16)]
  S := ![(0 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 8), ((1 : ℚ) / 2), ((1 : ℚ) / 2), ((1 : ℚ) / 8), ((-3 : ℚ) / 8), ((-3 : ℚ) / 8)]

/-- Catalogue code #12339: ((6,2,2)), m=16, a=[1, 2, 3, 4, 5, 6], S=[0, 9]. -/
def code_12339 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (5 : ZMod 16), (6 : ZMod 16)]
  S := ![(0 : ZMod 16), (9 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 4), ((-1 : ℚ) / 8), ((-1 : ℚ) / 8), ((1 : ℚ) / 4), ((5 : ℚ) / 8), ((-1 : ℚ) / 8)]

/-- Catalogue code #12340: ((6,2,2)), m=16, a=[1, 2, 3, 4, 6, 7], S=[0, 11]. -/
def code_12340 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (6 : ZMod 16), (7 : ZMod 16)]
  S := ![(0 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 8), ((1 : ℚ) / 8), ((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((-3 : ℚ) / 8), ((3 : ℚ) / 8)]

/-- Catalogue code #12341: ((6,2,2)), m=16, a=[1, 2, 3, 4, 7, 8], S=[0, 11]. -/
def code_12341 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (7 : ZMod 16), (8 : ZMod 16)]
  S := ![(0 : ZMod 16), (11 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((1 : ℚ) / 8), ((1 : ℚ) / 2), ((1 : ℚ) / 4), ((1 : ℚ) / 4), ((-1 : ℚ) / 8), ((1 : ℚ) / 8)]

/-- Catalogue code #12342: ((6,2,2)), m=16, a=[1, 2, 3, 4, 8, 9], S=[0, 5]. -/
def code_12342 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (8 : ZMod 16), (9 : ZMod 16)]
  S := ![(0 : ZMod 16), (5 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0)]
  targetZ := ![((-1 : ℚ) / 8), ((1 : ℚ) / 2), ((1 : ℚ) / 4), ((-1 : ℚ) / 4), ((3 : ℚ) / 8), ((3 : ℚ) / 8)]

/-- Catalogue code #12343: ((6,2,2)), m=16, a=[1, 2, 3, 4, 8, 10], S=[0, 5]. -/
def code_12343 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (8 : ZMod 16), (10 : ZMod 16)]
  S := ![(0 : ZMod 16), (5 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 8), (0 : ℚ), ((1 : ℚ) / 8), ((3 : ℚ) / 8), ((3 : ℚ) / 8)]

/-- Catalogue code #12344: ((6,2,2)), m=16, a=[1, 2, 3, 4, 8, 11], S=[0, 7]. -/
def code_12344 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (8 : ZMod 16), (11 : ZMod 16)]
  S := ![(0 : ZMod 16), (7 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((1 : ℚ) / 2), ((-3 : ℚ) / 8), ((-1 : ℚ) / 4), ((1 : ℚ) / 8), ((1 : ℚ) / 8)]

/-- Catalogue code #12345: ((6,2,2)), m=16, a=[1, 2, 3, 4, 9, 10], S=[0, 5]. -/
def code_12345 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (9 : ZMod 16), (10 : ZMod 16)]
  S := ![(0 : ZMod 16), (5 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 16)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else 0)]
  targetZ := ![((1 : ℚ) / 8), ((-1 : ℚ) / 8), ((1 : ℚ) / 2), ((1 : ℚ) / 8), ((3 : ℚ) / 8), ((3 : ℚ) / 8)]

/-- Catalogue code #12346: ((6,2,2)), m=16, a=[1, 2, 3, 5, 8, 10], S=[0, 9]. -/
def code_12346 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (2 : ZMod 16), (3 : ZMod 16), (5 : ZMod 16), (8 : ZMod 16), (10 : ZMod 16)]
  S := ![(0 : ZMod 16), (9 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 16)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 16)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 16)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 16)
      else 0)]
  targetZ := ![((-1 : ℚ) / 4), ((1 : ℚ) / 4), ((1 : ℚ) / 8), ((-5 : ℚ) / 8), ((-1 : ℚ) / 8), ((1 : ℚ) / 4)]

/-- Catalogue code #12347: ((6,2,2)), m=16, a=[1, 3, 4, 5, 7, 8], S=[0, 6]. -/
def code_12347 : ExampleData 6 16 2 where
  a := ![(1 : ZMod 16), (3 : ZMod 16), (4 : ZMod 16), (5 : ZMod 16), (7 : ZMod 16), (8 : ZMod 16)]
  S := ![(0 : ZMod 16), (6 : ZMod 16)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 4)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 8)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 4)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #12348: ((6,2,2)), m=17, a=[1, 1, 2, 4, 4, 6], S=[0, 8]. -/
def code_12348 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12349: ((6,2,2)), m=17, a=[1, 1, 2, 4, 4, 6], S=[0, 10]. -/
def code_12349 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12350: ((6,2,2)), m=17, a=[1, 1, 2, 4, 4, 7], S=[0, 8]. -/
def code_12350 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12351: ((6,2,2)), m=17, a=[1, 1, 2, 4, 4, 7], S=[0, 11]. -/
def code_12351 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12352: ((6,2,2)), m=17, a=[1, 1, 2, 4, 4, 9], S=[0, 10]. -/
def code_12352 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12353: ((6,2,2)), m=17, a=[1, 1, 2, 4, 4, 9], S=[0, 11]. -/
def code_12353 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12354: ((6,2,2)), m=17, a=[1, 1, 2, 4, 6, 7], S=[0, 8]. -/
def code_12354 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12355: ((6,2,2)), m=17, a=[1, 1, 2, 4, 6, 9], S=[0, 10]. -/
def code_12355 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12356: ((6,2,2)), m=17, a=[1, 1, 2, 4, 7, 9], S=[0, 11]. -/
def code_12356 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12357: ((6,2,2)), m=17, a=[1, 1, 2, 4, 9, 10], S=[0, 6]. -/
def code_12357 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12358: ((6,2,2)), m=17, a=[1, 1, 2, 4, 9, 11], S=[0, 7]. -/
def code_12358 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-11 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12359: ((6,2,2)), m=17, a=[1, 1, 2, 4, 9, 13], S=[0, 6]. -/
def code_12359 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12360: ((6,2,2)), m=17, a=[1, 1, 2, 4, 9, 13], S=[0, 7]. -/
def code_12360 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12361: ((6,2,2)), m=17, a=[1, 1, 2, 4, 10, 11], S=[0, 8]. -/
def code_12361 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-15 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12362: ((6,2,2)), m=17, a=[1, 1, 2, 4, 10, 13], S=[0, 6]. -/
def code_12362 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12363: ((6,2,2)), m=17, a=[1, 1, 2, 4, 10, 13], S=[0, 8]. -/
def code_12363 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12364: ((6,2,2)), m=17, a=[1, 1, 2, 4, 11, 13], S=[0, 7]. -/
def code_12364 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12365: ((6,2,2)), m=17, a=[1, 1, 2, 4, 11, 13], S=[0, 8]. -/
def code_12365 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12366: ((6,2,2)), m=17, a=[1, 1, 2, 6, 7, 8], S=[0, 4]. -/
def code_12366 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12367: ((6,2,2)), m=17, a=[1, 1, 2, 6, 7, 13], S=[0, 9]. -/
def code_12367 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((15 : ℚ) / 17)]

/-- Catalogue code #12368: ((6,2,2)), m=17, a=[1, 1, 2, 6, 8, 13], S=[0, 10]. -/
def code_12368 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((11 : ℚ) / 17)]

/-- Catalogue code #12369: ((6,2,2)), m=17, a=[1, 1, 2, 6, 13, 13], S=[0, 9]. -/
def code_12369 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12370: ((6,2,2)), m=17, a=[1, 1, 2, 6, 13, 13], S=[0, 10]. -/
def code_12370 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12371: ((6,2,2)), m=17, a=[1, 1, 2, 7, 8, 13], S=[0, 11]. -/
def code_12371 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12372: ((6,2,2)), m=17, a=[1, 1, 2, 7, 13, 13], S=[0, 9]. -/
def code_12372 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12373: ((6,2,2)), m=17, a=[1, 1, 2, 7, 13, 13], S=[0, 11]. -/
def code_12373 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12374: ((6,2,2)), m=17, a=[1, 1, 2, 8, 13, 13], S=[0, 10]. -/
def code_12374 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12375: ((6,2,2)), m=17, a=[1, 1, 2, 8, 13, 13], S=[0, 11]. -/
def code_12375 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12376: ((6,2,2)), m=17, a=[1, 1, 2, 9, 10, 11], S=[0, 4]. -/
def code_12376 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12377: ((6,2,2)), m=17, a=[1, 1, 2, 9, 10, 13], S=[0, 6]. -/
def code_12377 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12378: ((6,2,2)), m=17, a=[1, 1, 2, 9, 11, 13], S=[0, 7]. -/
def code_12378 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-11 : ℚ) / 17)]

/-- Catalogue code #12379: ((6,2,2)), m=17, a=[1, 1, 2, 10, 11, 13], S=[0, 8]. -/
def code_12379 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (2 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-15 : ℚ) / 17)]

/-- Catalogue code #12380: ((6,2,2)), m=17, a=[1, 1, 4, 4, 6, 7], S=[0, 8]. -/
def code_12380 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((13 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12381: ((6,2,2)), m=17, a=[1, 1, 4, 4, 6, 7], S=[0, 15]. -/
def code_12381 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((-13 : ℚ) / 17)]

/-- Catalogue code #12382: ((6,2,2)), m=17, a=[1, 1, 4, 4, 6, 9], S=[0, 10]. -/
def code_12382 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12383: ((6,2,2)), m=17, a=[1, 1, 4, 4, 6, 9], S=[0, 15]. -/
def code_12383 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17)]

/-- Catalogue code #12384: ((6,2,2)), m=17, a=[1, 1, 4, 4, 7, 8], S=[0, 2]. -/
def code_12384 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12385: ((6,2,2)), m=17, a=[1, 1, 4, 4, 7, 8], S=[0, 6]. -/
def code_12385 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12386: ((6,2,2)), m=17, a=[1, 1, 4, 4, 7, 11], S=[0, 2]. -/
def code_12386 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12387: ((6,2,2)), m=17, a=[1, 1, 4, 4, 7, 11], S=[0, 9]. -/
def code_12387 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #12388: ((6,2,2)), m=17, a=[1, 1, 4, 4, 7, 15], S=[0, 6]. -/
def code_12388 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12389: ((6,2,2)), m=17, a=[1, 1, 4, 4, 7, 15], S=[0, 9]. -/
def code_12389 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #12390: ((6,2,2)), m=17, a=[1, 1, 4, 4, 8, 11], S=[0, 2]. -/
def code_12390 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12391: ((6,2,2)), m=17, a=[1, 1, 4, 4, 8, 11], S=[0, 10]. -/
def code_12391 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12392: ((6,2,2)), m=17, a=[1, 1, 4, 4, 8, 15], S=[0, 6]. -/
def code_12392 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12393: ((6,2,2)), m=17, a=[1, 1, 4, 4, 8, 15], S=[0, 10]. -/
def code_12393 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12394: ((6,2,2)), m=17, a=[1, 1, 4, 4, 11, 15], S=[0, 9]. -/
def code_12394 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12395: ((6,2,2)), m=17, a=[1, 1, 4, 4, 11, 15], S=[0, 10]. -/
def code_12395 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12396: ((6,2,2)), m=17, a=[1, 1, 4, 6, 7, 9], S=[0, 15]. -/
def code_12396 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12397: ((6,2,2)), m=17, a=[1, 1, 4, 7, 8, 11], S=[0, 2]. -/
def code_12397 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12398: ((6,2,2)), m=17, a=[1, 1, 4, 7, 8, 15], S=[0, 6]. -/
def code_12398 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12399: ((6,2,2)), m=17, a=[1, 1, 4, 7, 11, 15], S=[0, 9]. -/
def code_12399 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12400: ((6,2,2)), m=17, a=[1, 1, 4, 8, 11, 15], S=[0, 10]. -/
def code_12400 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12401: ((6,2,2)), m=17, a=[1, 1, 4, 9, 10, 11], S=[0, 15]. -/
def code_12401 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12402: ((6,2,2)), m=17, a=[1, 1, 4, 9, 10, 13], S=[0, 6]. -/
def code_12402 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12403: ((6,2,2)), m=17, a=[1, 1, 4, 9, 10, 13], S=[0, 15]. -/
def code_12403 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12404: ((6,2,2)), m=17, a=[1, 1, 4, 9, 11, 13], S=[0, 7]. -/
def code_12404 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12405: ((6,2,2)), m=17, a=[1, 1, 4, 9, 11, 13], S=[0, 15]. -/
def code_12405 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12406: ((6,2,2)), m=17, a=[1, 1, 4, 10, 11, 13], S=[0, 8]. -/
def code_12406 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12407: ((6,2,2)), m=17, a=[1, 1, 4, 10, 11, 13], S=[0, 15]. -/
def code_12407 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((13 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12408: ((6,2,2)), m=17, a=[1, 1, 6, 7, 8, 13], S=[0, 15]. -/
def code_12408 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12409: ((6,2,2)), m=17, a=[1, 1, 6, 7, 13, 13], S=[0, 9]. -/
def code_12409 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((13 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12410: ((6,2,2)), m=17, a=[1, 1, 6, 7, 13, 13], S=[0, 15]. -/
def code_12410 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12411: ((6,2,2)), m=17, a=[1, 1, 6, 8, 13, 13], S=[0, 10]. -/
def code_12411 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12412: ((6,2,2)), m=17, a=[1, 1, 6, 8, 13, 13], S=[0, 15]. -/
def code_12412 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((13 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12413: ((6,2,2)), m=17, a=[1, 1, 6, 9, 10, 13], S=[0, 2]. -/
def code_12413 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12414: ((6,2,2)), m=17, a=[1, 1, 6, 9, 10, 15], S=[0, 4]. -/
def code_12414 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12415: ((6,2,2)), m=17, a=[1, 1, 6, 9, 13, 13], S=[0, 7]. -/
def code_12415 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12416: ((6,2,2)), m=17, a=[1, 1, 6, 9, 13, 15], S=[0, 7]. -/
def code_12416 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12417: ((6,2,2)), m=17, a=[1, 1, 6, 10, 13, 15], S=[0, 8]. -/
def code_12417 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12418: ((6,2,2)), m=17, a=[1, 1, 6, 13, 13, 15], S=[0, 7]. -/
def code_12418 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12419: ((6,2,2)), m=17, a=[1, 1, 6, 13, 13, 15], S=[0, 8]. -/
def code_12419 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (6 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12420: ((6,2,2)), m=17, a=[1, 1, 7, 8, 11, 15], S=[0, 13]. -/
def code_12420 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12421: ((6,2,2)), m=17, a=[1, 1, 7, 8, 13, 13], S=[0, 11]. -/
def code_12421 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12422: ((6,2,2)), m=17, a=[1, 1, 7, 8, 13, 13], S=[0, 15]. -/
def code_12422 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12423: ((6,2,2)), m=17, a=[1, 1, 9, 10, 11, 13], S=[0, 15]. -/
def code_12423 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12424: ((6,2,2)), m=17, a=[1, 1, 9, 10, 13, 13], S=[0, 2]. -/
def code_12424 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12425: ((6,2,2)), m=17, a=[1, 1, 9, 10, 13, 13], S=[0, 11]. -/
def code_12425 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12426: ((6,2,2)), m=17, a=[1, 1, 9, 10, 13, 15], S=[0, 11]. -/
def code_12426 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12427: ((6,2,2)), m=17, a=[1, 1, 9, 13, 13, 15], S=[0, 7]. -/
def code_12427 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12428: ((6,2,2)), m=17, a=[1, 1, 9, 13, 13, 15], S=[0, 11]. -/
def code_12428 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12429: ((6,2,2)), m=17, a=[1, 1, 10, 13, 13, 15], S=[0, 8]. -/
def code_12429 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-13 : ℚ) / 17)]

/-- Catalogue code #12430: ((6,2,2)), m=17, a=[1, 1, 10, 13, 13, 15], S=[0, 11]. -/
def code_12430 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (1 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12431: ((6,2,2)), m=17, a=[1, 2, 2, 3, 4, 5], S=[0, 8]. -/
def code_12431 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12432: ((6,2,2)), m=17, a=[1, 2, 2, 3, 4, 5], S=[0, 9]. -/
def code_12432 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12433: ((6,2,2)), m=17, a=[1, 2, 2, 3, 4, 8], S=[0, 12]. -/
def code_12433 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12434: ((6,2,2)), m=17, a=[1, 2, 2, 3, 4, 9], S=[0, 12]. -/
def code_12434 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12435: ((6,2,2)), m=17, a=[1, 2, 2, 3, 5, 8], S=[0, 13]. -/
def code_12435 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12436: ((6,2,2)), m=17, a=[1, 2, 2, 3, 5, 9], S=[0, 13]. -/
def code_12436 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12437: ((6,2,2)), m=17, a=[1, 2, 2, 3, 8, 9], S=[0, 12]. -/
def code_12437 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #12438: ((6,2,2)), m=17, a=[1, 2, 2, 3, 8, 9], S=[0, 13]. -/
def code_12438 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12439: ((6,2,2)), m=17, a=[1, 2, 2, 3, 9, 9], S=[0, 4]. -/
def code_12439 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12440: ((6,2,2)), m=17, a=[1, 2, 2, 3, 9, 12], S=[0, 4]. -/
def code_12440 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12441: ((6,2,2)), m=17, a=[1, 2, 2, 3, 9, 13], S=[0, 5]. -/
def code_12441 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12442: ((6,2,2)), m=17, a=[1, 2, 2, 3, 12, 13], S=[0, 8]. -/
def code_12442 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12443: ((6,2,2)), m=17, a=[1, 2, 2, 4, 5, 8], S=[0, 14]. -/
def code_12443 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((-11 : ℚ) / 17)]

/-- Catalogue code #12444: ((6,2,2)), m=17, a=[1, 2, 2, 4, 8, 8], S=[0, 3]. -/
def code_12444 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12445: ((6,2,2)), m=17, a=[1, 2, 2, 4, 8, 8], S=[0, 5]. -/
def code_12445 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12446: ((6,2,2)), m=17, a=[1, 2, 2, 4, 8, 9], S=[0, 14]. -/
def code_12446 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12447: ((6,2,2)), m=17, a=[1, 2, 2, 4, 8, 12], S=[0, 3]. -/
def code_12447 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12448: ((6,2,2)), m=17, a=[1, 2, 2, 4, 8, 14], S=[0, 5]. -/
def code_12448 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12449: ((6,2,2)), m=17, a=[1, 2, 2, 4, 12, 14], S=[0, 9]. -/
def code_12449 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12450: ((6,2,2)), m=17, a=[1, 2, 2, 5, 8, 9], S=[0, 13]. -/
def code_12450 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((13 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12451: ((6,2,2)), m=17, a=[1, 2, 2, 5, 8, 9], S=[0, 14]. -/
def code_12451 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #12452: ((6,2,2)), m=17, a=[1, 2, 2, 8, 8, 12], S=[0, 3]. -/
def code_12452 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12453: ((6,2,2)), m=17, a=[1, 2, 2, 8, 8, 12], S=[0, 13]. -/
def code_12453 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12454: ((6,2,2)), m=17, a=[1, 2, 2, 8, 8, 14], S=[0, 5]. -/
def code_12454 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12455: ((6,2,2)), m=17, a=[1, 2, 2, 8, 8, 14], S=[0, 13]. -/
def code_12455 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12456: ((6,2,2)), m=17, a=[1, 2, 2, 8, 12, 14], S=[0, 13]. -/
def code_12456 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12457: ((6,2,2)), m=17, a=[1, 2, 2, 9, 9, 13], S=[0, 5]. -/
def code_12457 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12458: ((6,2,2)), m=17, a=[1, 2, 2, 9, 9, 13], S=[0, 14]. -/
def code_12458 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12459: ((6,2,2)), m=17, a=[1, 2, 2, 9, 12, 13], S=[0, 14]. -/
def code_12459 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12460: ((6,2,2)), m=17, a=[1, 2, 3, 4, 8, 9], S=[0, 12]. -/
def code_12460 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12461: ((6,2,2)), m=17, a=[1, 2, 3, 5, 8, 9], S=[0, 13]. -/
def code_12461 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12462: ((6,2,2)), m=17, a=[1, 2, 3, 9, 9, 12], S=[0, 4]. -/
def code_12462 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12463: ((6,2,2)), m=17, a=[1, 2, 3, 9, 9, 13], S=[0, 5]. -/
def code_12463 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (3 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12464: ((6,2,2)), m=17, a=[1, 2, 4, 4, 6, 7], S=[0, 8]. -/
def code_12464 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12465: ((6,2,2)), m=17, a=[1, 2, 4, 4, 6, 8], S=[0, 7]. -/
def code_12465 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12466: ((6,2,2)), m=17, a=[1, 2, 4, 4, 6, 16], S=[0, 7]. -/
def code_12466 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #12467: ((6,2,2)), m=17, a=[1, 2, 4, 4, 6, 16], S=[0, 9]. -/
def code_12467 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12468: ((6,2,2)), m=17, a=[1, 2, 4, 4, 7, 9], S=[0, 11]. -/
def code_12468 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12469: ((6,2,2)), m=17, a=[1, 2, 4, 4, 8, 10], S=[0, 11]. -/
def code_12469 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-11 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12470: ((6,2,2)), m=17, a=[1, 2, 4, 4, 8, 16], S=[0, 7]. -/
def code_12470 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12471: ((6,2,2)), m=17, a=[1, 2, 4, 4, 8, 16], S=[0, 11]. -/
def code_12471 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12472: ((6,2,2)), m=17, a=[1, 2, 4, 4, 10, 16], S=[0, 9]. -/
def code_12472 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((13 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12473: ((6,2,2)), m=17, a=[1, 2, 4, 4, 10, 16], S=[0, 11]. -/
def code_12473 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #12474: ((6,2,2)), m=17, a=[1, 2, 4, 5, 8, 9], S=[0, 14]. -/
def code_12474 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (5 : ZMod 17), (8 : ZMod 17), (9 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12475: ((6,2,2)), m=17, a=[1, 2, 4, 6, 8, 16], S=[0, 7]. -/
def code_12475 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12476: ((6,2,2)), m=17, a=[1, 2, 4, 6, 10, 16], S=[0, 9]. -/
def code_12476 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12477: ((6,2,2)), m=17, a=[1, 2, 4, 8, 8, 12], S=[0, 3]. -/
def code_12477 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12478: ((6,2,2)), m=17, a=[1, 2, 4, 8, 8, 14], S=[0, 5]. -/
def code_12478 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((11 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12479: ((6,2,2)), m=17, a=[1, 2, 4, 8, 10, 16], S=[0, 11]. -/
def code_12479 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12480: ((6,2,2)), m=17, a=[1, 2, 4, 9, 10, 13], S=[0, 6]. -/
def code_12480 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12481: ((6,2,2)), m=17, a=[1, 2, 4, 9, 11, 13], S=[0, 7]. -/
def code_12481 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (7 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12482: ((6,2,2)), m=17, a=[1, 2, 4, 10, 11, 13], S=[0, 8]. -/
def code_12482 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (4 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12483: ((6,2,2)), m=17, a=[1, 2, 5, 9, 9, 13], S=[0, 3]. -/
def code_12483 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12484: ((6,2,2)), m=17, a=[1, 2, 5, 9, 9, 14], S=[0, 4]. -/
def code_12484 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-15 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12485: ((6,2,2)), m=17, a=[1, 2, 5, 9, 9, 15], S=[0, 3]. -/
def code_12485 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12486: ((6,2,2)), m=17, a=[1, 2, 5, 9, 9, 15], S=[0, 4]. -/
def code_12486 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-13 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12487: ((6,2,2)), m=17, a=[1, 2, 5, 9, 13, 15], S=[0, 3]. -/
def code_12487 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12488: ((6,2,2)), m=17, a=[1, 2, 5, 9, 14, 15], S=[0, 4]. -/
def code_12488 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12489: ((6,2,2)), m=17, a=[1, 2, 5, 13, 14, 15], S=[0, 8]. -/
def code_12489 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (5 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12490: ((6,2,2)), m=17, a=[1, 2, 6, 7, 13, 13], S=[0, 9]. -/
def code_12490 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (9 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #12491: ((6,2,2)), m=17, a=[1, 2, 6, 8, 10, 16], S=[0, 13]. -/
def code_12491 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12492: ((6,2,2)), m=17, a=[1, 2, 6, 8, 13, 13], S=[0, 10]. -/
def code_12492 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (6 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #12493: ((6,2,2)), m=17, a=[1, 2, 7, 8, 13, 13], S=[0, 11]. -/
def code_12493 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((11 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12494: ((6,2,2)), m=17, a=[1, 2, 8, 8, 12, 14], S=[0, 13]. -/
def code_12494 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((15 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #12495: ((6,2,2)), m=17, a=[1, 2, 9, 9, 12, 13], S=[0, 14]. -/
def code_12495 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #12496: ((6,2,2)), m=17, a=[1, 2, 9, 9, 13, 14], S=[0, 12]. -/
def code_12496 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-11 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12497: ((6,2,2)), m=17, a=[1, 2, 9, 9, 13, 15], S=[0, 3]. -/
def code_12497 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #12498: ((6,2,2)), m=17, a=[1, 2, 9, 9, 13, 15], S=[0, 12]. -/
def code_12498 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #12499: ((6,2,2)), m=17, a=[1, 2, 9, 9, 14, 15], S=[0, 4]. -/
def code_12499 : ExampleData 6 17 2 where
  a := ![(1 : ZMod 17), (2 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]
def checks : List Bool :=
  [decide code_12000.OK,
   decide code_12001.OK,
   decide code_12002.OK,
   decide code_12003.OK,
   decide code_12004.OK,
   decide code_12005.OK,
   decide code_12006.OK,
   decide code_12007.OK,
   decide code_12008.OK,
   decide code_12009.OK,
   decide code_12010.OK,
   decide code_12011.OK,
   decide code_12012.OK,
   decide code_12013.OK,
   decide code_12014.OK,
   decide code_12015.OK,
   decide code_12016.OK,
   decide code_12017.OK,
   decide code_12018.OK,
   decide code_12019.OK,
   decide code_12020.OK,
   decide code_12021.OK,
   decide code_12022.OK,
   decide code_12023.OK,
   decide code_12024.OK,
   decide code_12025.OK,
   decide code_12026.OK,
   decide code_12027.OK,
   decide code_12028.OK,
   decide code_12029.OK,
   decide code_12030.OK,
   decide code_12031.OK,
   decide code_12032.OK,
   decide code_12033.OK,
   decide code_12034.OK,
   decide code_12035.OK,
   decide code_12036.OK,
   decide code_12037.OK,
   decide code_12038.OK,
   decide code_12039.OK,
   decide code_12040.OK,
   decide code_12041.OK,
   decide code_12042.OK,
   decide code_12043.OK,
   decide code_12044.OK,
   decide code_12045.OK,
   decide code_12046.OK,
   decide code_12047.OK,
   decide code_12048.OK,
   decide code_12049.OK,
   decide code_12050.OK,
   decide code_12051.OK,
   decide code_12052.OK,
   decide code_12053.OK,
   decide code_12054.OK,
   decide code_12055.OK,
   decide code_12056.OK,
   decide code_12057.OK,
   decide code_12058.OK,
   decide code_12059.OK,
   decide code_12060.OK,
   decide code_12061.OK,
   decide code_12062.OK,
   decide code_12063.OK,
   decide code_12064.OK,
   decide code_12065.OK,
   decide code_12066.OK,
   decide code_12067.OK,
   decide code_12068.OK,
   decide code_12069.OK,
   decide code_12070.OK,
   decide code_12071.OK,
   decide code_12072.OK,
   decide code_12073.OK,
   decide code_12074.OK,
   decide code_12075.OK,
   decide code_12076.OK,
   decide code_12077.OK,
   decide code_12078.OK,
   decide code_12079.OK,
   decide code_12080.OK,
   decide code_12081.OK,
   decide code_12082.OK,
   decide code_12083.OK,
   decide code_12084.OK,
   decide code_12085.OK,
   decide code_12086.OK,
   decide code_12087.OK,
   decide code_12088.OK,
   decide code_12089.OK,
   decide code_12090.OK,
   decide code_12091.OK,
   decide code_12092.OK,
   decide code_12093.OK,
   decide code_12094.OK,
   decide code_12095.OK,
   decide code_12096.OK,
   decide code_12097.OK,
   decide code_12098.OK,
   decide code_12099.OK,
   decide code_12100.OK,
   decide code_12101.OK,
   decide code_12102.OK,
   decide code_12103.OK,
   decide code_12104.OK,
   decide code_12105.OK,
   decide code_12106.OK,
   decide code_12107.OK,
   decide code_12108.OK,
   decide code_12109.OK,
   decide code_12110.OK,
   decide code_12111.OK,
   decide code_12112.OK,
   decide code_12113.OK,
   decide code_12114.OK,
   decide code_12115.OK,
   decide code_12116.OK,
   decide code_12117.OK,
   decide code_12118.OK,
   decide code_12119.OK,
   decide code_12120.OK,
   decide code_12121.OK,
   decide code_12122.OK,
   decide code_12123.OK,
   decide code_12124.OK,
   decide code_12125.OK,
   decide code_12126.OK,
   decide code_12127.OK,
   decide code_12128.OK,
   decide code_12129.OK,
   decide code_12130.OK,
   decide code_12131.OK,
   decide code_12132.OK,
   decide code_12133.OK,
   decide code_12134.OK,
   decide code_12135.OK,
   decide code_12136.OK,
   decide code_12137.OK,
   decide code_12138.OK,
   decide code_12139.OK,
   decide code_12140.OK,
   decide code_12141.OK,
   decide code_12142.OK,
   decide code_12143.OK,
   decide code_12144.OK,
   decide code_12145.OK,
   decide code_12146.OK,
   decide code_12147.OK,
   decide code_12148.OK,
   decide code_12149.OK,
   decide code_12150.OK,
   decide code_12151.OK,
   decide code_12152.OK,
   decide code_12153.OK,
   decide code_12154.OK,
   decide code_12155.OK,
   decide code_12156.OK,
   decide code_12157.OK,
   decide code_12158.OK,
   decide code_12159.OK,
   decide code_12160.OK,
   decide code_12161.OK,
   decide code_12162.OK,
   decide code_12163.OK,
   decide code_12164.OK,
   decide code_12165.OK,
   decide code_12166.OK,
   decide code_12167.OK,
   decide code_12168.OK,
   decide code_12169.OK,
   decide code_12170.OK,
   decide code_12171.OK,
   decide code_12172.OK,
   decide code_12173.OK,
   decide code_12174.OK,
   decide code_12175.OK,
   decide code_12176.OK,
   decide code_12177.OK,
   decide code_12178.OK,
   decide code_12179.OK,
   decide code_12180.OK,
   decide code_12181.OK,
   decide code_12182.OK,
   decide code_12183.OK,
   decide code_12184.OK,
   decide code_12185.OK,
   decide code_12186.OK,
   decide code_12187.OK,
   decide code_12188.OK,
   decide code_12189.OK,
   decide code_12190.OK,
   decide code_12191.OK,
   decide code_12192.OK,
   decide code_12193.OK,
   decide code_12194.OK,
   decide code_12195.OK,
   decide code_12196.OK,
   decide code_12197.OK,
   decide code_12198.OK,
   decide code_12199.OK,
   decide code_12200.OK,
   decide code_12201.OK,
   decide code_12202.OK,
   decide code_12203.OK,
   decide code_12204.OK,
   decide code_12205.OK,
   decide code_12206.OK,
   decide code_12207.OK,
   decide code_12208.OK,
   decide code_12209.OK,
   decide code_12210.OK,
   decide code_12211.OK,
   decide code_12212.OK,
   decide code_12213.OK,
   decide code_12214.OK,
   decide code_12215.OK,
   decide code_12216.OK,
   decide code_12217.OK,
   decide code_12218.OK,
   decide code_12219.OK,
   decide code_12220.OK,
   decide code_12221.OK,
   decide code_12222.OK,
   decide code_12223.OK,
   decide code_12224.OK,
   decide code_12225.OK,
   decide code_12226.OK,
   decide code_12227.OK,
   decide code_12228.OK,
   decide code_12229.OK,
   decide code_12230.OK,
   decide code_12231.OK,
   decide code_12232.OK,
   decide code_12233.OK,
   decide code_12234.OK,
   decide code_12235.OK,
   decide code_12236.OK,
   decide code_12237.OK,
   decide code_12238.OK,
   decide code_12239.OK,
   decide code_12240.OK,
   decide code_12241.OK,
   decide code_12242.OK,
   decide code_12243.OK,
   decide code_12244.OK,
   decide code_12245.OK,
   decide code_12246.OK,
   decide code_12247.OK,
   decide code_12248.OK,
   decide code_12249.OK,
   decide code_12250.OK,
   decide code_12251.OK,
   decide code_12252.OK,
   decide code_12253.OK,
   decide code_12254.OK,
   decide code_12255.OK,
   decide code_12256.OK,
   decide code_12257.OK,
   decide code_12258.OK,
   decide code_12259.OK,
   decide code_12260.OK,
   decide code_12261.OK,
   decide code_12262.OK,
   decide code_12263.OK,
   decide code_12264.OK,
   decide code_12265.OK,
   decide code_12266.OK,
   decide code_12267.OK,
   decide code_12268.OK,
   decide code_12269.OK,
   decide code_12270.OK,
   decide code_12271.OK,
   decide code_12272.OK,
   decide code_12273.OK,
   decide code_12274.OK,
   decide code_12275.OK,
   decide code_12276.OK,
   decide code_12277.OK,
   decide code_12278.OK,
   decide code_12279.OK,
   decide code_12280.OK,
   decide code_12281.OK,
   decide code_12282.OK,
   decide code_12283.OK,
   decide code_12284.OK,
   decide code_12285.OK,
   decide code_12286.OK,
   decide code_12287.OK,
   decide code_12288.OK,
   decide code_12289.OK,
   decide code_12290.OK,
   decide code_12291.OK,
   decide code_12292.OK,
   decide code_12293.OK,
   decide code_12294.OK,
   decide code_12295.OK,
   decide code_12296.OK,
   decide code_12297.OK,
   decide code_12298.OK,
   decide code_12299.OK,
   decide code_12300.OK,
   decide code_12301.OK,
   decide code_12302.OK,
   decide code_12303.OK,
   decide code_12304.OK,
   decide code_12305.OK,
   decide code_12306.OK,
   decide code_12307.OK,
   decide code_12308.OK,
   decide code_12309.OK,
   decide code_12310.OK,
   decide code_12311.OK,
   decide code_12312.OK,
   decide code_12313.OK,
   decide code_12314.OK,
   decide code_12315.OK,
   decide code_12316.OK,
   decide code_12317.OK,
   decide code_12318.OK,
   decide code_12319.OK,
   decide code_12320.OK,
   decide code_12321.OK,
   decide code_12322.OK,
   decide code_12323.OK,
   decide code_12324.OK,
   decide code_12325.OK,
   decide code_12326.OK,
   decide code_12327.OK,
   decide code_12328.OK,
   decide code_12329.OK,
   decide code_12330.OK,
   decide code_12331.OK,
   decide code_12332.OK,
   decide code_12333.OK,
   decide code_12334.OK,
   decide code_12335.OK,
   decide code_12336.OK,
   decide code_12337.OK,
   decide code_12338.OK,
   decide code_12339.OK,
   decide code_12340.OK,
   decide code_12341.OK,
   decide code_12342.OK,
   decide code_12343.OK,
   decide code_12344.OK,
   decide code_12345.OK,
   decide code_12346.OK,
   decide code_12347.OK,
   decide code_12348.OK,
   decide code_12349.OK,
   decide code_12350.OK,
   decide code_12351.OK,
   decide code_12352.OK,
   decide code_12353.OK,
   decide code_12354.OK,
   decide code_12355.OK,
   decide code_12356.OK,
   decide code_12357.OK,
   decide code_12358.OK,
   decide code_12359.OK,
   decide code_12360.OK,
   decide code_12361.OK,
   decide code_12362.OK,
   decide code_12363.OK,
   decide code_12364.OK,
   decide code_12365.OK,
   decide code_12366.OK,
   decide code_12367.OK,
   decide code_12368.OK,
   decide code_12369.OK,
   decide code_12370.OK,
   decide code_12371.OK,
   decide code_12372.OK,
   decide code_12373.OK,
   decide code_12374.OK,
   decide code_12375.OK,
   decide code_12376.OK,
   decide code_12377.OK,
   decide code_12378.OK,
   decide code_12379.OK,
   decide code_12380.OK,
   decide code_12381.OK,
   decide code_12382.OK,
   decide code_12383.OK,
   decide code_12384.OK,
   decide code_12385.OK,
   decide code_12386.OK,
   decide code_12387.OK,
   decide code_12388.OK,
   decide code_12389.OK,
   decide code_12390.OK,
   decide code_12391.OK,
   decide code_12392.OK,
   decide code_12393.OK,
   decide code_12394.OK,
   decide code_12395.OK,
   decide code_12396.OK,
   decide code_12397.OK,
   decide code_12398.OK,
   decide code_12399.OK,
   decide code_12400.OK,
   decide code_12401.OK,
   decide code_12402.OK,
   decide code_12403.OK,
   decide code_12404.OK,
   decide code_12405.OK,
   decide code_12406.OK,
   decide code_12407.OK,
   decide code_12408.OK,
   decide code_12409.OK,
   decide code_12410.OK,
   decide code_12411.OK,
   decide code_12412.OK,
   decide code_12413.OK,
   decide code_12414.OK,
   decide code_12415.OK,
   decide code_12416.OK,
   decide code_12417.OK,
   decide code_12418.OK,
   decide code_12419.OK,
   decide code_12420.OK,
   decide code_12421.OK,
   decide code_12422.OK,
   decide code_12423.OK,
   decide code_12424.OK,
   decide code_12425.OK,
   decide code_12426.OK,
   decide code_12427.OK,
   decide code_12428.OK,
   decide code_12429.OK,
   decide code_12430.OK,
   decide code_12431.OK,
   decide code_12432.OK,
   decide code_12433.OK,
   decide code_12434.OK,
   decide code_12435.OK,
   decide code_12436.OK,
   decide code_12437.OK,
   decide code_12438.OK,
   decide code_12439.OK,
   decide code_12440.OK,
   decide code_12441.OK,
   decide code_12442.OK,
   decide code_12443.OK,
   decide code_12444.OK,
   decide code_12445.OK,
   decide code_12446.OK,
   decide code_12447.OK,
   decide code_12448.OK,
   decide code_12449.OK,
   decide code_12450.OK,
   decide code_12451.OK,
   decide code_12452.OK,
   decide code_12453.OK,
   decide code_12454.OK,
   decide code_12455.OK,
   decide code_12456.OK,
   decide code_12457.OK,
   decide code_12458.OK,
   decide code_12459.OK,
   decide code_12460.OK,
   decide code_12461.OK,
   decide code_12462.OK,
   decide code_12463.OK,
   decide code_12464.OK,
   decide code_12465.OK,
   decide code_12466.OK,
   decide code_12467.OK,
   decide code_12468.OK,
   decide code_12469.OK,
   decide code_12470.OK,
   decide code_12471.OK,
   decide code_12472.OK,
   decide code_12473.OK,
   decide code_12474.OK,
   decide code_12475.OK,
   decide code_12476.OK,
   decide code_12477.OK,
   decide code_12478.OK,
   decide code_12479.OK,
   decide code_12480.OK,
   decide code_12481.OK,
   decide code_12482.OK,
   decide code_12483.OK,
   decide code_12484.OK,
   decide code_12485.OK,
   decide code_12486.OK,
   decide code_12487.OK,
   decide code_12488.OK,
   decide code_12489.OK,
   decide code_12490.OK,
   decide code_12491.OK,
   decide code_12492.OK,
   decide code_12493.OK,
   decide code_12494.OK,
   decide code_12495.OK,
   decide code_12496.OK,
   decide code_12497.OK,
   decide code_12498.OK,
   decide code_12499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk024
