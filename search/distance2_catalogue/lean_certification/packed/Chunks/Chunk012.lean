import SS

namespace Catalogue.Chunk012

open SS SS.Verify

/-- Catalogue code #6000: ((6,2,2)), m=13, a=[1, 3, 3, 5, 6, 12], S=[0, 11]. -/
def code_6000 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6001: ((6,2,2)), m=13, a=[1, 3, 3, 5, 7, 8], S=[0, 2]. -/
def code_6001 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6002: ((6,2,2)), m=13, a=[1, 3, 3, 5, 7, 12], S=[0, 11]. -/
def code_6002 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6003: ((6,2,2)), m=13, a=[1, 3, 3, 5, 8, 12], S=[0, 7]. -/
def code_6003 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6004: ((6,2,2)), m=13, a=[1, 3, 3, 5, 9, 9], S=[0, 6]. -/
def code_6004 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6005: ((6,2,2)), m=13, a=[1, 3, 3, 5, 9, 11], S=[0, 7]. -/
def code_6005 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6006: ((6,2,2)), m=13, a=[1, 3, 3, 6, 6, 8], S=[0, 2]. -/
def code_6006 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6007: ((6,2,2)), m=13, a=[1, 3, 3, 6, 6, 8], S=[0, 9]. -/
def code_6007 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6008: ((6,2,2)), m=13, a=[1, 3, 3, 6, 6, 11], S=[0, 5]. -/
def code_6008 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6009: ((6,2,2)), m=13, a=[1, 3, 3, 6, 7, 9], S=[0, 8]. -/
def code_6009 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6010: ((6,2,2)), m=13, a=[1, 3, 3, 6, 7, 12], S=[0, 8]. -/
def code_6010 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6011: ((6,2,2)), m=13, a=[1, 3, 3, 6, 7, 12], S=[0, 11]. -/
def code_6011 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6012: ((6,2,2)), m=13, a=[1, 3, 3, 6, 8, 8], S=[0, 2]. -/
def code_6012 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6013: ((6,2,2)), m=13, a=[1, 3, 3, 6, 8, 8], S=[0, 9]. -/
def code_6013 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6014: ((6,2,2)), m=13, a=[1, 3, 3, 6, 8, 9], S=[0, 2]. -/
def code_6014 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6015: ((6,2,2)), m=13, a=[1, 3, 3, 6, 8, 11], S=[0, 4]. -/
def code_6015 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6016: ((6,2,2)), m=13, a=[1, 3, 3, 6, 8, 12], S=[0, 2]. -/
def code_6016 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6017: ((6,2,2)), m=13, a=[1, 3, 3, 6, 8, 12], S=[0, 11]. -/
def code_6017 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6018: ((6,2,2)), m=13, a=[1, 3, 3, 6, 9, 11], S=[0, 5]. -/
def code_6018 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6019: ((6,2,2)), m=13, a=[1, 3, 3, 6, 11, 11], S=[0, 4]. -/
def code_6019 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6020: ((6,2,2)), m=13, a=[1, 3, 3, 6, 11, 11], S=[0, 5]. -/
def code_6020 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6021: ((6,2,2)), m=13, a=[1, 3, 3, 6, 11, 12], S=[0, 5]. -/
def code_6021 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6022: ((6,2,2)), m=13, a=[1, 3, 3, 7, 7, 8], S=[0, 2]. -/
def code_6022 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6023: ((6,2,2)), m=13, a=[1, 3, 3, 7, 7, 9], S=[0, 2]. -/
def code_6023 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6024: ((6,2,2)), m=13, a=[1, 3, 3, 7, 7, 11], S=[0, 4]. -/
def code_6024 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6025: ((6,2,2)), m=13, a=[1, 3, 3, 7, 7, 11], S=[0, 5]. -/
def code_6025 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6026: ((6,2,2)), m=13, a=[1, 3, 3, 7, 7, 12], S=[0, 2]. -/
def code_6026 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6027: ((6,2,2)), m=13, a=[1, 3, 3, 7, 7, 12], S=[0, 5]. -/
def code_6027 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6028: ((6,2,2)), m=13, a=[1, 3, 3, 7, 8, 12], S=[0, 2]. -/
def code_6028 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6029: ((6,2,2)), m=13, a=[1, 3, 3, 7, 9, 9], S=[0, 8]. -/
def code_6029 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6030: ((6,2,2)), m=13, a=[1, 3, 3, 7, 11, 11], S=[0, 4]. -/
def code_6030 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6031: ((6,2,2)), m=13, a=[1, 3, 3, 7, 11, 12], S=[0, 5]. -/
def code_6031 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6032: ((6,2,2)), m=13, a=[1, 3, 3, 8, 8, 12], S=[0, 2]. -/
def code_6032 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6033: ((6,2,2)), m=13, a=[1, 3, 3, 8, 9, 11], S=[0, 7]. -/
def code_6033 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6034: ((6,2,2)), m=13, a=[1, 3, 3, 8, 11, 11], S=[0, 4]. -/
def code_6034 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6035: ((6,2,2)), m=13, a=[1, 3, 3, 8, 11, 11], S=[0, 7]. -/
def code_6035 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6036: ((6,2,2)), m=13, a=[1, 3, 3, 8, 11, 12], S=[0, 6]. -/
def code_6036 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6037: ((6,2,2)), m=13, a=[1, 3, 3, 9, 11, 11], S=[0, 5]. -/
def code_6037 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6038: ((6,2,2)), m=13, a=[1, 3, 3, 9, 11, 11], S=[0, 6]. -/
def code_6038 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6039: ((6,2,2)), m=13, a=[1, 3, 3, 9, 11, 11], S=[0, 7]. -/
def code_6039 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6040: ((6,2,2)), m=13, a=[1, 3, 3, 9, 12, 12], S=[0, 7]. -/
def code_6040 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6041: ((6,2,2)), m=13, a=[1, 3, 3, 11, 11, 11], S=[0, 7]. -/
def code_6041 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (3 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6042: ((6,2,2)), m=13, a=[1, 3, 4, 4, 5, 5], S=[0, 11]. -/
def code_6042 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6043: ((6,2,2)), m=13, a=[1, 3, 4, 4, 5, 6], S=[0, 11]. -/
def code_6043 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6044: ((6,2,2)), m=13, a=[1, 3, 4, 4, 5, 8], S=[0, 6]. -/
def code_6044 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6045: ((6,2,2)), m=13, a=[1, 3, 4, 4, 7, 7], S=[0, 5]. -/
def code_6045 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6046: ((6,2,2)), m=13, a=[1, 3, 4, 4, 7, 8], S=[0, 2]. -/
def code_6046 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6047: ((6,2,2)), m=13, a=[1, 3, 4, 4, 7, 10], S=[0, 5]. -/
def code_6047 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6048: ((6,2,2)), m=13, a=[1, 3, 4, 4, 7, 11], S=[0, 5]. -/
def code_6048 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6049: ((6,2,2)), m=13, a=[1, 3, 4, 4, 8, 10], S=[0, 6]. -/
def code_6049 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6050: ((6,2,2)), m=13, a=[1, 3, 4, 5, 5, 7], S=[0, 11]. -/
def code_6050 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6051: ((6,2,2)), m=13, a=[1, 3, 4, 5, 5, 9], S=[0, 7]. -/
def code_6051 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6052: ((6,2,2)), m=13, a=[1, 3, 4, 5, 5, 12], S=[0, 2]. -/
def code_6052 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6053: ((6,2,2)), m=13, a=[1, 3, 4, 5, 5, 12], S=[0, 6]. -/
def code_6053 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6054: ((6,2,2)), m=13, a=[1, 3, 4, 5, 5, 12], S=[0, 11]. -/
def code_6054 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6055: ((6,2,2)), m=13, a=[1, 3, 4, 5, 6, 7], S=[0, 2]. -/
def code_6055 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6056: ((6,2,2)), m=13, a=[1, 3, 4, 5, 6, 8], S=[0, 2]. -/
def code_6056 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6057: ((6,2,2)), m=13, a=[1, 3, 4, 5, 6, 10], S=[0, 2]. -/
def code_6057 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6058: ((6,2,2)), m=13, a=[1, 3, 4, 5, 6, 12], S=[0, 2]. -/
def code_6058 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6059: ((6,2,2)), m=13, a=[1, 3, 4, 5, 7, 9], S=[0, 2]. -/
def code_6059 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6060: ((6,2,2)), m=13, a=[1, 3, 4, 5, 7, 10], S=[0, 2]. -/
def code_6060 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6061: ((6,2,2)), m=13, a=[1, 3, 4, 5, 7, 12], S=[0, 2]. -/
def code_6061 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6062: ((6,2,2)), m=13, a=[1, 3, 4, 5, 7, 12], S=[0, 11]. -/
def code_6062 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6063: ((6,2,2)), m=13, a=[1, 3, 4, 5, 8, 9], S=[0, 2]. -/
def code_6063 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6064: ((6,2,2)), m=13, a=[1, 3, 4, 5, 8, 11], S=[0, 7]. -/
def code_6064 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6065: ((6,2,2)), m=13, a=[1, 3, 4, 5, 9, 12], S=[0, 2]. -/
def code_6065 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6066: ((6,2,2)), m=13, a=[1, 3, 4, 5, 10, 11], S=[0, 6]. -/
def code_6066 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6067: ((6,2,2)), m=13, a=[1, 3, 4, 5, 10, 11], S=[0, 7]. -/
def code_6067 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6068: ((6,2,2)), m=13, a=[1, 3, 4, 5, 10, 12], S=[0, 2]. -/
def code_6068 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6069: ((6,2,2)), m=13, a=[1, 3, 4, 5, 10, 12], S=[0, 7]. -/
def code_6069 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6070: ((6,2,2)), m=13, a=[1, 3, 4, 5, 11, 11], S=[0, 6]. -/
def code_6070 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6071: ((6,2,2)), m=13, a=[1, 3, 4, 5, 11, 12], S=[0, 7]. -/
def code_6071 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6072: ((6,2,2)), m=13, a=[1, 3, 4, 6, 6, 8], S=[0, 11]. -/
def code_6072 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6073: ((6,2,2)), m=13, a=[1, 3, 4, 6, 6, 9], S=[0, 5]. -/
def code_6073 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6074: ((6,2,2)), m=13, a=[1, 3, 4, 6, 6, 9], S=[0, 8]. -/
def code_6074 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6075: ((6,2,2)), m=13, a=[1, 3, 4, 6, 6, 9], S=[0, 11]. -/
def code_6075 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6076: ((6,2,2)), m=13, a=[1, 3, 4, 6, 6, 10], S=[0, 2]. -/
def code_6076 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6077: ((6,2,2)), m=13, a=[1, 3, 4, 6, 8, 8], S=[0, 2]. -/
def code_6077 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6078: ((6,2,2)), m=13, a=[1, 3, 4, 6, 8, 9], S=[0, 11]. -/
def code_6078 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6079: ((6,2,2)), m=13, a=[1, 3, 4, 6, 8, 12], S=[0, 11]. -/
def code_6079 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6080: ((6,2,2)), m=13, a=[1, 3, 4, 6, 9, 10], S=[0, 5]. -/
def code_6080 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6081: ((6,2,2)), m=13, a=[1, 3, 4, 6, 9, 11], S=[0, 5]. -/
def code_6081 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6082: ((6,2,2)), m=13, a=[1, 3, 4, 6, 10, 11], S=[0, 5]. -/
def code_6082 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6083: ((6,2,2)), m=13, a=[1, 3, 4, 6, 10, 12], S=[0, 2]. -/
def code_6083 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6084: ((6,2,2)), m=13, a=[1, 3, 4, 6, 11, 11], S=[0, 5]. -/
def code_6084 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6085: ((6,2,2)), m=13, a=[1, 3, 4, 7, 7, 8], S=[0, 2]. -/
def code_6085 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6086: ((6,2,2)), m=13, a=[1, 3, 4, 7, 9, 11], S=[0, 8]. -/
def code_6086 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6087: ((6,2,2)), m=13, a=[1, 3, 4, 7, 9, 12], S=[0, 2]. -/
def code_6087 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6088: ((6,2,2)), m=13, a=[1, 3, 4, 7, 9, 12], S=[0, 8]. -/
def code_6088 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6089: ((6,2,2)), m=13, a=[1, 3, 4, 7, 10, 11], S=[0, 8]. -/
def code_6089 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6090: ((6,2,2)), m=13, a=[1, 3, 4, 7, 11, 11], S=[0, 8]. -/
def code_6090 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6091: ((6,2,2)), m=13, a=[1, 3, 4, 7, 11, 12], S=[0, 8]. -/
def code_6091 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6092: ((6,2,2)), m=13, a=[1, 3, 4, 8, 9, 10], S=[0, 7]. -/
def code_6092 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6093: ((6,2,2)), m=13, a=[1, 3, 4, 8, 9, 11], S=[0, 7]. -/
def code_6093 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6094: ((6,2,2)), m=13, a=[1, 3, 4, 8, 10, 11], S=[0, 7]. -/
def code_6094 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6095: ((6,2,2)), m=13, a=[1, 3, 4, 8, 11, 11], S=[0, 6]. -/
def code_6095 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6096: ((6,2,2)), m=13, a=[1, 3, 4, 9, 10, 11], S=[0, 5]. -/
def code_6096 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6097: ((6,2,2)), m=13, a=[1, 3, 4, 9, 10, 11], S=[0, 7]. -/
def code_6097 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6098: ((6,2,2)), m=13, a=[1, 3, 4, 9, 11, 11], S=[0, 5]. -/
def code_6098 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6099: ((6,2,2)), m=13, a=[1, 3, 4, 9, 11, 12], S=[0, 8]. -/
def code_6099 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6100: ((6,2,2)), m=13, a=[1, 3, 4, 10, 11, 11], S=[0, 6]. -/
def code_6100 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6101: ((6,2,2)), m=13, a=[1, 3, 4, 10, 11, 11], S=[0, 7]. -/
def code_6101 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6102: ((6,2,2)), m=13, a=[1, 3, 4, 10, 11, 11], S=[0, 8]. -/
def code_6102 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6103: ((6,2,2)), m=13, a=[1, 3, 4, 10, 11, 12], S=[0, 7]. -/
def code_6103 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6104: ((6,2,2)), m=13, a=[1, 3, 4, 11, 11, 12], S=[0, 8]. -/
def code_6104 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (4 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6105: ((6,2,2)), m=13, a=[1, 3, 5, 5, 6, 6], S=[0, 4]. -/
def code_6105 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6106: ((6,2,2)), m=13, a=[1, 3, 5, 5, 6, 7], S=[0, 4]. -/
def code_6106 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6107: ((6,2,2)), m=13, a=[1, 3, 5, 5, 6, 9], S=[0, 2]. -/
def code_6107 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6108: ((6,2,2)), m=13, a=[1, 3, 5, 5, 6, 11], S=[0, 4]. -/
def code_6108 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6109: ((6,2,2)), m=13, a=[1, 3, 5, 5, 6, 12], S=[0, 2]. -/
def code_6109 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6110: ((6,2,2)), m=13, a=[1, 3, 5, 5, 6, 12], S=[0, 4]. -/
def code_6110 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6111: ((6,2,2)), m=13, a=[1, 3, 5, 5, 7, 9], S=[0, 2]. -/
def code_6111 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6112: ((6,2,2)), m=13, a=[1, 3, 5, 5, 7, 11], S=[0, 4]. -/
def code_6112 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6113: ((6,2,2)), m=13, a=[1, 3, 5, 5, 7, 12], S=[0, 9]. -/
def code_6113 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6114: ((6,2,2)), m=13, a=[1, 3, 5, 5, 7, 12], S=[0, 11]. -/
def code_6114 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6115: ((6,2,2)), m=13, a=[1, 3, 5, 5, 9, 11], S=[0, 7]. -/
def code_6115 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6116: ((6,2,2)), m=13, a=[1, 3, 5, 5, 9, 12], S=[0, 2]. -/
def code_6116 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6117: ((6,2,2)), m=13, a=[1, 3, 5, 5, 9, 12], S=[0, 7]. -/
def code_6117 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6118: ((6,2,2)), m=13, a=[1, 3, 5, 5, 9, 12], S=[0, 11]. -/
def code_6118 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6119: ((6,2,2)), m=13, a=[1, 3, 5, 5, 10, 10], S=[0, 4]. -/
def code_6119 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6120: ((6,2,2)), m=13, a=[1, 3, 5, 5, 11, 11], S=[0, 4]. -/
def code_6120 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6121: ((6,2,2)), m=13, a=[1, 3, 5, 5, 11, 12], S=[0, 4]. -/
def code_6121 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6122: ((6,2,2)), m=13, a=[1, 3, 5, 5, 11, 12], S=[0, 7]. -/
def code_6122 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6123: ((6,2,2)), m=13, a=[1, 3, 5, 6, 6, 9], S=[0, 2]. -/
def code_6123 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6124: ((6,2,2)), m=13, a=[1, 3, 5, 6, 6, 11], S=[0, 4]. -/
def code_6124 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6125: ((6,2,2)), m=13, a=[1, 3, 5, 6, 7, 11], S=[0, 9]. -/
def code_6125 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6126: ((6,2,2)), m=13, a=[1, 3, 5, 6, 7, 12], S=[0, 11]. -/
def code_6126 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6127: ((6,2,2)), m=13, a=[1, 3, 5, 6, 8, 11], S=[0, 9]. -/
def code_6127 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6128: ((6,2,2)), m=13, a=[1, 3, 5, 6, 9, 12], S=[0, 2]. -/
def code_6128 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6129: ((6,2,2)), m=13, a=[1, 3, 5, 6, 10, 12], S=[0, 2]. -/
def code_6129 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6130: ((6,2,2)), m=13, a=[1, 3, 5, 6, 11, 11], S=[0, 4]. -/
def code_6130 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6131: ((6,2,2)), m=13, a=[1, 3, 5, 6, 11, 12], S=[0, 4]. -/
def code_6131 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6132: ((6,2,2)), m=13, a=[1, 3, 5, 7, 7, 8], S=[0, 9]. -/
def code_6132 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6133: ((6,2,2)), m=13, a=[1, 3, 5, 7, 7, 9], S=[0, 2]. -/
def code_6133 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6134: ((6,2,2)), m=13, a=[1, 3, 5, 7, 7, 11], S=[0, 4]. -/
def code_6134 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6135: ((6,2,2)), m=13, a=[1, 3, 5, 7, 9, 9], S=[0, 2]. -/
def code_6135 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6136: ((6,2,2)), m=13, a=[1, 3, 5, 7, 9, 10], S=[0, 11]. -/
def code_6136 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6137: ((6,2,2)), m=13, a=[1, 3, 5, 7, 9, 12], S=[0, 2]. -/
def code_6137 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6138: ((6,2,2)), m=13, a=[1, 3, 5, 7, 10, 11], S=[0, 9]. -/
def code_6138 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6139: ((6,2,2)), m=13, a=[1, 3, 5, 7, 11, 11], S=[0, 4]. -/
def code_6139 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6140: ((6,2,2)), m=13, a=[1, 3, 5, 7, 11, 11], S=[0, 9]. -/
def code_6140 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6141: ((6,2,2)), m=13, a=[1, 3, 5, 7, 11, 12], S=[0, 4]. -/
def code_6141 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6142: ((6,2,2)), m=13, a=[1, 3, 5, 8, 9, 9], S=[0, 11]. -/
def code_6142 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6143: ((6,2,2)), m=13, a=[1, 3, 5, 8, 11, 11], S=[0, 4]. -/
def code_6143 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6144: ((6,2,2)), m=13, a=[1, 3, 5, 8, 11, 11], S=[0, 9]. -/
def code_6144 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6145: ((6,2,2)), m=13, a=[1, 3, 5, 9, 9, 11], S=[0, 6]. -/
def code_6145 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6146: ((6,2,2)), m=13, a=[1, 3, 5, 9, 11, 11], S=[0, 7]. -/
def code_6146 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6147: ((6,2,2)), m=13, a=[1, 3, 5, 9, 11, 12], S=[0, 7]. -/
def code_6147 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6148: ((6,2,2)), m=13, a=[1, 3, 5, 10, 11, 11], S=[0, 6]. -/
def code_6148 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6149: ((6,2,2)), m=13, a=[1, 3, 5, 10, 11, 11], S=[0, 9]. -/
def code_6149 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6150: ((6,2,2)), m=13, a=[1, 3, 5, 10, 11, 12], S=[0, 7]. -/
def code_6150 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6151: ((6,2,2)), m=13, a=[1, 3, 6, 6, 8, 8], S=[0, 9]. -/
def code_6151 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6152: ((6,2,2)), m=13, a=[1, 3, 6, 6, 8, 9], S=[0, 11]. -/
def code_6152 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6153: ((6,2,2)), m=13, a=[1, 3, 6, 6, 9, 10], S=[0, 11]. -/
def code_6153 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6154: ((6,2,2)), m=13, a=[1, 3, 6, 6, 9, 11], S=[0, 5]. -/
def code_6154 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6155: ((6,2,2)), m=13, a=[1, 3, 6, 6, 10, 11], S=[0, 9]. -/
def code_6155 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6156: ((6,2,2)), m=13, a=[1, 3, 6, 6, 11, 11], S=[0, 4]. -/
def code_6156 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6157: ((6,2,2)), m=13, a=[1, 3, 6, 6, 11, 11], S=[0, 9]. -/
def code_6157 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6158: ((6,2,2)), m=13, a=[1, 3, 6, 7, 8, 8], S=[0, 4]. -/
def code_6158 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6159: ((6,2,2)), m=13, a=[1, 3, 6, 7, 8, 10], S=[0, 4]. -/
def code_6159 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6160: ((6,2,2)), m=13, a=[1, 3, 6, 7, 9, 10], S=[0, 5]. -/
def code_6160 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6161: ((6,2,2)), m=13, a=[1, 3, 6, 8, 8, 9], S=[0, 11]. -/
def code_6161 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6162: ((6,2,2)), m=13, a=[1, 3, 6, 8, 8, 10], S=[0, 4]. -/
def code_6162 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6163: ((6,2,2)), m=13, a=[1, 3, 6, 8, 8, 10], S=[0, 11]. -/
def code_6163 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6164: ((6,2,2)), m=13, a=[1, 3, 6, 8, 8, 11], S=[0, 9]. -/
def code_6164 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6165: ((6,2,2)), m=13, a=[1, 3, 6, 8, 8, 12], S=[0, 2]. -/
def code_6165 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6166: ((6,2,2)), m=13, a=[1, 3, 6, 8, 9, 9], S=[0, 11]. -/
def code_6166 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6167: ((6,2,2)), m=13, a=[1, 3, 6, 8, 10, 11], S=[0, 4]. -/
def code_6167 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6168: ((6,2,2)), m=13, a=[1, 3, 6, 8, 10, 11], S=[0, 9]. -/
def code_6168 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6169: ((6,2,2)), m=13, a=[1, 3, 6, 8, 11, 11], S=[0, 4]. -/
def code_6169 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6170: ((6,2,2)), m=13, a=[1, 3, 6, 8, 11, 11], S=[0, 9]. -/
def code_6170 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6171: ((6,2,2)), m=13, a=[1, 3, 6, 9, 10, 11], S=[0, 5]. -/
def code_6171 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6172: ((6,2,2)), m=13, a=[1, 3, 6, 9, 11, 11], S=[0, 5]. -/
def code_6172 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6173: ((6,2,2)), m=13, a=[1, 3, 6, 9, 11, 12], S=[0, 8]. -/
def code_6173 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6174: ((6,2,2)), m=13, a=[1, 3, 6, 10, 11, 11], S=[0, 9]. -/
def code_6174 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6175: ((6,2,2)), m=13, a=[1, 3, 7, 7, 8, 8], S=[0, 4]. -/
def code_6175 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6176: ((6,2,2)), m=13, a=[1, 3, 7, 7, 8, 9], S=[0, 11]. -/
def code_6176 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6177: ((6,2,2)), m=13, a=[1, 3, 7, 7, 8, 10], S=[0, 11]. -/
def code_6177 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6178: ((6,2,2)), m=13, a=[1, 3, 7, 7, 8, 11], S=[0, 9]. -/
def code_6178 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6179: ((6,2,2)), m=13, a=[1, 3, 7, 7, 8, 12], S=[0, 2]. -/
def code_6179 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6180: ((6,2,2)), m=13, a=[1, 3, 7, 7, 9, 9], S=[0, 2]. -/
def code_6180 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6181: ((6,2,2)), m=13, a=[1, 3, 7, 7, 9, 9], S=[0, 5]. -/
def code_6181 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6182: ((6,2,2)), m=13, a=[1, 3, 7, 7, 9, 9], S=[0, 8]. -/
def code_6182 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6183: ((6,2,2)), m=13, a=[1, 3, 7, 7, 9, 11], S=[0, 8]. -/
def code_6183 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6184: ((6,2,2)), m=13, a=[1, 3, 7, 7, 9, 12], S=[0, 2]. -/
def code_6184 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6185: ((6,2,2)), m=13, a=[1, 3, 7, 7, 9, 12], S=[0, 11]. -/
def code_6185 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6186: ((6,2,2)), m=13, a=[1, 3, 7, 7, 11, 11], S=[0, 9]. -/
def code_6186 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6187: ((6,2,2)), m=13, a=[1, 3, 7, 7, 11, 12], S=[0, 4]. -/
def code_6187 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6188: ((6,2,2)), m=13, a=[1, 3, 7, 7, 11, 12], S=[0, 5]. -/
def code_6188 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6189: ((6,2,2)), m=13, a=[1, 3, 7, 8, 8, 9], S=[0, 11]. -/
def code_6189 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6190: ((6,2,2)), m=13, a=[1, 3, 7, 8, 8, 10], S=[0, 4]. -/
def code_6190 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6191: ((6,2,2)), m=13, a=[1, 3, 7, 8, 9, 10], S=[0, 11]. -/
def code_6191 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6192: ((6,2,2)), m=13, a=[1, 3, 7, 8, 9, 12], S=[0, 11]. -/
def code_6192 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6193: ((6,2,2)), m=13, a=[1, 3, 7, 8, 10, 12], S=[0, 11]. -/
def code_6193 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6194: ((6,2,2)), m=13, a=[1, 3, 7, 8, 11, 11], S=[0, 9]. -/
def code_6194 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6195: ((6,2,2)), m=13, a=[1, 3, 7, 9, 9, 11], S=[0, 8]. -/
def code_6195 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6196: ((6,2,2)), m=13, a=[1, 3, 7, 9, 10, 12], S=[0, 11]. -/
def code_6196 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6197: ((6,2,2)), m=13, a=[1, 3, 7, 9, 11, 11], S=[0, 8]. -/
def code_6197 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6198: ((6,2,2)), m=13, a=[1, 3, 7, 9, 11, 12], S=[0, 8]. -/
def code_6198 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6199: ((6,2,2)), m=13, a=[1, 3, 7, 10, 11, 11], S=[0, 8]. -/
def code_6199 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6200: ((6,2,2)), m=13, a=[1, 3, 7, 10, 11, 11], S=[0, 9]. -/
def code_6200 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6201: ((6,2,2)), m=13, a=[1, 3, 8, 8, 8, 12], S=[0, 2]. -/
def code_6201 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6202: ((6,2,2)), m=13, a=[1, 3, 8, 8, 9, 9], S=[0, 6]. -/
def code_6202 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6203: ((6,2,2)), m=13, a=[1, 3, 8, 8, 9, 10], S=[0, 6]. -/
def code_6203 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6204: ((6,2,2)), m=13, a=[1, 3, 8, 8, 9, 11], S=[0, 7]. -/
def code_6204 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6205: ((6,2,2)), m=13, a=[1, 3, 8, 9, 10, 11], S=[0, 7]. -/
def code_6205 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6206: ((6,2,2)), m=13, a=[1, 3, 8, 9, 10, 12], S=[0, 6]. -/
def code_6206 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6207: ((6,2,2)), m=13, a=[1, 3, 8, 9, 10, 12], S=[0, 11]. -/
def code_6207 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6208: ((6,2,2)), m=13, a=[1, 3, 8, 9, 11, 11], S=[0, 7]. -/
def code_6208 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6209: ((6,2,2)), m=13, a=[1, 3, 9, 9, 9, 12], S=[0, 2]. -/
def code_6209 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6210: ((6,2,2)), m=13, a=[1, 3, 9, 9, 10, 10], S=[0, 8]. -/
def code_6210 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (3 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6211: ((6,2,2)), m=13, a=[1, 4, 4, 4, 6, 6], S=[0, 5]. -/
def code_6211 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6212: ((6,2,2)), m=13, a=[1, 4, 4, 4, 6, 6], S=[0, 11]. -/
def code_6212 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6213: ((6,2,2)), m=13, a=[1, 4, 4, 4, 6, 12], S=[0, 11]. -/
def code_6213 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6214: ((6,2,2)), m=13, a=[1, 4, 4, 4, 7, 7], S=[0, 2]. -/
def code_6214 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6215: ((6,2,2)), m=13, a=[1, 4, 4, 4, 10, 12], S=[0, 11]. -/
def code_6215 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6216: ((6,2,2)), m=13, a=[1, 4, 4, 5, 6, 7], S=[0, 3]. -/
def code_6216 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6217: ((6,2,2)), m=13, a=[1, 4, 4, 5, 6, 7], S=[0, 11]. -/
def code_6217 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, false, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6218: ((6,2,2)), m=13, a=[1, 4, 4, 5, 6, 10], S=[0, 11]. -/
def code_6218 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6219: ((6,2,2)), m=13, a=[1, 4, 4, 5, 7, 10], S=[0, 11]. -/
def code_6219 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6220: ((6,2,2)), m=13, a=[1, 4, 4, 5, 7, 11], S=[0, 3]. -/
def code_6220 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6221: ((6,2,2)), m=13, a=[1, 4, 4, 5, 10, 10], S=[0, 6]. -/
def code_6221 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6222: ((6,2,2)), m=13, a=[1, 4, 4, 5, 10, 11], S=[0, 6]. -/
def code_6222 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6223: ((6,2,2)), m=13, a=[1, 4, 4, 6, 6, 6], S=[0, 5]. -/
def code_6223 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6224: ((6,2,2)), m=13, a=[1, 4, 4, 6, 6, 11], S=[0, 5]. -/
def code_6224 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6225: ((6,2,2)), m=13, a=[1, 4, 4, 6, 6, 12], S=[0, 5]. -/
def code_6225 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6226: ((6,2,2)), m=13, a=[1, 4, 4, 6, 6, 12], S=[0, 11]. -/
def code_6226 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6227: ((6,2,2)), m=13, a=[1, 4, 4, 6, 7, 10], S=[0, 8]. -/
def code_6227 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6228: ((6,2,2)), m=13, a=[1, 4, 4, 6, 7, 10], S=[0, 11]. -/
def code_6228 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6229: ((6,2,2)), m=13, a=[1, 4, 4, 6, 8, 12], S=[0, 11]. -/
def code_6229 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6230: ((6,2,2)), m=13, a=[1, 4, 4, 6, 11, 12], S=[0, 5]. -/
def code_6230 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6231: ((6,2,2)), m=13, a=[1, 4, 4, 7, 7, 8], S=[0, 2]. -/
def code_6231 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6232: ((6,2,2)), m=13, a=[1, 4, 4, 7, 7, 8], S=[0, 3]. -/
def code_6232 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-11 : ℚ) / 13)]

/-- Catalogue code #6233: ((6,2,2)), m=13, a=[1, 4, 4, 7, 7, 10], S=[0, 5]. -/
def code_6233 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6234: ((6,2,2)), m=13, a=[1, 4, 4, 7, 7, 11], S=[0, 3]. -/
def code_6234 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-11 : ℚ) / 13)]

/-- Catalogue code #6235: ((6,2,2)), m=13, a=[1, 4, 4, 7, 7, 11], S=[0, 5]. -/
def code_6235 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6236: ((6,2,2)), m=13, a=[1, 4, 4, 7, 8, 10], S=[0, 2]. -/
def code_6236 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6237: ((6,2,2)), m=13, a=[1, 4, 4, 7, 8, 11], S=[0, 3]. -/
def code_6237 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6238: ((6,2,2)), m=13, a=[1, 4, 4, 7, 10, 10], S=[0, 8]. -/
def code_6238 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6239: ((6,2,2)), m=13, a=[1, 4, 4, 7, 10, 11], S=[0, 5]. -/
def code_6239 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6240: ((6,2,2)), m=13, a=[1, 4, 4, 7, 10, 11], S=[0, 8]. -/
def code_6240 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6241: ((6,2,2)), m=13, a=[1, 4, 4, 8, 8, 10], S=[0, 11]. -/
def code_6241 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6242: ((6,2,2)), m=13, a=[1, 4, 4, 8, 10, 11], S=[0, 6]. -/
def code_6242 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6243: ((6,2,2)), m=13, a=[1, 4, 4, 8, 11, 12], S=[0, 7]. -/
def code_6243 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6244: ((6,2,2)), m=13, a=[1, 4, 4, 10, 10, 10], S=[0, 5]. -/
def code_6244 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6245: ((6,2,2)), m=13, a=[1, 4, 4, 10, 10, 11], S=[0, 6]. -/
def code_6245 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6246: ((6,2,2)), m=13, a=[1, 4, 4, 10, 10, 11], S=[0, 8]. -/
def code_6246 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6247: ((6,2,2)), m=13, a=[1, 4, 5, 5, 6, 6], S=[0, 3]. -/
def code_6247 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6248: ((6,2,2)), m=13, a=[1, 4, 5, 5, 7, 12], S=[0, 10]. -/
def code_6248 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6249: ((6,2,2)), m=13, a=[1, 4, 5, 5, 7, 12], S=[0, 11]. -/
def code_6249 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6250: ((6,2,2)), m=13, a=[1, 4, 5, 5, 8, 12], S=[0, 11]. -/
def code_6250 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6251: ((6,2,2)), m=13, a=[1, 4, 5, 5, 11, 11], S=[0, 10]. -/
def code_6251 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6252: ((6,2,2)), m=13, a=[1, 4, 5, 5, 11, 12], S=[0, 10]. -/
def code_6252 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6253: ((6,2,2)), m=13, a=[1, 4, 5, 6, 6, 9], S=[0, 2]. -/
def code_6253 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6254: ((6,2,2)), m=13, a=[1, 4, 5, 6, 6, 9], S=[0, 3]. -/
def code_6254 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6255: ((6,2,2)), m=13, a=[1, 4, 5, 6, 6, 10], S=[0, 2]. -/
def code_6255 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6256: ((6,2,2)), m=13, a=[1, 4, 5, 6, 6, 11], S=[0, 3]. -/
def code_6256 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6257: ((6,2,2)), m=13, a=[1, 4, 5, 6, 7, 8], S=[0, 3]. -/
def code_6257 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6258: ((6,2,2)), m=13, a=[1, 4, 5, 6, 7, 10], S=[0, 11]. -/
def code_6258 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6259: ((6,2,2)), m=13, a=[1, 4, 5, 6, 7, 11], S=[0, 3]. -/
def code_6259 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6260: ((6,2,2)), m=13, a=[1, 4, 5, 6, 8, 11], S=[0, 3]. -/
def code_6260 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6261: ((6,2,2)), m=13, a=[1, 4, 5, 6, 8, 11], S=[0, 10]. -/
def code_6261 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6262: ((6,2,2)), m=13, a=[1, 4, 5, 6, 9, 10], S=[0, 2]. -/
def code_6262 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6263: ((6,2,2)), m=13, a=[1, 4, 5, 6, 9, 11], S=[0, 3]. -/
def code_6263 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6264: ((6,2,2)), m=13, a=[1, 4, 5, 6, 10, 10], S=[0, 11]. -/
def code_6264 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6265: ((6,2,2)), m=13, a=[1, 4, 5, 6, 10, 12], S=[0, 2]. -/
def code_6265 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6266: ((6,2,2)), m=13, a=[1, 4, 5, 6, 11, 12], S=[0, 3]. -/
def code_6266 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6267: ((6,2,2)), m=13, a=[1, 4, 5, 7, 7, 8], S=[0, 3]. -/
def code_6267 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6268: ((6,2,2)), m=13, a=[1, 4, 5, 7, 8, 10], S=[0, 11]. -/
def code_6268 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6269: ((6,2,2)), m=13, a=[1, 4, 5, 7, 8, 11], S=[0, 3]. -/
def code_6269 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6270: ((6,2,2)), m=13, a=[1, 4, 5, 7, 9, 10], S=[0, 11]. -/
def code_6270 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6271: ((6,2,2)), m=13, a=[1, 4, 5, 7, 9, 12], S=[0, 2]. -/
def code_6271 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6272: ((6,2,2)), m=13, a=[1, 4, 5, 7, 11, 11], S=[0, 3]. -/
def code_6272 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6273: ((6,2,2)), m=13, a=[1, 4, 5, 7, 11, 11], S=[0, 10]. -/
def code_6273 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6274: ((6,2,2)), m=13, a=[1, 4, 5, 8, 9, 11], S=[0, 10]. -/
def code_6274 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6275: ((6,2,2)), m=13, a=[1, 4, 5, 8, 10, 10], S=[0, 6]. -/
def code_6275 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6276: ((6,2,2)), m=13, a=[1, 4, 5, 8, 10, 11], S=[0, 6]. -/
def code_6276 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6277: ((6,2,2)), m=13, a=[1, 4, 5, 8, 11, 11], S=[0, 10]. -/
def code_6277 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6278: ((6,2,2)), m=13, a=[1, 4, 5, 9, 10, 11], S=[0, 7]. -/
def code_6278 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6279: ((6,2,2)), m=13, a=[1, 4, 5, 9, 11, 11], S=[0, 10]. -/
def code_6279 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6280: ((6,2,2)), m=13, a=[1, 4, 5, 10, 10, 11], S=[0, 6]. -/
def code_6280 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6281: ((6,2,2)), m=13, a=[1, 4, 5, 10, 11, 11], S=[0, 6]. -/
def code_6281 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6282: ((6,2,2)), m=13, a=[1, 4, 5, 10, 11, 12], S=[0, 7]. -/
def code_6282 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6283: ((6,2,2)), m=13, a=[1, 4, 5, 11, 11, 12], S=[0, 10]. -/
def code_6283 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6284: ((6,2,2)), m=13, a=[1, 4, 6, 6, 8, 8], S=[0, 10]. -/
def code_6284 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6285: ((6,2,2)), m=13, a=[1, 4, 6, 6, 8, 9], S=[0, 10]. -/
def code_6285 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6286: ((6,2,2)), m=13, a=[1, 4, 6, 6, 8, 9], S=[0, 11]. -/
def code_6286 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6287: ((6,2,2)), m=13, a=[1, 4, 6, 6, 8, 10], S=[0, 11]. -/
def code_6287 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6288: ((6,2,2)), m=13, a=[1, 4, 6, 6, 9, 10], S=[0, 2]. -/
def code_6288 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6289: ((6,2,2)), m=13, a=[1, 4, 6, 6, 9, 10], S=[0, 5]. -/
def code_6289 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6290: ((6,2,2)), m=13, a=[1, 4, 6, 6, 9, 10], S=[0, 8]. -/
def code_6290 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6291: ((6,2,2)), m=13, a=[1, 4, 6, 6, 9, 11], S=[0, 3]. -/
def code_6291 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #6292: ((6,2,2)), m=13, a=[1, 4, 6, 6, 9, 11], S=[0, 8]. -/
def code_6292 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6293: ((6,2,2)), m=13, a=[1, 4, 6, 6, 10, 11], S=[0, 8]. -/
def code_6293 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6294: ((6,2,2)), m=13, a=[1, 4, 6, 6, 10, 12], S=[0, 2]. -/
def code_6294 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6295: ((6,2,2)), m=13, a=[1, 4, 6, 6, 11, 11], S=[0, 3]. -/
def code_6295 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6296: ((6,2,2)), m=13, a=[1, 4, 6, 6, 11, 12], S=[0, 3]. -/
def code_6296 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6297: ((6,2,2)), m=13, a=[1, 4, 6, 6, 11, 12], S=[0, 5]. -/
def code_6297 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6298: ((6,2,2)), m=13, a=[1, 4, 6, 7, 8, 8], S=[0, 10]. -/
def code_6298 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6299: ((6,2,2)), m=13, a=[1, 4, 6, 7, 8, 11], S=[0, 3]. -/
def code_6299 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6300: ((6,2,2)), m=13, a=[1, 4, 6, 7, 9, 9], S=[0, 11]. -/
def code_6300 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6301: ((6,2,2)), m=13, a=[1, 4, 6, 7, 10, 11], S=[0, 5]. -/
def code_6301 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6302: ((6,2,2)), m=13, a=[1, 4, 6, 8, 8, 11], S=[0, 10]. -/
def code_6302 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6303: ((6,2,2)), m=13, a=[1, 4, 6, 8, 9, 10], S=[0, 11]. -/
def code_6303 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6304: ((6,2,2)), m=13, a=[1, 4, 6, 8, 9, 11], S=[0, 3]. -/
def code_6304 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6305: ((6,2,2)), m=13, a=[1, 4, 6, 8, 9, 11], S=[0, 10]. -/
def code_6305 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6306: ((6,2,2)), m=13, a=[1, 4, 6, 8, 9, 12], S=[0, 11]. -/
def code_6306 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6307: ((6,2,2)), m=13, a=[1, 4, 6, 8, 10, 10], S=[0, 2]. -/
def code_6307 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6308: ((6,2,2)), m=13, a=[1, 4, 6, 8, 10, 12], S=[0, 11]. -/
def code_6308 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6309: ((6,2,2)), m=13, a=[1, 4, 6, 8, 11, 11], S=[0, 10]. -/
def code_6309 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6310: ((6,2,2)), m=13, a=[1, 4, 6, 9, 10, 11], S=[0, 5]. -/
def code_6310 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6311: ((6,2,2)), m=13, a=[1, 4, 6, 9, 10, 11], S=[0, 8]. -/
def code_6311 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6312: ((6,2,2)), m=13, a=[1, 4, 6, 9, 10, 12], S=[0, 5]. -/
def code_6312 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6313: ((6,2,2)), m=13, a=[1, 4, 6, 9, 10, 12], S=[0, 11]. -/
def code_6313 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6314: ((6,2,2)), m=13, a=[1, 4, 6, 10, 10, 11], S=[0, 5]. -/
def code_6314 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6315: ((6,2,2)), m=13, a=[1, 4, 7, 7, 7, 9], S=[0, 5]. -/
def code_6315 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6316: ((6,2,2)), m=13, a=[1, 4, 7, 7, 8, 10], S=[0, 2]. -/
def code_6316 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6317: ((6,2,2)), m=13, a=[1, 4, 7, 7, 8, 11], S=[0, 3]. -/
def code_6317 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6318: ((6,2,2)), m=13, a=[1, 4, 7, 7, 9, 9], S=[0, 5]. -/
def code_6318 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6319: ((6,2,2)), m=13, a=[1, 4, 7, 7, 10, 10], S=[0, 2]. -/
def code_6319 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((8 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6320: ((6,2,2)), m=13, a=[1, 4, 7, 7, 10, 10], S=[0, 5]. -/
def code_6320 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6321: ((6,2,2)), m=13, a=[1, 4, 7, 7, 10, 10], S=[0, 8]. -/
def code_6321 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6322: ((6,2,2)), m=13, a=[1, 4, 7, 7, 10, 11], S=[0, 5]. -/
def code_6322 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6323: ((6,2,2)), m=13, a=[1, 4, 7, 7, 11, 11], S=[0, 3]. -/
def code_6323 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6324: ((6,2,2)), m=13, a=[1, 4, 7, 8, 8, 10], S=[0, 11]. -/
def code_6324 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6325: ((6,2,2)), m=13, a=[1, 4, 7, 8, 8, 12], S=[0, 3]. -/
def code_6325 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6326: ((6,2,2)), m=13, a=[1, 4, 7, 8, 8, 12], S=[0, 11]. -/
def code_6326 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6327: ((6,2,2)), m=13, a=[1, 4, 7, 8, 10, 10], S=[0, 2]. -/
def code_6327 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6328: ((6,2,2)), m=13, a=[1, 4, 7, 8, 10, 12], S=[0, 11]. -/
def code_6328 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6329: ((6,2,2)), m=13, a=[1, 4, 7, 9, 11, 11], S=[0, 5]. -/
def code_6329 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6330: ((6,2,2)), m=13, a=[1, 4, 7, 9, 11, 12], S=[0, 8]. -/
def code_6330 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6331: ((6,2,2)), m=13, a=[1, 4, 7, 10, 10, 11], S=[0, 8]. -/
def code_6331 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6332: ((6,2,2)), m=13, a=[1, 4, 7, 10, 11, 11], S=[0, 8]. -/
def code_6332 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6333: ((6,2,2)), m=13, a=[1, 4, 8, 8, 9, 10], S=[0, 7]. -/
def code_6333 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6334: ((6,2,2)), m=13, a=[1, 4, 8, 8, 10, 12], S=[0, 2]. -/
def code_6334 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6335: ((6,2,2)), m=13, a=[1, 4, 8, 8, 10, 12], S=[0, 6]. -/
def code_6335 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6336: ((6,2,2)), m=13, a=[1, 4, 8, 8, 10, 12], S=[0, 11]. -/
def code_6336 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6337: ((6,2,2)), m=13, a=[1, 4, 8, 8, 11, 11], S=[0, 10]. -/
def code_6337 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6338: ((6,2,2)), m=13, a=[1, 4, 8, 9, 10, 11], S=[0, 7]. -/
def code_6338 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6339: ((6,2,2)), m=13, a=[1, 4, 8, 9, 10, 12], S=[0, 11]. -/
def code_6339 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6340: ((6,2,2)), m=13, a=[1, 4, 8, 9, 11, 11], S=[0, 6]. -/
def code_6340 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6341: ((6,2,2)), m=13, a=[1, 4, 8, 9, 11, 11], S=[0, 10]. -/
def code_6341 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6342: ((6,2,2)), m=13, a=[1, 4, 8, 10, 10, 11], S=[0, 6]. -/
def code_6342 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6343: ((6,2,2)), m=13, a=[1, 4, 8, 10, 10, 11], S=[0, 7]. -/
def code_6343 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6344: ((6,2,2)), m=13, a=[1, 4, 10, 11, 11, 12], S=[0, 5]. -/
def code_6344 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (4 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6345: ((6,2,2)), m=13, a=[1, 5, 5, 5, 10, 12], S=[0, 11]. -/
def code_6345 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6346: ((6,2,2)), m=13, a=[1, 5, 5, 5, 12, 12], S=[0, 3]. -/
def code_6346 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6347: ((6,2,2)), m=13, a=[1, 5, 5, 5, 12, 12], S=[0, 11]. -/
def code_6347 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6348: ((6,2,2)), m=13, a=[1, 5, 5, 6, 6, 9], S=[0, 3]. -/
def code_6348 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6349: ((6,2,2)), m=13, a=[1, 5, 5, 6, 6, 10], S=[0, 4]. -/
def code_6349 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-11 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6350: ((6,2,2)), m=13, a=[1, 5, 5, 6, 7, 9], S=[0, 10]. -/
def code_6350 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6351: ((6,2,2)), m=13, a=[1, 5, 5, 6, 7, 10], S=[0, 4]. -/
def code_6351 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6352: ((6,2,2)), m=13, a=[1, 5, 5, 6, 9, 10], S=[0, 11]. -/
def code_6352 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6353: ((6,2,2)), m=13, a=[1, 5, 5, 6, 9, 11], S=[0, 10]. -/
def code_6353 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6354: ((6,2,2)), m=13, a=[1, 5, 5, 6, 9, 12], S=[0, 2]. -/
def code_6354 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6355: ((6,2,2)), m=13, a=[1, 5, 5, 6, 9, 12], S=[0, 10]. -/
def code_6355 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6356: ((6,2,2)), m=13, a=[1, 5, 5, 6, 10, 10], S=[0, 4]. -/
def code_6356 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6357: ((6,2,2)), m=13, a=[1, 5, 5, 6, 11, 12], S=[0, 4]. -/
def code_6357 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6358: ((6,2,2)), m=13, a=[1, 5, 5, 6, 11, 12], S=[0, 10]. -/
def code_6358 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6359: ((6,2,2)), m=13, a=[1, 5, 5, 7, 7, 9], S=[0, 10]. -/
def code_6359 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6360: ((6,2,2)), m=13, a=[1, 5, 5, 7, 9, 11], S=[0, 10]. -/
def code_6360 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6361: ((6,2,2)), m=13, a=[1, 5, 5, 7, 10, 10], S=[0, 11]. -/
def code_6361 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6362: ((6,2,2)), m=13, a=[1, 5, 5, 7, 10, 12], S=[0, 11]. -/
def code_6362 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6363: ((6,2,2)), m=13, a=[1, 5, 5, 7, 11, 11], S=[0, 4]. -/
def code_6363 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6364: ((6,2,2)), m=13, a=[1, 5, 5, 7, 11, 11], S=[0, 10]. -/
def code_6364 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6365: ((6,2,2)), m=13, a=[1, 5, 5, 9, 9, 10], S=[0, 2]. -/
def code_6365 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6366: ((6,2,2)), m=13, a=[1, 5, 5, 9, 9, 10], S=[0, 6]. -/
def code_6366 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6367: ((6,2,2)), m=13, a=[1, 5, 5, 9, 9, 10], S=[0, 11]. -/
def code_6367 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6368: ((6,2,2)), m=13, a=[1, 5, 5, 9, 9, 11], S=[0, 3]. -/
def code_6368 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6369: ((6,2,2)), m=13, a=[1, 5, 5, 9, 10, 10], S=[0, 7]. -/
def code_6369 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6370: ((6,2,2)), m=13, a=[1, 5, 5, 9, 11, 11], S=[0, 10]. -/
def code_6370 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6371: ((6,2,2)), m=13, a=[1, 5, 5, 9, 11, 12], S=[0, 7]. -/
def code_6371 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6372: ((6,2,2)), m=13, a=[1, 5, 5, 9, 11, 12], S=[0, 10]. -/
def code_6372 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6373: ((6,2,2)), m=13, a=[1, 5, 5, 10, 10, 12], S=[0, 11]. -/
def code_6373 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6374: ((6,2,2)), m=13, a=[1, 5, 5, 10, 12, 12], S=[0, 11]. -/
def code_6374 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6375: ((6,2,2)), m=13, a=[1, 5, 5, 11, 11, 12], S=[0, 10]. -/
def code_6375 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6376: ((6,2,2)), m=13, a=[1, 5, 6, 6, 9, 10], S=[0, 2]. -/
def code_6376 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6377: ((6,2,2)), m=13, a=[1, 5, 6, 6, 9, 11], S=[0, 3]. -/
def code_6377 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6378: ((6,2,2)), m=13, a=[1, 5, 6, 6, 10, 10], S=[0, 4]. -/
def code_6378 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6379: ((6,2,2)), m=13, a=[1, 5, 6, 6, 10, 10], S=[0, 11]. -/
def code_6379 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6380: ((6,2,2)), m=13, a=[1, 5, 6, 6, 10, 11], S=[0, 4]. -/
def code_6380 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6381: ((6,2,2)), m=13, a=[1, 5, 6, 6, 10, 12], S=[0, 11]. -/
def code_6381 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6382: ((6,2,2)), m=13, a=[1, 5, 6, 6, 11, 11], S=[0, 4]. -/
def code_6382 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6383: ((6,2,2)), m=13, a=[1, 5, 6, 7, 8, 11], S=[0, 3]. -/
def code_6383 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6384: ((6,2,2)), m=13, a=[1, 5, 6, 8, 9, 10], S=[0, 2]. -/
def code_6384 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6385: ((6,2,2)), m=13, a=[1, 5, 6, 8, 9, 10], S=[0, 11]. -/
def code_6385 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6386: ((6,2,2)), m=13, a=[1, 5, 6, 8, 9, 11], S=[0, 3]. -/
def code_6386 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6387: ((6,2,2)), m=13, a=[1, 5, 6, 8, 10, 10], S=[0, 2]. -/
def code_6387 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6388: ((6,2,2)), m=13, a=[1, 5, 6, 8, 10, 11], S=[0, 4]. -/
def code_6388 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-11 : ℚ) / 13)]

/-- Catalogue code #6389: ((6,2,2)), m=13, a=[1, 5, 6, 9, 9, 10], S=[0, 2]. -/
def code_6389 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6390: ((6,2,2)), m=13, a=[1, 5, 6, 9, 11, 12], S=[0, 10]. -/
def code_6390 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6391: ((6,2,2)), m=13, a=[1, 5, 6, 10, 10, 12], S=[0, 11]. -/
def code_6391 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6392: ((6,2,2)), m=13, a=[1, 5, 7, 7, 8, 10], S=[0, 9]. -/
def code_6392 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6393: ((6,2,2)), m=13, a=[1, 5, 7, 7, 9, 9], S=[0, 2]. -/
def code_6393 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-11 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6394: ((6,2,2)), m=13, a=[1, 5, 7, 7, 9, 9], S=[0, 10]. -/
def code_6394 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6395: ((6,2,2)), m=13, a=[1, 5, 7, 7, 9, 10], S=[0, 2]. -/
def code_6395 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6396: ((6,2,2)), m=13, a=[1, 5, 7, 7, 9, 11], S=[0, 10]. -/
def code_6396 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6397: ((6,2,2)), m=13, a=[1, 5, 7, 7, 10, 10], S=[0, 9]. -/
def code_6397 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6398: ((6,2,2)), m=13, a=[1, 5, 7, 7, 10, 11], S=[0, 4]. -/
def code_6398 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6399: ((6,2,2)), m=13, a=[1, 5, 7, 8, 9, 10], S=[0, 2]. -/
def code_6399 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6400: ((6,2,2)), m=13, a=[1, 5, 7, 8, 9, 11], S=[0, 3]. -/
def code_6400 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6401: ((6,2,2)), m=13, a=[1, 5, 7, 8, 10, 10], S=[0, 9]. -/
def code_6401 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6402: ((6,2,2)), m=13, a=[1, 5, 7, 8, 10, 11], S=[0, 4]. -/
def code_6402 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6403: ((6,2,2)), m=13, a=[1, 5, 7, 8, 12, 12], S=[0, 3]. -/
def code_6403 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6404: ((6,2,2)), m=13, a=[1, 5, 7, 9, 9, 11], S=[0, 10]. -/
def code_6404 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6405: ((6,2,2)), m=13, a=[1, 5, 7, 9, 9, 12], S=[0, 2]. -/
def code_6405 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6406: ((6,2,2)), m=13, a=[1, 5, 7, 9, 10, 10], S=[0, 2]. -/
def code_6406 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6407: ((6,2,2)), m=13, a=[1, 5, 7, 9, 10, 12], S=[0, 2]. -/
def code_6407 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6408: ((6,2,2)), m=13, a=[1, 5, 7, 9, 11, 11], S=[0, 10]. -/
def code_6408 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6409: ((6,2,2)), m=13, a=[1, 5, 7, 9, 11, 12], S=[0, 3]. -/
def code_6409 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6410: ((6,2,2)), m=13, a=[1, 5, 7, 10, 10, 11], S=[0, 9]. -/
def code_6410 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6411: ((6,2,2)), m=13, a=[1, 5, 7, 10, 10, 12], S=[0, 2]. -/
def code_6411 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6412: ((6,2,2)), m=13, a=[1, 5, 7, 10, 10, 12], S=[0, 11]. -/
def code_6412 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6413: ((6,2,2)), m=13, a=[1, 5, 7, 10, 11, 11], S=[0, 9]. -/
def code_6413 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6414: ((6,2,2)), m=13, a=[1, 5, 7, 11, 11, 12], S=[0, 4]. -/
def code_6414 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (7 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6415: ((6,2,2)), m=13, a=[1, 5, 8, 8, 9, 12], S=[0, 2]. -/
def code_6415 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6416: ((6,2,2)), m=13, a=[1, 5, 8, 8, 11, 11], S=[0, 4]. -/
def code_6416 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6417: ((6,2,2)), m=13, a=[1, 5, 8, 8, 11, 12], S=[0, 4]. -/
def code_6417 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6418: ((6,2,2)), m=13, a=[1, 5, 8, 9, 10, 11], S=[0, 6]. -/
def code_6418 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6419: ((6,2,2)), m=13, a=[1, 5, 8, 9, 11, 11], S=[0, 10]. -/
def code_6419 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6420: ((6,2,2)), m=13, a=[1, 5, 8, 10, 10, 10], S=[0, 9]. -/
def code_6420 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6421: ((6,2,2)), m=13, a=[1, 5, 8, 10, 10, 12], S=[0, 6]. -/
def code_6421 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6422: ((6,2,2)), m=13, a=[1, 5, 8, 10, 12, 12], S=[0, 6]. -/
def code_6422 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6423: ((6,2,2)), m=13, a=[1, 5, 8, 11, 11, 12], S=[0, 4]. -/
def code_6423 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #6424: ((6,2,2)), m=13, a=[1, 5, 9, 9, 10, 10], S=[0, 7]. -/
def code_6424 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6425: ((6,2,2)), m=13, a=[1, 5, 9, 9, 11, 11], S=[0, 6]. -/
def code_6425 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6426: ((6,2,2)), m=13, a=[1, 5, 9, 9, 11, 12], S=[0, 6]. -/
def code_6426 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6427: ((6,2,2)), m=13, a=[1, 5, 9, 10, 10, 11], S=[0, 6]. -/
def code_6427 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6428: ((6,2,2)), m=13, a=[1, 5, 9, 10, 10, 12], S=[0, 2]. -/
def code_6428 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6429: ((6,2,2)), m=13, a=[1, 5, 9, 10, 10, 12], S=[0, 6]. -/
def code_6429 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6430: ((6,2,2)), m=13, a=[1, 5, 9, 10, 11, 12], S=[0, 6]. -/
def code_6430 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6431: ((6,2,2)), m=13, a=[1, 5, 9, 11, 11, 12], S=[0, 6]. -/
def code_6431 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6432: ((6,2,2)), m=13, a=[1, 5, 10, 10, 11, 12], S=[0, 6]. -/
def code_6432 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6433: ((6,2,2)), m=13, a=[1, 5, 10, 10, 12, 12], S=[0, 6]. -/
def code_6433 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6434: ((6,2,2)), m=13, a=[1, 5, 11, 11, 11, 12], S=[0, 6]. -/
def code_6434 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (5 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (6 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6435: ((6,2,2)), m=13, a=[1, 6, 6, 7, 9, 9], S=[0, 8]. -/
def code_6435 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6436: ((6,2,2)), m=13, a=[1, 6, 6, 8, 8, 9], S=[0, 10]. -/
def code_6436 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6437: ((6,2,2)), m=13, a=[1, 6, 6, 8, 8, 10], S=[0, 4]. -/
def code_6437 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6438: ((6,2,2)), m=13, a=[1, 6, 6, 8, 8, 10], S=[0, 9]. -/
def code_6438 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6439: ((6,2,2)), m=13, a=[1, 6, 6, 8, 8, 11], S=[0, 10]. -/
def code_6439 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6440: ((6,2,2)), m=13, a=[1, 6, 6, 8, 9, 11], S=[0, 10]. -/
def code_6440 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6441: ((6,2,2)), m=13, a=[1, 6, 6, 8, 11, 12], S=[0, 9]. -/
def code_6441 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6442: ((6,2,2)), m=13, a=[1, 6, 6, 9, 9, 9], S=[0, 2]. -/
def code_6442 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6443: ((6,2,2)), m=13, a=[1, 6, 6, 9, 9, 9], S=[0, 8]. -/
def code_6443 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-9 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6444: ((6,2,2)), m=13, a=[1, 6, 6, 9, 10, 10], S=[0, 8]. -/
def code_6444 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6445: ((6,2,2)), m=13, a=[1, 6, 6, 9, 10, 11], S=[0, 8]. -/
def code_6445 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6446: ((6,2,2)), m=13, a=[1, 6, 6, 9, 12, 12], S=[0, 10]. -/
def code_6446 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6447: ((6,2,2)), m=13, a=[1, 6, 6, 10, 10, 12], S=[0, 8]. -/
def code_6447 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6448: ((6,2,2)), m=13, a=[1, 6, 6, 10, 10, 12], S=[0, 11]. -/
def code_6448 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6449: ((6,2,2)), m=13, a=[1, 6, 6, 10, 11, 11], S=[0, 9]. -/
def code_6449 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6450: ((6,2,2)), m=13, a=[1, 6, 6, 10, 11, 12], S=[0, 9]. -/
def code_6450 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6451: ((6,2,2)), m=13, a=[1, 6, 6, 11, 11, 11], S=[0, 10]. -/
def code_6451 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (6 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6452: ((6,2,2)), m=13, a=[1, 6, 7, 8, 8, 9], S=[0, 3]. -/
def code_6452 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6453: ((6,2,2)), m=13, a=[1, 6, 7, 8, 8, 10], S=[0, 4]. -/
def code_6453 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6454: ((6,2,2)), m=13, a=[1, 6, 7, 8, 9, 9], S=[0, 3]. -/
def code_6454 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6455: ((6,2,2)), m=13, a=[1, 6, 7, 8, 9, 9], S=[0, 11]. -/
def code_6455 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6456: ((6,2,2)), m=13, a=[1, 6, 7, 8, 9, 10], S=[0, 11]. -/
def code_6456 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6457: ((6,2,2)), m=13, a=[1, 6, 7, 8, 10, 10], S=[0, 2]. -/
def code_6457 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6458: ((6,2,2)), m=13, a=[1, 6, 7, 8, 10, 12], S=[0, 2]. -/
def code_6458 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6459: ((6,2,2)), m=13, a=[1, 6, 7, 8, 11, 12], S=[0, 3]. -/
def code_6459 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6460: ((6,2,2)), m=13, a=[1, 6, 7, 9, 9, 9], S=[0, 8]. -/
def code_6460 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((9 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6461: ((6,2,2)), m=13, a=[1, 6, 7, 9, 9, 10], S=[0, 5]. -/
def code_6461 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6462: ((6,2,2)), m=13, a=[1, 6, 7, 9, 9, 10], S=[0, 8]. -/
def code_6462 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6463: ((6,2,2)), m=13, a=[1, 6, 7, 9, 9, 10], S=[0, 11]. -/
def code_6463 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6464: ((6,2,2)), m=13, a=[1, 6, 7, 9, 9, 11], S=[0, 5]. -/
def code_6464 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6465: ((6,2,2)), m=13, a=[1, 6, 7, 9, 10, 10], S=[0, 2]. -/
def code_6465 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((8 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6466: ((6,2,2)), m=13, a=[1, 6, 7, 9, 11, 11], S=[0, 3]. -/
def code_6466 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6467: ((6,2,2)), m=13, a=[1, 6, 7, 10, 10, 11], S=[0, 4]. -/
def code_6467 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #6468: ((6,2,2)), m=13, a=[1, 6, 7, 10, 10, 11], S=[0, 5]. -/
def code_6468 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6469: ((6,2,2)), m=13, a=[1, 6, 7, 10, 10, 12], S=[0, 5]. -/
def code_6469 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6470: ((6,2,2)), m=13, a=[1, 6, 7, 10, 11, 11], S=[0, 4]. -/
def code_6470 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6471: ((6,2,2)), m=13, a=[1, 6, 7, 10, 11, 12], S=[0, 5]. -/
def code_6471 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6472: ((6,2,2)), m=13, a=[1, 6, 8, 8, 9, 10], S=[0, 2]. -/
def code_6472 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6473: ((6,2,2)), m=13, a=[1, 6, 8, 8, 9, 11], S=[0, 3]. -/
def code_6473 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6474: ((6,2,2)), m=13, a=[1, 6, 8, 8, 9, 11], S=[0, 10]. -/
def code_6474 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6475: ((6,2,2)), m=13, a=[1, 6, 8, 8, 9, 12], S=[0, 2]. -/
def code_6475 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #6476: ((6,2,2)), m=13, a=[1, 6, 8, 8, 9, 12], S=[0, 3]. -/
def code_6476 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #6477: ((6,2,2)), m=13, a=[1, 6, 8, 8, 10, 11], S=[0, 4]. -/
def code_6477 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6478: ((6,2,2)), m=13, a=[1, 6, 8, 8, 10, 12], S=[0, 2]. -/
def code_6478 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6479: ((6,2,2)), m=13, a=[1, 6, 8, 8, 10, 12], S=[0, 4]. -/
def code_6479 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((11 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6480: ((6,2,2)), m=13, a=[1, 6, 8, 8, 11, 11], S=[0, 9]. -/
def code_6480 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((9 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6481: ((6,2,2)), m=13, a=[1, 6, 8, 8, 11, 11], S=[0, 10]. -/
def code_6481 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6482: ((6,2,2)), m=13, a=[1, 6, 8, 8, 11, 12], S=[0, 3]. -/
def code_6482 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #6483: ((6,2,2)), m=13, a=[1, 6, 8, 8, 11, 12], S=[0, 4]. -/
def code_6483 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #6484: ((6,2,2)), m=13, a=[1, 6, 8, 8, 11, 12], S=[0, 10]. -/
def code_6484 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6485: ((6,2,2)), m=13, a=[1, 6, 8, 9, 9, 10], S=[0, 11]. -/
def code_6485 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-7 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6486: ((6,2,2)), m=13, a=[1, 6, 8, 9, 10, 12], S=[0, 2]. -/
def code_6486 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6487: ((6,2,2)), m=13, a=[1, 6, 8, 9, 10, 12], S=[0, 11]. -/
def code_6487 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6488: ((6,2,2)), m=13, a=[1, 6, 8, 9, 11, 11], S=[0, 10]. -/
def code_6488 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6489: ((6,2,2)), m=13, a=[1, 6, 8, 9, 11, 12], S=[0, 3]. -/
def code_6489 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6490: ((6,2,2)), m=13, a=[1, 6, 8, 10, 10, 11], S=[0, 9]. -/
def code_6490 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6491: ((6,2,2)), m=13, a=[1, 6, 8, 10, 10, 12], S=[0, 2]. -/
def code_6491 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6492: ((6,2,2)), m=13, a=[1, 6, 8, 10, 11, 12], S=[0, 4]. -/
def code_6492 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #6493: ((6,2,2)), m=13, a=[1, 6, 9, 9, 10, 10], S=[0, 8]. -/
def code_6493 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #6494: ((6,2,2)), m=13, a=[1, 6, 9, 9, 10, 11], S=[0, 8]. -/
def code_6494 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6495: ((6,2,2)), m=13, a=[1, 6, 9, 10, 11, 12], S=[0, 5]. -/
def code_6495 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6496: ((6,2,2)), m=13, a=[1, 6, 10, 10, 11, 11], S=[0, 4]. -/
def code_6496 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6497: ((6,2,2)), m=13, a=[1, 6, 10, 10, 11, 12], S=[0, 5]. -/
def code_6497 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((11 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #6498: ((6,2,2)), m=13, a=[1, 7, 7, 8, 8, 9], S=[0, 3]. -/
def code_6498 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #6499: ((6,2,2)), m=13, a=[1, 7, 7, 8, 10, 10], S=[0, 9]. -/
def code_6499 : ExampleData 6 13 2 where
  a := ![(1 : ZMod 13), (7 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-7 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]
def checks : List Bool :=
  [decide code_6000.OK,
   decide code_6001.OK,
   decide code_6002.OK,
   decide code_6003.OK,
   decide code_6004.OK,
   decide code_6005.OK,
   decide code_6006.OK,
   decide code_6007.OK,
   decide code_6008.OK,
   decide code_6009.OK,
   decide code_6010.OK,
   decide code_6011.OK,
   decide code_6012.OK,
   decide code_6013.OK,
   decide code_6014.OK,
   decide code_6015.OK,
   decide code_6016.OK,
   decide code_6017.OK,
   decide code_6018.OK,
   decide code_6019.OK,
   decide code_6020.OK,
   decide code_6021.OK,
   decide code_6022.OK,
   decide code_6023.OK,
   decide code_6024.OK,
   decide code_6025.OK,
   decide code_6026.OK,
   decide code_6027.OK,
   decide code_6028.OK,
   decide code_6029.OK,
   decide code_6030.OK,
   decide code_6031.OK,
   decide code_6032.OK,
   decide code_6033.OK,
   decide code_6034.OK,
   decide code_6035.OK,
   decide code_6036.OK,
   decide code_6037.OK,
   decide code_6038.OK,
   decide code_6039.OK,
   decide code_6040.OK,
   decide code_6041.OK,
   decide code_6042.OK,
   decide code_6043.OK,
   decide code_6044.OK,
   decide code_6045.OK,
   decide code_6046.OK,
   decide code_6047.OK,
   decide code_6048.OK,
   decide code_6049.OK,
   decide code_6050.OK,
   decide code_6051.OK,
   decide code_6052.OK,
   decide code_6053.OK,
   decide code_6054.OK,
   decide code_6055.OK,
   decide code_6056.OK,
   decide code_6057.OK,
   decide code_6058.OK,
   decide code_6059.OK,
   decide code_6060.OK,
   decide code_6061.OK,
   decide code_6062.OK,
   decide code_6063.OK,
   decide code_6064.OK,
   decide code_6065.OK,
   decide code_6066.OK,
   decide code_6067.OK,
   decide code_6068.OK,
   decide code_6069.OK,
   decide code_6070.OK,
   decide code_6071.OK,
   decide code_6072.OK,
   decide code_6073.OK,
   decide code_6074.OK,
   decide code_6075.OK,
   decide code_6076.OK,
   decide code_6077.OK,
   decide code_6078.OK,
   decide code_6079.OK,
   decide code_6080.OK,
   decide code_6081.OK,
   decide code_6082.OK,
   decide code_6083.OK,
   decide code_6084.OK,
   decide code_6085.OK,
   decide code_6086.OK,
   decide code_6087.OK,
   decide code_6088.OK,
   decide code_6089.OK,
   decide code_6090.OK,
   decide code_6091.OK,
   decide code_6092.OK,
   decide code_6093.OK,
   decide code_6094.OK,
   decide code_6095.OK,
   decide code_6096.OK,
   decide code_6097.OK,
   decide code_6098.OK,
   decide code_6099.OK,
   decide code_6100.OK,
   decide code_6101.OK,
   decide code_6102.OK,
   decide code_6103.OK,
   decide code_6104.OK,
   decide code_6105.OK,
   decide code_6106.OK,
   decide code_6107.OK,
   decide code_6108.OK,
   decide code_6109.OK,
   decide code_6110.OK,
   decide code_6111.OK,
   decide code_6112.OK,
   decide code_6113.OK,
   decide code_6114.OK,
   decide code_6115.OK,
   decide code_6116.OK,
   decide code_6117.OK,
   decide code_6118.OK,
   decide code_6119.OK,
   decide code_6120.OK,
   decide code_6121.OK,
   decide code_6122.OK,
   decide code_6123.OK,
   decide code_6124.OK,
   decide code_6125.OK,
   decide code_6126.OK,
   decide code_6127.OK,
   decide code_6128.OK,
   decide code_6129.OK,
   decide code_6130.OK,
   decide code_6131.OK,
   decide code_6132.OK,
   decide code_6133.OK,
   decide code_6134.OK,
   decide code_6135.OK,
   decide code_6136.OK,
   decide code_6137.OK,
   decide code_6138.OK,
   decide code_6139.OK,
   decide code_6140.OK,
   decide code_6141.OK,
   decide code_6142.OK,
   decide code_6143.OK,
   decide code_6144.OK,
   decide code_6145.OK,
   decide code_6146.OK,
   decide code_6147.OK,
   decide code_6148.OK,
   decide code_6149.OK,
   decide code_6150.OK,
   decide code_6151.OK,
   decide code_6152.OK,
   decide code_6153.OK,
   decide code_6154.OK,
   decide code_6155.OK,
   decide code_6156.OK,
   decide code_6157.OK,
   decide code_6158.OK,
   decide code_6159.OK,
   decide code_6160.OK,
   decide code_6161.OK,
   decide code_6162.OK,
   decide code_6163.OK,
   decide code_6164.OK,
   decide code_6165.OK,
   decide code_6166.OK,
   decide code_6167.OK,
   decide code_6168.OK,
   decide code_6169.OK,
   decide code_6170.OK,
   decide code_6171.OK,
   decide code_6172.OK,
   decide code_6173.OK,
   decide code_6174.OK,
   decide code_6175.OK,
   decide code_6176.OK,
   decide code_6177.OK,
   decide code_6178.OK,
   decide code_6179.OK,
   decide code_6180.OK,
   decide code_6181.OK,
   decide code_6182.OK,
   decide code_6183.OK,
   decide code_6184.OK,
   decide code_6185.OK,
   decide code_6186.OK,
   decide code_6187.OK,
   decide code_6188.OK,
   decide code_6189.OK,
   decide code_6190.OK,
   decide code_6191.OK,
   decide code_6192.OK,
   decide code_6193.OK,
   decide code_6194.OK,
   decide code_6195.OK,
   decide code_6196.OK,
   decide code_6197.OK,
   decide code_6198.OK,
   decide code_6199.OK,
   decide code_6200.OK,
   decide code_6201.OK,
   decide code_6202.OK,
   decide code_6203.OK,
   decide code_6204.OK,
   decide code_6205.OK,
   decide code_6206.OK,
   decide code_6207.OK,
   decide code_6208.OK,
   decide code_6209.OK,
   decide code_6210.OK,
   decide code_6211.OK,
   decide code_6212.OK,
   decide code_6213.OK,
   decide code_6214.OK,
   decide code_6215.OK,
   decide code_6216.OK,
   decide code_6217.OK,
   decide code_6218.OK,
   decide code_6219.OK,
   decide code_6220.OK,
   decide code_6221.OK,
   decide code_6222.OK,
   decide code_6223.OK,
   decide code_6224.OK,
   decide code_6225.OK,
   decide code_6226.OK,
   decide code_6227.OK,
   decide code_6228.OK,
   decide code_6229.OK,
   decide code_6230.OK,
   decide code_6231.OK,
   decide code_6232.OK,
   decide code_6233.OK,
   decide code_6234.OK,
   decide code_6235.OK,
   decide code_6236.OK,
   decide code_6237.OK,
   decide code_6238.OK,
   decide code_6239.OK,
   decide code_6240.OK,
   decide code_6241.OK,
   decide code_6242.OK,
   decide code_6243.OK,
   decide code_6244.OK,
   decide code_6245.OK,
   decide code_6246.OK,
   decide code_6247.OK,
   decide code_6248.OK,
   decide code_6249.OK,
   decide code_6250.OK,
   decide code_6251.OK,
   decide code_6252.OK,
   decide code_6253.OK,
   decide code_6254.OK,
   decide code_6255.OK,
   decide code_6256.OK,
   decide code_6257.OK,
   decide code_6258.OK,
   decide code_6259.OK,
   decide code_6260.OK,
   decide code_6261.OK,
   decide code_6262.OK,
   decide code_6263.OK,
   decide code_6264.OK,
   decide code_6265.OK,
   decide code_6266.OK,
   decide code_6267.OK,
   decide code_6268.OK,
   decide code_6269.OK,
   decide code_6270.OK,
   decide code_6271.OK,
   decide code_6272.OK,
   decide code_6273.OK,
   decide code_6274.OK,
   decide code_6275.OK,
   decide code_6276.OK,
   decide code_6277.OK,
   decide code_6278.OK,
   decide code_6279.OK,
   decide code_6280.OK,
   decide code_6281.OK,
   decide code_6282.OK,
   decide code_6283.OK,
   decide code_6284.OK,
   decide code_6285.OK,
   decide code_6286.OK,
   decide code_6287.OK,
   decide code_6288.OK,
   decide code_6289.OK,
   decide code_6290.OK,
   decide code_6291.OK,
   decide code_6292.OK,
   decide code_6293.OK,
   decide code_6294.OK,
   decide code_6295.OK,
   decide code_6296.OK,
   decide code_6297.OK,
   decide code_6298.OK,
   decide code_6299.OK,
   decide code_6300.OK,
   decide code_6301.OK,
   decide code_6302.OK,
   decide code_6303.OK,
   decide code_6304.OK,
   decide code_6305.OK,
   decide code_6306.OK,
   decide code_6307.OK,
   decide code_6308.OK,
   decide code_6309.OK,
   decide code_6310.OK,
   decide code_6311.OK,
   decide code_6312.OK,
   decide code_6313.OK,
   decide code_6314.OK,
   decide code_6315.OK,
   decide code_6316.OK,
   decide code_6317.OK,
   decide code_6318.OK,
   decide code_6319.OK,
   decide code_6320.OK,
   decide code_6321.OK,
   decide code_6322.OK,
   decide code_6323.OK,
   decide code_6324.OK,
   decide code_6325.OK,
   decide code_6326.OK,
   decide code_6327.OK,
   decide code_6328.OK,
   decide code_6329.OK,
   decide code_6330.OK,
   decide code_6331.OK,
   decide code_6332.OK,
   decide code_6333.OK,
   decide code_6334.OK,
   decide code_6335.OK,
   decide code_6336.OK,
   decide code_6337.OK,
   decide code_6338.OK,
   decide code_6339.OK,
   decide code_6340.OK,
   decide code_6341.OK,
   decide code_6342.OK,
   decide code_6343.OK,
   decide code_6344.OK,
   decide code_6345.OK,
   decide code_6346.OK,
   decide code_6347.OK,
   decide code_6348.OK,
   decide code_6349.OK,
   decide code_6350.OK,
   decide code_6351.OK,
   decide code_6352.OK,
   decide code_6353.OK,
   decide code_6354.OK,
   decide code_6355.OK,
   decide code_6356.OK,
   decide code_6357.OK,
   decide code_6358.OK,
   decide code_6359.OK,
   decide code_6360.OK,
   decide code_6361.OK,
   decide code_6362.OK,
   decide code_6363.OK,
   decide code_6364.OK,
   decide code_6365.OK,
   decide code_6366.OK,
   decide code_6367.OK,
   decide code_6368.OK,
   decide code_6369.OK,
   decide code_6370.OK,
   decide code_6371.OK,
   decide code_6372.OK,
   decide code_6373.OK,
   decide code_6374.OK,
   decide code_6375.OK,
   decide code_6376.OK,
   decide code_6377.OK,
   decide code_6378.OK,
   decide code_6379.OK,
   decide code_6380.OK,
   decide code_6381.OK,
   decide code_6382.OK,
   decide code_6383.OK,
   decide code_6384.OK,
   decide code_6385.OK,
   decide code_6386.OK,
   decide code_6387.OK,
   decide code_6388.OK,
   decide code_6389.OK,
   decide code_6390.OK,
   decide code_6391.OK,
   decide code_6392.OK,
   decide code_6393.OK,
   decide code_6394.OK,
   decide code_6395.OK,
   decide code_6396.OK,
   decide code_6397.OK,
   decide code_6398.OK,
   decide code_6399.OK,
   decide code_6400.OK,
   decide code_6401.OK,
   decide code_6402.OK,
   decide code_6403.OK,
   decide code_6404.OK,
   decide code_6405.OK,
   decide code_6406.OK,
   decide code_6407.OK,
   decide code_6408.OK,
   decide code_6409.OK,
   decide code_6410.OK,
   decide code_6411.OK,
   decide code_6412.OK,
   decide code_6413.OK,
   decide code_6414.OK,
   decide code_6415.OK,
   decide code_6416.OK,
   decide code_6417.OK,
   decide code_6418.OK,
   decide code_6419.OK,
   decide code_6420.OK,
   decide code_6421.OK,
   decide code_6422.OK,
   decide code_6423.OK,
   decide code_6424.OK,
   decide code_6425.OK,
   decide code_6426.OK,
   decide code_6427.OK,
   decide code_6428.OK,
   decide code_6429.OK,
   decide code_6430.OK,
   decide code_6431.OK,
   decide code_6432.OK,
   decide code_6433.OK,
   decide code_6434.OK,
   decide code_6435.OK,
   decide code_6436.OK,
   decide code_6437.OK,
   decide code_6438.OK,
   decide code_6439.OK,
   decide code_6440.OK,
   decide code_6441.OK,
   decide code_6442.OK,
   decide code_6443.OK,
   decide code_6444.OK,
   decide code_6445.OK,
   decide code_6446.OK,
   decide code_6447.OK,
   decide code_6448.OK,
   decide code_6449.OK,
   decide code_6450.OK,
   decide code_6451.OK,
   decide code_6452.OK,
   decide code_6453.OK,
   decide code_6454.OK,
   decide code_6455.OK,
   decide code_6456.OK,
   decide code_6457.OK,
   decide code_6458.OK,
   decide code_6459.OK,
   decide code_6460.OK,
   decide code_6461.OK,
   decide code_6462.OK,
   decide code_6463.OK,
   decide code_6464.OK,
   decide code_6465.OK,
   decide code_6466.OK,
   decide code_6467.OK,
   decide code_6468.OK,
   decide code_6469.OK,
   decide code_6470.OK,
   decide code_6471.OK,
   decide code_6472.OK,
   decide code_6473.OK,
   decide code_6474.OK,
   decide code_6475.OK,
   decide code_6476.OK,
   decide code_6477.OK,
   decide code_6478.OK,
   decide code_6479.OK,
   decide code_6480.OK,
   decide code_6481.OK,
   decide code_6482.OK,
   decide code_6483.OK,
   decide code_6484.OK,
   decide code_6485.OK,
   decide code_6486.OK,
   decide code_6487.OK,
   decide code_6488.OK,
   decide code_6489.OK,
   decide code_6490.OK,
   decide code_6491.OK,
   decide code_6492.OK,
   decide code_6493.OK,
   decide code_6494.OK,
   decide code_6495.OK,
   decide code_6496.OK,
   decide code_6497.OK,
   decide code_6498.OK,
   decide code_6499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk012
