import SS

namespace Catalogue.Chunk026

open SS SS.Verify

/-- Catalogue code #13000: ((6,2,2)), m=17, a=[5, 6, 10, 10, 11, 15], S=[0, 14]. -/
def code_13000 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13001: ((6,2,2)), m=17, a=[5, 6, 10, 12, 13, 16], S=[0, 14]. -/
def code_13001 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13002: ((6,2,2)), m=17, a=[5, 6, 10, 13, 14, 14], S=[0, 16]. -/
def code_13002 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (6 : ZMod 17), (10 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13003: ((6,2,2)), m=17, a=[5, 7, 7, 9, 11, 15], S=[0, 14]. -/
def code_13003 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #13004: ((6,2,2)), m=17, a=[5, 7, 8, 10, 11, 11], S=[0, 3]. -/
def code_13004 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-13 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #13005: ((6,2,2)), m=17, a=[5, 7, 8, 10, 11, 11], S=[0, 15]. -/
def code_13005 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #13006: ((6,2,2)), m=17, a=[5, 7, 8, 10, 11, 14], S=[0, 15]. -/
def code_13006 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #13007: ((6,2,2)), m=17, a=[5, 7, 9, 11, 11, 15], S=[0, 14]. -/
def code_13007 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((15 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13008: ((6,2,2)), m=17, a=[5, 7, 11, 12, 14, 14], S=[0, 13]. -/
def code_13008 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #13009: ((6,2,2)), m=17, a=[5, 7, 11, 12, 14, 14], S=[0, 16]. -/
def code_13009 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13010: ((6,2,2)), m=17, a=[5, 7, 11, 13, 14, 14], S=[0, 1]. -/
def code_13010 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13011: ((6,2,2)), m=17, a=[5, 7, 13, 14, 14, 16], S=[0, 6]. -/
def code_13011 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (7 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #13012: ((6,2,2)), m=17, a=[5, 8, 8, 13, 14, 16], S=[0, 15]. -/
def code_13012 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13013: ((6,2,2)), m=17, a=[5, 8, 8, 13, 15, 15], S=[0, 14]. -/
def code_13013 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17)]

/-- Catalogue code #13014: ((6,2,2)), m=17, a=[5, 8, 8, 13, 15, 15], S=[0, 16]. -/
def code_13014 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #13015: ((6,2,2)), m=17, a=[5, 8, 8, 14, 15, 16], S=[0, 13]. -/
def code_13015 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (8 : ZMod 17), (8 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13016: ((6,2,2)), m=17, a=[5, 8, 10, 10, 11, 15], S=[0, 14]. -/
def code_13016 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #13017: ((6,2,2)), m=17, a=[5, 8, 10, 11, 11, 14], S=[0, 15]. -/
def code_13017 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #13018: ((6,2,2)), m=17, a=[5, 9, 9, 13, 15, 16], S=[0, 14]. -/
def code_13018 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (9 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #13019: ((6,2,2)), m=17, a=[5, 9, 10, 10, 11, 14], S=[0, 2]. -/
def code_13019 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #13020: ((6,2,2)), m=17, a=[5, 9, 10, 10, 14, 15], S=[0, 6]. -/
def code_13020 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13021: ((6,2,2)), m=17, a=[5, 9, 10, 11, 11, 15], S=[0, 3]. -/
def code_13021 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13022: ((6,2,2)), m=17, a=[5, 9, 13, 15, 15, 16], S=[0, 14]. -/
def code_13022 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #13023: ((6,2,2)), m=17, a=[5, 10, 10, 11, 14, 15], S=[0, 8]. -/
def code_13023 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (10 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #13024: ((6,2,2)), m=17, a=[5, 11, 13, 14, 14, 16], S=[0, 10]. -/
def code_13024 : ExampleData 6 17 2 where
  a := ![(5 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13025: ((6,2,2)), m=17, a=[6, 6, 7, 9, 10, 12], S=[0, 2]. -/
def code_13025 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13026: ((6,2,2)), m=17, a=[6, 6, 7, 9, 10, 12], S=[0, 14]. -/
def code_13026 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-13 : ℚ) / 17)]

/-- Catalogue code #13027: ((6,2,2)), m=17, a=[6, 6, 7, 9, 10, 15], S=[0, 5]. -/
def code_13027 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((13 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13028: ((6,2,2)), m=17, a=[6, 6, 7, 9, 10, 15], S=[0, 14]. -/
def code_13028 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-13 : ℚ) / 17)]

/-- Catalogue code #13029: ((6,2,2)), m=17, a=[6, 6, 7, 9, 12, 15], S=[0, 14]. -/
def code_13029 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-15 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13030: ((6,2,2)), m=17, a=[6, 6, 7, 10, 12, 15], S=[0, 8]. -/
def code_13030 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((7 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13031: ((6,2,2)), m=17, a=[6, 6, 7, 10, 12, 15], S=[0, 14]. -/
def code_13031 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (6 : ZMod 17), (7 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13032: ((6,2,2)), m=17, a=[6, 6, 9, 10, 12, 15], S=[0, 14]. -/
def code_13032 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (6 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((-15 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13033: ((6,2,2)), m=17, a=[6, 7, 7, 9, 11, 12], S=[0, 3]. -/
def code_13033 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((13 : ℚ) / 17)]

/-- Catalogue code #13034: ((6,2,2)), m=17, a=[6, 7, 7, 9, 11, 12], S=[0, 15]. -/
def code_13034 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17), ((9 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #13035: ((6,2,2)), m=17, a=[6, 7, 7, 9, 11, 14], S=[0, 5]. -/
def code_13035 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-9 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13036: ((6,2,2)), m=17, a=[6, 7, 7, 9, 11, 14], S=[0, 15]. -/
def code_13036 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #13037: ((6,2,2)), m=17, a=[6, 7, 7, 9, 12, 14], S=[0, 15]. -/
def code_13037 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-11 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #13038: ((6,2,2)), m=17, a=[6, 7, 7, 11, 12, 14], S=[0, 8]. -/
def code_13038 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (8 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, false, true, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13039: ((6,2,2)), m=17, a=[6, 7, 7, 11, 12, 14], S=[0, 15]. -/
def code_13039 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (7 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((-5 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #13040: ((6,2,2)), m=17, a=[6, 7, 8, 13, 16, 16], S=[0, 2]. -/
def code_13040 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13041: ((6,2,2)), m=17, a=[6, 7, 9, 10, 12, 15], S=[0, 14]. -/
def code_13041 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (10 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (14 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((-3 : ℚ) / 17), ((5 : ℚ) / 17), ((-5 : ℚ) / 17)]

/-- Catalogue code #13042: ((6,2,2)), m=17, a=[6, 7, 9, 11, 12, 14], S=[0, 15]. -/
def code_13042 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((7 : ℚ) / 17), ((-5 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #13043: ((6,2,2)), m=17, a=[6, 7, 12, 12, 13, 14], S=[0, 16]. -/
def code_13043 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (16 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((-11 : ℚ) / 17)]

/-- Catalogue code #13044: ((6,2,2)), m=17, a=[6, 7, 12, 12, 14, 16], S=[0, 13]. -/
def code_13044 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((7 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #13045: ((6,2,2)), m=17, a=[6, 7, 12, 14, 14, 16], S=[0, 13]. -/
def code_13045 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (7 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (14 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (13 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((9 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #13046: ((6,2,2)), m=17, a=[6, 8, 13, 15, 16, 16], S=[0, 10]. -/
def code_13046 : ExampleData 6 17 2 where
  a := ![(6 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (10 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-11 : ℚ) / 17), ((-9 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13047: ((6,2,2)), m=17, a=[7, 7, 8, 11, 12, 14], S=[0, 2]. -/
def code_13047 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((-3 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #13048: ((6,2,2)), m=17, a=[7, 7, 8, 11, 12, 15], S=[0, 3]. -/
def code_13048 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-9 : ℚ) / 17), ((9 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #13049: ((6,2,2)), m=17, a=[7, 7, 8, 11, 14, 15], S=[0, 5]. -/
def code_13049 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17), ((1 : ℚ) / 17)]

/-- Catalogue code #13050: ((6,2,2)), m=17, a=[7, 7, 8, 12, 14, 15], S=[0, 6]. -/
def code_13050 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (7 : ZMod 17), (8 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((8 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13051: ((6,2,2)), m=17, a=[7, 7, 9, 11, 12, 14], S=[0, 15]. -/
def code_13051 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((-11 : ℚ) / 17), ((3 : ℚ) / 17), ((-9 : ℚ) / 17)]

/-- Catalogue code #13052: ((6,2,2)), m=17, a=[7, 8, 10, 11, 11, 14], S=[0, 12]. -/
def code_13052 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (12 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((-9 : ℚ) / 17), ((-1 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13053: ((6,2,2)), m=17, a=[7, 8, 10, 11, 11, 14], S=[0, 15]. -/
def code_13053 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (8 : ZMod 17), (10 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (15 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-7 : ℚ) / 17), ((3 : ℚ) / 17), ((7 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13054: ((6,2,2)), m=17, a=[7, 8, 11, 11, 12, 14], S=[0, 2]. -/
def code_13054 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0)]
  targetZ := ![((7 : ℚ) / 17), ((5 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((7 : ℚ) / 17), ((5 : ℚ) / 17)]

/-- Catalogue code #13055: ((6,2,2)), m=17, a=[7, 8, 11, 11, 12, 15], S=[0, 3]. -/
def code_13055 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (8 : ZMod 17), (11 : ZMod 17), (11 : ZMod 17), (12 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((15 : ℚ) / 17), ((1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13056: ((6,2,2)), m=17, a=[7, 8, 13, 15, 16, 16], S=[0, 11]. -/
def code_13056 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (8 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (11 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-7 : ℚ) / 17), ((-7 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17)]

/-- Catalogue code #13057: ((6,2,2)), m=17, a=[7, 9, 11, 13, 13, 16], S=[0, 2]. -/
def code_13057 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (9 : ZMod 17), (11 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (2 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((-15 : ℚ) / 17)]

/-- Catalogue code #13058: ((6,2,2)), m=17, a=[7, 9, 13, 13, 15, 16], S=[0, 6]. -/
def code_13058 : ExampleData 6 17 2 where
  a := ![(7 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((9 : ℚ) / 17), ((-1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-3 : ℚ) / 17), ((-11 : ℚ) / 17)]

/-- Catalogue code #13059: ((6,2,2)), m=17, a=[8, 9, 12, 13, 14, 15], S=[0, 1]. -/
def code_13059 : ExampleData 6 17 2 where
  a := ![(8 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-3 : ℚ) / 17), ((3 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((-9 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #13060: ((6,2,2)), m=17, a=[8, 9, 12, 13, 15, 16], S=[0, 3]. -/
def code_13060 : ExampleData 6 17 2 where
  a := ![(8 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (3 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((1 : ℚ) / 17), ((-1 : ℚ) / 17), ((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((7 : ℚ) / 17), ((7 : ℚ) / 17)]

/-- Catalogue code #13061: ((6,2,2)), m=17, a=[8, 9, 12, 14, 15, 16], S=[0, 4]. -/
def code_13061 : ExampleData 6 17 2 where
  a := ![(8 : ZMod 17), (9 : ZMod 17), (12 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (4 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 17)
      else 0)]
  targetZ := ![((3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((15 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13062: ((6,2,2)), m=17, a=[8, 9, 13, 14, 15, 16], S=[0, 5]. -/
def code_13062 : ExampleData 6 17 2 where
  a := ![(8 : ZMod 17), (9 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (5 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else 0)]
  targetZ := ![((-1 : ℚ) / 17), ((1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17), ((11 : ℚ) / 17), ((9 : ℚ) / 17)]

/-- Catalogue code #13063: ((6,2,2)), m=17, a=[8, 12, 13, 14, 15, 15], S=[0, 1]. -/
def code_13063 : ExampleData 6 17 2 where
  a := ![(8 : ZMod 17), (12 : ZMod 17), (13 : ZMod 17), (14 : ZMod 17), (15 : ZMod 17), (15 : ZMod 17)]
  S := ![(0 : ZMod 17), (1 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((9 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 17)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 17)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 17)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-15 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((-1 : ℚ) / 17), ((3 : ℚ) / 17), ((3 : ℚ) / 17)]

/-- Catalogue code #13064: ((6,2,2)), m=17, a=[8, 13, 13, 15, 16, 16], S=[0, 6]. -/
def code_13064 : ExampleData 6 17 2 where
  a := ![(8 : ZMod 17), (13 : ZMod 17), (13 : ZMod 17), (15 : ZMod 17), (16 : ZMod 17), (16 : ZMod 17)]
  S := ![(0 : ZMod 17), (6 : ZMod 17)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 17)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 17)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 17)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 17)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 17)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 17)
      else 0)]
  targetZ := ![((-5 : ℚ) / 17), ((5 : ℚ) / 17), ((5 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17), ((-3 : ℚ) / 17)]

/-- Catalogue code #13065: ((6,2,2)), m=18, a=[1, 1, 2, 4, 4, 6], S=[0, 8]. -/
def code_13065 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13066: ((6,2,2)), m=18, a=[1, 1, 2, 4, 12, 14], S=[0, 8]. -/
def code_13066 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13067: ((6,2,2)), m=18, a=[1, 1, 2, 6, 8, 8], S=[0, 4]. -/
def code_13067 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13068: ((6,2,2)), m=18, a=[1, 1, 2, 6, 14, 14], S=[0, 10]. -/
def code_13068 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13069: ((6,2,2)), m=18, a=[1, 1, 2, 10, 10, 12], S=[0, 4]. -/
def code_13069 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13070: ((6,2,2)), m=18, a=[1, 1, 4, 4, 8, 8], S=[0, 2]. -/
def code_13070 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13071: ((6,2,2)), m=18, a=[1, 1, 4, 4, 8, 12], S=[0, 2]. -/
def code_13071 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13072: ((6,2,2)), m=18, a=[1, 1, 4, 6, 8, 10], S=[0, 16]. -/
def code_13072 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (10 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13073: ((6,2,2)), m=18, a=[1, 1, 4, 8, 8, 12], S=[0, 2]. -/
def code_13073 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13074: ((6,2,2)), m=18, a=[1, 1, 4, 10, 10, 14], S=[0, 16]. -/
def code_13074 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13075: ((6,2,2)), m=18, a=[1, 1, 4, 10, 12, 14], S=[0, 16]. -/
def code_13075 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13076: ((6,2,2)), m=18, a=[1, 1, 6, 8, 8, 14], S=[0, 16]. -/
def code_13076 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13077: ((6,2,2)), m=18, a=[1, 1, 6, 10, 10, 16], S=[0, 4]. -/
def code_13077 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13078: ((6,2,2)), m=18, a=[1, 1, 6, 14, 14, 16], S=[0, 8]. -/
def code_13078 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13079: ((6,2,2)), m=18, a=[1, 1, 8, 8, 12, 16], S=[0, 14]. -/
def code_13079 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13080: ((6,2,2)), m=18, a=[1, 1, 10, 10, 12, 14], S=[0, 16]. -/
def code_13080 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (1 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13081: ((6,2,2)), m=18, a=[1, 2, 2, 3, 4, 6], S=[0, 8]. -/
def code_13081 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13082: ((6,2,2)), m=18, a=[1, 2, 2, 3, 10, 12], S=[0, 4]. -/
def code_13082 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13083: ((6,2,2)), m=18, a=[1, 2, 2, 4, 4, 6], S=[0, 8]. -/
def code_13083 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13084: ((6,2,2)), m=18, a=[1, 2, 2, 4, 4, 7], S=[0, 8]. -/
def code_13084 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13085: ((6,2,2)), m=18, a=[1, 2, 2, 4, 6, 7], S=[0, 8]. -/
def code_13085 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13086: ((6,2,2)), m=18, a=[1, 2, 2, 4, 9, 12], S=[0, 8]. -/
def code_13086 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13087: ((6,2,2)), m=18, a=[1, 2, 2, 4, 9, 14], S=[0, 8]. -/
def code_13087 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13088: ((6,2,2)), m=18, a=[1, 2, 2, 4, 12, 13], S=[0, 8]. -/
def code_13088 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13089: ((6,2,2)), m=18, a=[1, 2, 2, 4, 12, 14], S=[0, 8]. -/
def code_13089 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13090: ((6,2,2)), m=18, a=[1, 2, 2, 6, 7, 8], S=[0, 4]. -/
def code_13090 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13091: ((6,2,2)), m=18, a=[1, 2, 2, 6, 7, 14], S=[0, 10]. -/
def code_13091 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #13092: ((6,2,2)), m=18, a=[1, 2, 2, 6, 8, 9], S=[0, 14]. -/
def code_13092 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13093: ((6,2,2)), m=18, a=[1, 2, 2, 6, 8, 13], S=[0, 4]. -/
def code_13093 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13094: ((6,2,2)), m=18, a=[1, 2, 2, 6, 13, 14], S=[0, 10]. -/
def code_13094 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13095: ((6,2,2)), m=18, a=[1, 2, 2, 7, 14, 14], S=[0, 10]. -/
def code_13095 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13096: ((6,2,2)), m=18, a=[1, 2, 2, 9, 10, 12], S=[0, 4]. -/
def code_13096 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13097: ((6,2,2)), m=18, a=[1, 2, 2, 10, 10, 11], S=[0, 4]. -/
def code_13097 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13098: ((6,2,2)), m=18, a=[1, 2, 3, 4, 5, 6], S=[0, 11]. -/
def code_13098 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 3), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13099: ((6,2,2)), m=18, a=[1, 2, 3, 4, 5, 8], S=[0, 11]. -/
def code_13099 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13100: ((6,2,2)), m=18, a=[1, 2, 3, 4, 6, 7], S=[0, 13]. -/
def code_13100 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13101: ((6,2,2)), m=18, a=[1, 2, 3, 4, 6, 8], S=[0, 11]. -/
def code_13101 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((5 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13102: ((6,2,2)), m=18, a=[1, 2, 3, 4, 6, 8], S=[0, 13]. -/
def code_13102 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13103: ((6,2,2)), m=18, a=[1, 2, 3, 4, 7, 8], S=[0, 13]. -/
def code_13103 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13104: ((6,2,2)), m=18, a=[1, 2, 3, 4, 8, 11], S=[0, 5]. -/
def code_13104 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13105: ((6,2,2)), m=18, a=[1, 2, 3, 4, 8, 12], S=[0, 5]. -/
def code_13105 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13106: ((6,2,2)), m=18, a=[1, 2, 3, 4, 8, 12], S=[0, 7]. -/
def code_13106 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13107: ((6,2,2)), m=18, a=[1, 2, 3, 4, 8, 13], S=[0, 7]. -/
def code_13107 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13108: ((6,2,2)), m=18, a=[1, 2, 3, 4, 11, 12], S=[0, 5]. -/
def code_13108 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13109: ((6,2,2)), m=18, a=[1, 2, 3, 4, 12, 13], S=[0, 7]. -/
def code_13109 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 3), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13110: ((6,2,2)), m=18, a=[1, 2, 3, 4, 12, 16], S=[0, 10]. -/
def code_13110 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13111: ((6,2,2)), m=18, a=[1, 2, 3, 5, 6, 8], S=[0, 11]. -/
def code_13111 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 3), ((-2 : ℚ) / 9), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13112: ((6,2,2)), m=18, a=[1, 2, 3, 5, 10, 12], S=[0, 11]. -/
def code_13112 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((-1 : ℚ) / 3), ((-2 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13113: ((6,2,2)), m=18, a=[1, 2, 3, 5, 10, 14], S=[0, 11]. -/
def code_13113 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13114: ((6,2,2)), m=18, a=[1, 2, 3, 5, 12, 14], S=[0, 11]. -/
def code_13114 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 3), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13115: ((6,2,2)), m=18, a=[1, 2, 3, 6, 7, 8], S=[0, 13]. -/
def code_13115 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13116: ((6,2,2)), m=18, a=[1, 2, 3, 7, 10, 12], S=[0, 13]. -/
def code_13116 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13117: ((6,2,2)), m=18, a=[1, 2, 3, 7, 10, 14], S=[0, 13]. -/
def code_13117 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13118: ((6,2,2)), m=18, a=[1, 2, 3, 7, 12, 14], S=[0, 13]. -/
def code_13118 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13119: ((6,2,2)), m=18, a=[1, 2, 3, 8, 8, 12], S=[0, 14]. -/
def code_13119 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13120: ((6,2,2)), m=18, a=[1, 2, 3, 8, 8, 16], S=[0, 14]. -/
def code_13120 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13121: ((6,2,2)), m=18, a=[1, 2, 3, 8, 11, 12], S=[0, 5]. -/
def code_13121 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13122: ((6,2,2)), m=18, a=[1, 2, 3, 8, 12, 13], S=[0, 7]. -/
def code_13122 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 3), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-4 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13123: ((6,2,2)), m=18, a=[1, 2, 3, 8, 12, 16], S=[0, 14]. -/
def code_13123 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13124: ((6,2,2)), m=18, a=[1, 2, 3, 10, 12, 14], S=[0, 11]. -/
def code_13124 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((5 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13125: ((6,2,2)), m=18, a=[1, 2, 3, 10, 12, 14], S=[0, 13]. -/
def code_13125 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13126: ((6,2,2)), m=18, a=[1, 2, 4, 4, 7, 12], S=[0, 10]. -/
def code_13126 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13127: ((6,2,2)), m=18, a=[1, 2, 4, 4, 7, 16], S=[0, 10]. -/
def code_13127 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13128: ((6,2,2)), m=18, a=[1, 2, 4, 4, 11, 16], S=[0, 10]. -/
def code_13128 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13129: ((6,2,2)), m=18, a=[1, 2, 4, 4, 12, 15], S=[0, 10]. -/
def code_13129 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13130: ((6,2,2)), m=18, a=[1, 2, 4, 5, 6, 8], S=[0, 11]. -/
def code_13130 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13131: ((6,2,2)), m=18, a=[1, 2, 4, 5, 6, 10], S=[0, 7]. -/
def code_13131 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13132: ((6,2,2)), m=18, a=[1, 2, 4, 5, 6, 15], S=[0, 7]. -/
def code_13132 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13133: ((6,2,2)), m=18, a=[1, 2, 4, 5, 10, 15], S=[0, 7]. -/
def code_13133 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((-1 : ℚ) / 9), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13134: ((6,2,2)), m=18, a=[1, 2, 4, 6, 7, 8], S=[0, 13]. -/
def code_13134 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9)]

/-- Catalogue code #13135: ((6,2,2)), m=18, a=[1, 2, 4, 6, 10, 11], S=[0, 13]. -/
def code_13135 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13136: ((6,2,2)), m=18, a=[1, 2, 4, 6, 10, 15], S=[0, 7]. -/
def code_13136 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13137: ((6,2,2)), m=18, a=[1, 2, 4, 6, 10, 15], S=[0, 13]. -/
def code_13137 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13138: ((6,2,2)), m=18, a=[1, 2, 4, 6, 11, 15], S=[0, 13]. -/
def code_13138 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-2 : ℚ) / 9), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13139: ((6,2,2)), m=18, a=[1, 2, 4, 7, 12, 16], S=[0, 10]. -/
def code_13139 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13140: ((6,2,2)), m=18, a=[1, 2, 4, 8, 11, 12], S=[0, 5]. -/
def code_13140 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13141: ((6,2,2)), m=18, a=[1, 2, 4, 8, 12, 13], S=[0, 7]. -/
def code_13141 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 3), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13142: ((6,2,2)), m=18, a=[1, 2, 4, 9, 12, 14], S=[0, 8]. -/
def code_13142 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13143: ((6,2,2)), m=18, a=[1, 2, 4, 10, 11, 15], S=[0, 13]. -/
def code_13143 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13144: ((6,2,2)), m=18, a=[1, 2, 5, 6, 6, 9], S=[0, 3]. -/
def code_13144 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13145: ((6,2,2)), m=18, a=[1, 2, 5, 6, 9, 10], S=[0, 3]. -/
def code_13145 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13146: ((6,2,2)), m=18, a=[1, 2, 5, 6, 10, 15], S=[0, 7]. -/
def code_13146 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13147: ((6,2,2)), m=18, a=[1, 2, 5, 10, 10, 16], S=[0, 4]. -/
def code_13147 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13148: ((6,2,2)), m=18, a=[1, 2, 5, 10, 12, 14], S=[0, 11]. -/
def code_13148 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 3), ((1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13149: ((6,2,2)), m=18, a=[1, 2, 6, 8, 8, 13], S=[0, 4]. -/
def code_13149 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13150: ((6,2,2)), m=18, a=[1, 2, 6, 9, 10, 16], S=[0, 4]. -/
def code_13150 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13151: ((6,2,2)), m=18, a=[1, 2, 6, 9, 13, 14], S=[0, 3]. -/
def code_13151 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13152: ((6,2,2)), m=18, a=[1, 2, 6, 9, 14, 16], S=[0, 8]. -/
def code_13152 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13153: ((6,2,2)), m=18, a=[1, 2, 6, 10, 10, 15], S=[0, 4]. -/
def code_13153 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13154: ((6,2,2)), m=18, a=[1, 2, 6, 10, 10, 16], S=[0, 4]. -/
def code_13154 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13155: ((6,2,2)), m=18, a=[1, 2, 6, 10, 11, 15], S=[0, 13]. -/
def code_13155 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13156: ((6,2,2)), m=18, a=[1, 2, 6, 13, 14, 16], S=[0, 8]. -/
def code_13156 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13157: ((6,2,2)), m=18, a=[1, 2, 6, 14, 14, 15], S=[0, 8]. -/
def code_13157 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13158: ((6,2,2)), m=18, a=[1, 2, 6, 14, 14, 16], S=[0, 8]. -/
def code_13158 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![false, true, false, false, false, true], ![false, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13159: ((6,2,2)), m=18, a=[1, 2, 7, 8, 12, 14], S=[0, 5]. -/
def code_13159 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13160: ((6,2,2)), m=18, a=[1, 2, 7, 8, 12, 15], S=[0, 5]. -/
def code_13160 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13161: ((6,2,2)), m=18, a=[1, 2, 7, 8, 12, 16], S=[0, 14]. -/
def code_13161 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13162: ((6,2,2)), m=18, a=[1, 2, 7, 8, 14, 15], S=[0, 5]. -/
def code_13162 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13163: ((6,2,2)), m=18, a=[1, 2, 7, 9, 12, 14], S=[0, 15]. -/
def code_13163 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13164: ((6,2,2)), m=18, a=[1, 2, 7, 12, 12, 14], S=[0, 3]. -/
def code_13164 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13165: ((6,2,2)), m=18, a=[1, 2, 7, 12, 14, 15], S=[0, 5]. -/
def code_13165 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13166: ((6,2,2)), m=18, a=[1, 2, 8, 8, 11, 16], S=[0, 14]. -/
def code_13166 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13167: ((6,2,2)), m=18, a=[1, 2, 8, 9, 12, 13], S=[0, 15]. -/
def code_13167 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13168: ((6,2,2)), m=18, a=[1, 2, 8, 12, 13, 14], S=[0, 11]. -/
def code_13168 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 9), ((-2 : ℚ) / 3), ((-1 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 9)]

/-- Catalogue code #13169: ((6,2,2)), m=18, a=[1, 2, 8, 12, 13, 15], S=[0, 11]. -/
def code_13169 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13170: ((6,2,2)), m=18, a=[1, 2, 8, 12, 14, 15], S=[0, 5]. -/
def code_13170 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13171: ((6,2,2)), m=18, a=[1, 2, 8, 12, 14, 15], S=[0, 11]. -/
def code_13171 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13172: ((6,2,2)), m=18, a=[1, 2, 8, 13, 14, 15], S=[0, 11]. -/
def code_13172 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13173: ((6,2,2)), m=18, a=[1, 2, 9, 11, 12, 12], S=[0, 15]. -/
def code_13173 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13174: ((6,2,2)), m=18, a=[1, 2, 9, 14, 14, 16], S=[0, 8]. -/
def code_13174 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13175: ((6,2,2)), m=18, a=[1, 2, 12, 13, 14, 15], S=[0, 11]. -/
def code_13175 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (2 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 3)]

/-- Catalogue code #13176: ((6,2,2)), m=18, a=[1, 3, 4, 5, 6, 8], S=[0, 11]. -/
def code_13176 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13177: ((6,2,2)), m=18, a=[1, 3, 4, 6, 7, 8], S=[0, 13]. -/
def code_13177 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 3), ((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13178: ((6,2,2)), m=18, a=[1, 3, 4, 8, 11, 12], S=[0, 5]. -/
def code_13178 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 3), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13179: ((6,2,2)), m=18, a=[1, 3, 4, 8, 12, 13], S=[0, 7]. -/
def code_13179 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13180: ((6,2,2)), m=18, a=[1, 3, 5, 10, 12, 14], S=[0, 11]. -/
def code_13180 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13181: ((6,2,2)), m=18, a=[1, 3, 6, 8, 8, 16], S=[0, 4]. -/
def code_13181 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9)]

/-- Catalogue code #13182: ((6,2,2)), m=18, a=[1, 3, 6, 8, 11, 14], S=[0, 5]. -/
def code_13182 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-2 : ℚ) / 3), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13183: ((6,2,2)), m=18, a=[1, 3, 6, 8, 11, 16], S=[0, 5]. -/
def code_13183 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13184: ((6,2,2)), m=18, a=[1, 3, 6, 8, 13, 14], S=[0, 7]. -/
def code_13184 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13185: ((6,2,2)), m=18, a=[1, 3, 6, 8, 13, 16], S=[0, 7]. -/
def code_13185 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13186: ((6,2,2)), m=18, a=[1, 3, 6, 8, 14, 16], S=[0, 5]. -/
def code_13186 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13187: ((6,2,2)), m=18, a=[1, 3, 6, 8, 14, 16], S=[0, 7]. -/
def code_13187 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13188: ((6,2,2)), m=18, a=[1, 3, 6, 8, 16, 16], S=[0, 4]. -/
def code_13188 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13189: ((6,2,2)), m=18, a=[1, 3, 6, 11, 14, 16], S=[0, 5]. -/
def code_13189 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((-2 : ℚ) / 9)]

/-- Catalogue code #13190: ((6,2,2)), m=18, a=[1, 3, 6, 13, 14, 16], S=[0, 7]. -/
def code_13190 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((2 : ℚ) / 3), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13191: ((6,2,2)), m=18, a=[1, 3, 6, 14, 16, 16], S=[0, 10]. -/
def code_13191 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13192: ((6,2,2)), m=18, a=[1, 3, 7, 10, 12, 14], S=[0, 13]. -/
def code_13192 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 3), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13193: ((6,2,2)), m=18, a=[1, 3, 8, 11, 14, 16], S=[0, 5]. -/
def code_13193 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13194: ((6,2,2)), m=18, a=[1, 3, 8, 13, 14, 16], S=[0, 7]. -/
def code_13194 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13195: ((6,2,2)), m=18, a=[1, 4, 4, 6, 8, 9], S=[0, 16]. -/
def code_13195 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13196: ((6,2,2)), m=18, a=[1, 4, 5, 6, 10, 15], S=[0, 7]. -/
def code_13196 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13197: ((6,2,2)), m=18, a=[1, 4, 5, 8, 12, 15], S=[0, 7]. -/
def code_13197 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13198: ((6,2,2)), m=18, a=[1, 4, 5, 8, 12, 16], S=[0, 7]. -/
def code_13198 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13199: ((6,2,2)), m=18, a=[1, 4, 5, 8, 15, 16], S=[0, 7]. -/
def code_13199 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13200: ((6,2,2)), m=18, a=[1, 4, 5, 12, 15, 16], S=[0, 7]. -/
def code_13200 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13201: ((6,2,2)), m=18, a=[1, 4, 5, 14, 16, 16], S=[0, 10]. -/
def code_13201 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13202: ((6,2,2)), m=18, a=[1, 4, 6, 7, 10, 15], S=[0, 5]. -/
def code_13202 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13203: ((6,2,2)), m=18, a=[1, 4, 6, 7, 10, 16], S=[0, 5]. -/
def code_13203 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13204: ((6,2,2)), m=18, a=[1, 4, 6, 7, 14, 16], S=[0, 10]. -/
def code_13204 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13205: ((6,2,2)), m=18, a=[1, 4, 6, 7, 15, 16], S=[0, 5]. -/
def code_13205 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13206: ((6,2,2)), m=18, a=[1, 4, 6, 8, 8, 15], S=[0, 2]. -/
def code_13206 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13207: ((6,2,2)), m=18, a=[1, 4, 6, 8, 14, 15], S=[0, 2]. -/
def code_13207 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13208: ((6,2,2)), m=18, a=[1, 4, 6, 10, 11, 15], S=[0, 13]. -/
def code_13208 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 3)]

/-- Catalogue code #13209: ((6,2,2)), m=18, a=[1, 4, 6, 10, 13, 15], S=[0, 11]. -/
def code_13209 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13210: ((6,2,2)), m=18, a=[1, 4, 6, 10, 13, 16], S=[0, 11]. -/
def code_13210 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13211: ((6,2,2)), m=18, a=[1, 4, 6, 10, 15, 16], S=[0, 5]. -/
def code_13211 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((4 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9)]

/-- Catalogue code #13212: ((6,2,2)), m=18, a=[1, 4, 6, 10, 15, 16], S=[0, 11]. -/
def code_13212 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 3), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((5 : ℚ) / 9)]

/-- Catalogue code #13213: ((6,2,2)), m=18, a=[1, 4, 6, 13, 15, 16], S=[0, 11]. -/
def code_13213 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13214: ((6,2,2)), m=18, a=[1, 4, 6, 13, 16, 16], S=[0, 10]. -/
def code_13214 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13215: ((6,2,2)), m=18, a=[1, 4, 6, 14, 16, 16], S=[0, 10]. -/
def code_13215 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13216: ((6,2,2)), m=18, a=[1, 4, 7, 10, 15, 16], S=[0, 5]. -/
def code_13216 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13217: ((6,2,2)), m=18, a=[1, 4, 8, 8, 14, 15], S=[0, 2]. -/
def code_13217 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13218: ((6,2,2)), m=18, a=[1, 4, 8, 11, 12, 15], S=[0, 13]. -/
def code_13218 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13219: ((6,2,2)), m=18, a=[1, 4, 8, 11, 12, 16], S=[0, 13]. -/
def code_13219 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13220: ((6,2,2)), m=18, a=[1, 4, 8, 11, 15, 16], S=[0, 13]. -/
def code_13220 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13221: ((6,2,2)), m=18, a=[1, 4, 8, 12, 15, 16], S=[0, 7]. -/
def code_13221 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((-5 : ℚ) / 9)]

/-- Catalogue code #13222: ((6,2,2)), m=18, a=[1, 4, 8, 12, 15, 16], S=[0, 13]. -/
def code_13222 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13223: ((6,2,2)), m=18, a=[1, 4, 10, 13, 15, 16], S=[0, 11]. -/
def code_13223 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13224: ((6,2,2)), m=18, a=[1, 4, 11, 12, 15, 16], S=[0, 13]. -/
def code_13224 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13225: ((6,2,2)), m=18, a=[1, 5, 6, 6, 8, 9], S=[0, 15]. -/
def code_13225 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13226: ((6,2,2)), m=18, a=[1, 5, 6, 6, 9, 10], S=[0, 3]. -/
def code_13226 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13227: ((6,2,2)), m=18, a=[1, 5, 6, 8, 9, 12], S=[0, 3]. -/
def code_13227 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13228: ((6,2,2)), m=18, a=[1, 5, 6, 8, 9, 16], S=[0, 15]. -/
def code_13228 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13229: ((6,2,2)), m=18, a=[1, 5, 8, 8, 14, 14], S=[0, 16]. -/
def code_13229 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13230: ((6,2,2)), m=18, a=[1, 5, 8, 12, 15, 16], S=[0, 7]. -/
def code_13230 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 3), ((-2 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13231: ((6,2,2)), m=18, a=[1, 5, 9, 12, 14, 16], S=[0, 15]. -/
def code_13231 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (5 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13232: ((6,2,2)), m=18, a=[1, 6, 6, 7, 8, 9], S=[0, 15]. -/
def code_13232 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13233: ((6,2,2)), m=18, a=[1, 6, 6, 7, 9, 14], S=[0, 15]. -/
def code_13233 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13234: ((6,2,2)), m=18, a=[1, 6, 6, 10, 11, 14], S=[0, 3]. -/
def code_13234 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13235: ((6,2,2)), m=18, a=[1, 6, 7, 8, 16, 16], S=[0, 4]. -/
def code_13235 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13236: ((6,2,2)), m=18, a=[1, 6, 7, 9, 12, 14], S=[0, 15]. -/
def code_13236 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13237: ((6,2,2)), m=18, a=[1, 6, 7, 10, 15, 16], S=[0, 5]. -/
def code_13237 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13238: ((6,2,2)), m=18, a=[1, 6, 7, 14, 16, 16], S=[0, 10]. -/
def code_13238 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-7 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13239: ((6,2,2)), m=18, a=[1, 6, 8, 8, 13, 14], S=[0, 16]. -/
def code_13239 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13240: ((6,2,2)), m=18, a=[1, 6, 8, 8, 13, 16], S=[0, 14]. -/
def code_13240 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #13241: ((6,2,2)), m=18, a=[1, 6, 8, 8, 14, 15], S=[0, 2]. -/
def code_13241 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13242: ((6,2,2)), m=18, a=[1, 6, 8, 8, 15, 16], S=[0, 4]. -/
def code_13242 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13243: ((6,2,2)), m=18, a=[1, 6, 8, 8, 16, 16], S=[0, 4]. -/
def code_13243 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13244: ((6,2,2)), m=18, a=[1, 6, 8, 11, 14, 16], S=[0, 5]. -/
def code_13244 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), ((-2 : ℚ) / 3)]

/-- Catalogue code #13245: ((6,2,2)), m=18, a=[1, 6, 8, 13, 14, 16], S=[0, 7]. -/
def code_13245 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 9), ((2 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13246: ((6,2,2)), m=18, a=[1, 6, 9, 14, 14, 16], S=[0, 8]. -/
def code_13246 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9)]

/-- Catalogue code #13247: ((6,2,2)), m=18, a=[1, 6, 10, 13, 15, 16], S=[0, 11]. -/
def code_13247 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13248: ((6,2,2)), m=18, a=[1, 6, 10, 14, 14, 15], S=[0, 16]. -/
def code_13248 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (16 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13249: ((6,2,2)), m=18, a=[1, 7, 8, 12, 14, 15], S=[0, 5]. -/
def code_13249 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 3)]

/-- Catalogue code #13250: ((6,2,2)), m=18, a=[1, 8, 9, 12, 14, 14], S=[0, 2]. -/
def code_13250 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13251: ((6,2,2)), m=18, a=[1, 8, 9, 12, 16, 16], S=[0, 4]. -/
def code_13251 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13252: ((6,2,2)), m=18, a=[1, 8, 11, 12, 15, 16], S=[0, 13]. -/
def code_13252 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13253: ((6,2,2)), m=18, a=[1, 8, 12, 13, 14, 15], S=[0, 11]. -/
def code_13253 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13254: ((6,2,2)), m=18, a=[1, 9, 10, 11, 12, 14], S=[0, 15]. -/
def code_13254 : ExampleData 6 18 2 where
  a := ![(1 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13255: ((6,2,2)), m=18, a=[2, 2, 3, 3, 4, 4], S=[0, 8]. -/
def code_13255 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13256: ((6,2,2)), m=18, a=[2, 2, 3, 3, 8, 8], S=[0, 4]. -/
def code_13256 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13257: ((6,2,2)), m=18, a=[2, 2, 3, 4, 4, 6], S=[0, 8]. -/
def code_13257 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13258: ((6,2,2)), m=18, a=[2, 2, 3, 4, 9, 14], S=[0, 8]. -/
def code_13258 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13259: ((6,2,2)), m=18, a=[2, 2, 3, 4, 11, 12], S=[0, 8]. -/
def code_13259 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13260: ((6,2,2)), m=18, a=[2, 2, 3, 5, 6, 8], S=[0, 4]. -/
def code_13260 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13261: ((6,2,2)), m=18, a=[2, 2, 3, 5, 6, 14], S=[0, 10]. -/
def code_13261 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9)]

/-- Catalogue code #13262: ((6,2,2)), m=18, a=[2, 2, 3, 6, 7, 8], S=[0, 14]. -/
def code_13262 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13263: ((6,2,2)), m=18, a=[2, 2, 3, 6, 8, 11], S=[0, 4]. -/
def code_13263 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13264: ((6,2,2)), m=18, a=[2, 2, 3, 6, 11, 14], S=[0, 10]. -/
def code_13264 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13265: ((6,2,2)), m=18, a=[2, 2, 3, 7, 10, 12], S=[0, 4]. -/
def code_13265 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13266: ((6,2,2)), m=18, a=[2, 2, 3, 8, 8, 11], S=[0, 4]. -/
def code_13266 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13267: ((6,2,2)), m=18, a=[2, 2, 4, 4, 5, 6], S=[0, 8]. -/
def code_13267 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13268: ((6,2,2)), m=18, a=[2, 2, 4, 4, 7, 17], S=[0, 8]. -/
def code_13268 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13269: ((6,2,2)), m=18, a=[2, 2, 4, 5, 5, 6], S=[0, 10]. -/
def code_13269 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13270: ((6,2,2)), m=18, a=[2, 2, 4, 5, 5, 14], S=[0, 8]. -/
def code_13270 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (5 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13271: ((6,2,2)), m=18, a=[2, 2, 4, 5, 6, 17], S=[0, 8]. -/
def code_13271 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13272: ((6,2,2)), m=18, a=[2, 2, 4, 5, 9, 12], S=[0, 8]. -/
def code_13272 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13273: ((6,2,2)), m=18, a=[2, 2, 4, 5, 12, 14], S=[0, 8]. -/
def code_13273 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13274: ((6,2,2)), m=18, a=[2, 2, 4, 6, 7, 15], S=[0, 8]. -/
def code_13274 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13275: ((6,2,2)), m=18, a=[2, 2, 4, 6, 7, 15], S=[0, 10]. -/
def code_13275 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13276: ((6,2,2)), m=18, a=[2, 2, 4, 6, 9, 17], S=[0, 8]. -/
def code_13276 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13277: ((6,2,2)), m=18, a=[2, 2, 4, 11, 14, 17], S=[0, 8]. -/
def code_13277 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13278: ((6,2,2)), m=18, a=[2, 2, 4, 12, 13, 14], S=[0, 8]. -/
def code_13278 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13279: ((6,2,2)), m=18, a=[2, 2, 4, 12, 13, 15], S=[0, 8]. -/
def code_13279 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13280: ((6,2,2)), m=18, a=[2, 2, 4, 12, 14, 15], S=[0, 8]. -/
def code_13280 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13281: ((6,2,2)), m=18, a=[2, 2, 4, 13, 14, 17], S=[0, 8]. -/
def code_13281 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (4 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13282: ((6,2,2)), m=18, a=[2, 2, 5, 9, 10, 10], S=[0, 14]. -/
def code_13282 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13283: ((6,2,2)), m=18, a=[2, 2, 5, 9, 10, 12], S=[0, 14]. -/
def code_13283 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13284: ((6,2,2)), m=18, a=[2, 2, 5, 10, 12, 17], S=[0, 4]. -/
def code_13284 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13285: ((6,2,2)), m=18, a=[2, 2, 5, 12, 14, 17], S=[0, 8]. -/
def code_13285 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13286: ((6,2,2)), m=18, a=[2, 2, 6, 7, 7, 14], S=[0, 10]. -/
def code_13286 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13287: ((6,2,2)), m=18, a=[2, 2, 6, 8, 9, 10], S=[0, 14]. -/
def code_13287 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13288: ((6,2,2)), m=18, a=[2, 2, 6, 8, 9, 13], S=[0, 14]. -/
def code_13288 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13289: ((6,2,2)), m=18, a=[2, 2, 6, 8, 9, 17], S=[0, 4]. -/
def code_13289 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13290: ((6,2,2)), m=18, a=[2, 2, 6, 8, 10, 11], S=[0, 14]. -/
def code_13290 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13291: ((6,2,2)), m=18, a=[2, 2, 6, 8, 11, 17], S=[0, 14]. -/
def code_13291 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13292: ((6,2,2)), m=18, a=[2, 2, 6, 8, 15, 17], S=[0, 4]. -/
def code_13292 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13293: ((6,2,2)), m=18, a=[2, 2, 6, 9, 10, 17], S=[0, 14]. -/
def code_13293 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13294: ((6,2,2)), m=18, a=[2, 2, 6, 14, 15, 17], S=[0, 10]. -/
def code_13294 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13295: ((6,2,2)), m=18, a=[2, 2, 7, 8, 8, 17], S=[0, 4]. -/
def code_13295 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13296: ((6,2,2)), m=18, a=[2, 2, 7, 14, 14, 17], S=[0, 10]. -/
def code_13296 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13297: ((6,2,2)), m=18, a=[2, 2, 8, 8, 9, 15], S=[0, 4]. -/
def code_13297 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13298: ((6,2,2)), m=18, a=[2, 2, 8, 8, 15, 17], S=[0, 4]. -/
def code_13298 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13299: ((6,2,2)), m=18, a=[2, 2, 8, 9, 10, 13], S=[0, 14]. -/
def code_13299 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13300: ((6,2,2)), m=18, a=[2, 2, 8, 9, 10, 15], S=[0, 14]. -/
def code_13300 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13301: ((6,2,2)), m=18, a=[2, 2, 10, 10, 11, 12], S=[0, 4]. -/
def code_13301 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13302: ((6,2,2)), m=18, a=[2, 2, 10, 10, 12, 13], S=[0, 4]. -/
def code_13302 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13303: ((6,2,2)), m=18, a=[2, 2, 10, 11, 11, 12], S=[0, 4]. -/
def code_13303 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13304: ((6,2,2)), m=18, a=[2, 2, 10, 11, 12, 17], S=[0, 4]. -/
def code_13304 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13305: ((6,2,2)), m=18, a=[2, 2, 10, 12, 13, 15], S=[0, 4]. -/
def code_13305 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13306: ((6,2,2)), m=18, a=[2, 2, 10, 12, 13, 15], S=[0, 14]. -/
def code_13306 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13307: ((6,2,2)), m=18, a=[2, 2, 10, 12, 15, 17], S=[0, 14]. -/
def code_13307 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13308: ((6,2,2)), m=18, a=[2, 2, 11, 11, 12, 14], S=[0, 8]. -/
def code_13308 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (2 : ZMod 18), (11 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13309: ((6,2,2)), m=18, a=[2, 3, 3, 10, 10, 16], S=[0, 4]. -/
def code_13309 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (3 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13310: ((6,2,2)), m=18, a=[2, 3, 3, 14, 14, 16], S=[0, 8]. -/
def code_13310 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (3 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13311: ((6,2,2)), m=18, a=[2, 3, 4, 4, 6, 7], S=[0, 10]. -/
def code_13311 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13312: ((6,2,2)), m=18, a=[2, 3, 4, 4, 6, 17], S=[0, 8]. -/
def code_13312 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13313: ((6,2,2)), m=18, a=[2, 3, 4, 4, 9, 16], S=[0, 10]. -/
def code_13313 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (9 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13314: ((6,2,2)), m=18, a=[2, 3, 4, 5, 6, 7], S=[0, 17]. -/
def code_13314 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13315: ((6,2,2)), m=18, a=[2, 3, 4, 5, 6, 8], S=[0, 11]. -/
def code_13315 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((4 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13316: ((6,2,2)), m=18, a=[2, 3, 4, 5, 6, 8], S=[0, 17]. -/
def code_13316 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13317: ((6,2,2)), m=18, a=[2, 3, 4, 5, 7, 8], S=[0, 17]. -/
def code_13317 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13318: ((6,2,2)), m=18, a=[2, 3, 4, 6, 7, 8], S=[0, 13]. -/
def code_13318 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), (0 : ℚ), ((5 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3)]

/-- Catalogue code #13319: ((6,2,2)), m=18, a=[2, 3, 4, 6, 7, 8], S=[0, 17]. -/
def code_13319 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3)]

/-- Catalogue code #13320: ((6,2,2)), m=18, a=[2, 3, 4, 7, 12, 14], S=[0, 8]. -/
def code_13320 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13321: ((6,2,2)), m=18, a=[2, 3, 4, 8, 11, 12], S=[0, 5]. -/
def code_13321 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), (0 : ℚ), ((5 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 9)]

/-- Catalogue code #13322: ((6,2,2)), m=18, a=[2, 3, 4, 8, 11, 12], S=[0, 17]. -/
def code_13322 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((-4 : ℚ) / 9)]

/-- Catalogue code #13323: ((6,2,2)), m=18, a=[2, 3, 4, 8, 11, 13], S=[0, 17]. -/
def code_13323 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13324: ((6,2,2)), m=18, a=[2, 3, 4, 8, 12, 13], S=[0, 17]. -/
def code_13324 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 9), ((5 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13325: ((6,2,2)), m=18, a=[2, 3, 4, 11, 12, 13], S=[0, 17]. -/
def code_13325 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13326: ((6,2,2)), m=18, a=[2, 3, 4, 12, 14, 17], S=[0, 8]. -/
def code_13326 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13327: ((6,2,2)), m=18, a=[2, 3, 5, 6, 7, 8], S=[0, 17]. -/
def code_13327 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-2 : ℚ) / 3), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13328: ((6,2,2)), m=18, a=[2, 3, 5, 6, 14, 14], S=[0, 10]. -/
def code_13328 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13329: ((6,2,2)), m=18, a=[2, 3, 5, 7, 10, 12], S=[0, 17]. -/
def code_13329 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 3), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13330: ((6,2,2)), m=18, a=[2, 3, 5, 7, 10, 14], S=[0, 17]. -/
def code_13330 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13331: ((6,2,2)), m=18, a=[2, 3, 5, 7, 12, 14], S=[0, 17]. -/
def code_13331 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13332: ((6,2,2)), m=18, a=[2, 3, 5, 8, 11, 12], S=[0, 1]. -/
def code_13332 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13333: ((6,2,2)), m=18, a=[2, 3, 5, 8, 11, 14], S=[0, 1]. -/
def code_13333 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13334: ((6,2,2)), m=18, a=[2, 3, 5, 8, 12, 14], S=[0, 1]. -/
def code_13334 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((5 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13335: ((6,2,2)), m=18, a=[2, 3, 5, 8, 12, 14], S=[0, 7]. -/
def code_13335 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13336: ((6,2,2)), m=18, a=[2, 3, 5, 8, 12, 16], S=[0, 14]. -/
def code_13336 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13337: ((6,2,2)), m=18, a=[2, 3, 5, 8, 12, 17], S=[0, 7]. -/
def code_13337 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13338: ((6,2,2)), m=18, a=[2, 3, 5, 8, 14, 17], S=[0, 7]. -/
def code_13338 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13339: ((6,2,2)), m=18, a=[2, 3, 5, 10, 12, 14], S=[0, 17]. -/
def code_13339 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((5 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13340: ((6,2,2)), m=18, a=[2, 3, 5, 11, 12, 14], S=[0, 1]. -/
def code_13340 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13341: ((6,2,2)), m=18, a=[2, 3, 5, 12, 14, 17], S=[0, 7]. -/
def code_13341 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((2 : ℚ) / 3), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13342: ((6,2,2)), m=18, a=[2, 3, 6, 7, 10, 13], S=[0, 1]. -/
def code_13342 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 3), ((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13343: ((6,2,2)), m=18, a=[2, 3, 6, 7, 10, 14], S=[0, 1]. -/
def code_13343 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13344: ((6,2,2)), m=18, a=[2, 3, 6, 7, 10, 14], S=[0, 5]. -/
def code_13344 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13345: ((6,2,2)), m=18, a=[2, 3, 6, 7, 10, 16], S=[0, 4]. -/
def code_13345 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13346: ((6,2,2)), m=18, a=[2, 3, 6, 7, 10, 17], S=[0, 5]. -/
def code_13346 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13347: ((6,2,2)), m=18, a=[2, 3, 6, 7, 13, 14], S=[0, 1]. -/
def code_13347 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13348: ((6,2,2)), m=18, a=[2, 3, 6, 7, 14, 16], S=[0, 8]. -/
def code_13348 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13349: ((6,2,2)), m=18, a=[2, 3, 6, 7, 14, 17], S=[0, 5]. -/
def code_13349 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13350: ((6,2,2)), m=18, a=[2, 3, 6, 8, 8, 11], S=[0, 4]. -/
def code_13350 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13351: ((6,2,2)), m=18, a=[2, 3, 6, 8, 8, 17], S=[0, 4]. -/
def code_13351 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13352: ((6,2,2)), m=18, a=[2, 3, 6, 10, 10, 16], S=[0, 4]. -/
def code_13352 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13353: ((6,2,2)), m=18, a=[2, 3, 6, 10, 13, 14], S=[0, 1]. -/
def code_13353 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 9), ((5 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9)]

/-- Catalogue code #13354: ((6,2,2)), m=18, a=[2, 3, 6, 10, 13, 14], S=[0, 11]. -/
def code_13354 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), (0 : ℚ), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9)]

/-- Catalogue code #13355: ((6,2,2)), m=18, a=[2, 3, 6, 10, 13, 17], S=[0, 11]. -/
def code_13355 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 3), ((4 : ℚ) / 9)]

/-- Catalogue code #13356: ((6,2,2)), m=18, a=[2, 3, 6, 10, 14, 17], S=[0, 5]. -/
def code_13356 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13357: ((6,2,2)), m=18, a=[2, 3, 6, 10, 14, 17], S=[0, 11]. -/
def code_13357 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13358: ((6,2,2)), m=18, a=[2, 3, 6, 13, 14, 14], S=[0, 8]. -/
def code_13358 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13359: ((6,2,2)), m=18, a=[2, 3, 6, 13, 14, 17], S=[0, 11]. -/
def code_13359 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-2 : ℚ) / 3), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13360: ((6,2,2)), m=18, a=[2, 3, 6, 14, 14, 17], S=[0, 10]. -/
def code_13360 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13361: ((6,2,2)), m=18, a=[2, 3, 7, 10, 12, 14], S=[0, 13]. -/
def code_13361 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 3), ((2 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13362: ((6,2,2)), m=18, a=[2, 3, 7, 10, 12, 14], S=[0, 17]. -/
def code_13362 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 3), ((4 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13363: ((6,2,2)), m=18, a=[2, 3, 7, 10, 13, 14], S=[0, 1]. -/
def code_13363 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13364: ((6,2,2)), m=18, a=[2, 3, 7, 10, 14, 17], S=[0, 5]. -/
def code_13364 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13365: ((6,2,2)), m=18, a=[2, 3, 8, 8, 9, 16], S=[0, 14]. -/
def code_13365 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13366: ((6,2,2)), m=18, a=[2, 3, 8, 11, 12, 13], S=[0, 17]. -/
def code_13366 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-2 : ℚ) / 3), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13367: ((6,2,2)), m=18, a=[2, 3, 8, 11, 12, 14], S=[0, 1]. -/
def code_13367 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((4 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13368: ((6,2,2)), m=18, a=[2, 3, 8, 11, 12, 14], S=[0, 13]. -/
def code_13368 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((-2 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13369: ((6,2,2)), m=18, a=[2, 3, 8, 11, 12, 17], S=[0, 13]. -/
def code_13369 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((5 : ℚ) / 9)]

/-- Catalogue code #13370: ((6,2,2)), m=18, a=[2, 3, 8, 11, 14, 17], S=[0, 13]. -/
def code_13370 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((1 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13371: ((6,2,2)), m=18, a=[2, 3, 8, 12, 14, 17], S=[0, 7]. -/
def code_13371 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13372: ((6,2,2)), m=18, a=[2, 3, 8, 12, 14, 17], S=[0, 13]. -/
def code_13372 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13373: ((6,2,2)), m=18, a=[2, 3, 10, 10, 11, 12], S=[0, 14]. -/
def code_13373 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13374: ((6,2,2)), m=18, a=[2, 3, 10, 13, 14, 17], S=[0, 11]. -/
def code_13374 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13375: ((6,2,2)), m=18, a=[2, 3, 11, 12, 14, 17], S=[0, 13]. -/
def code_13375 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (3 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13376: ((6,2,2)), m=18, a=[2, 4, 4, 5, 7, 16], S=[0, 10]. -/
def code_13376 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13377: ((6,2,2)), m=18, a=[2, 4, 4, 5, 11, 12], S=[0, 10]. -/
def code_13377 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13378: ((6,2,2)), m=18, a=[2, 4, 4, 6, 7, 13], S=[0, 10]. -/
def code_13378 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13379: ((6,2,2)), m=18, a=[2, 4, 4, 6, 9, 17], S=[0, 8]. -/
def code_13379 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13380: ((6,2,2)), m=18, a=[2, 4, 4, 9, 12, 17], S=[0, 10]. -/
def code_13380 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13381: ((6,2,2)), m=18, a=[2, 4, 4, 12, 13, 13], S=[0, 10]. -/
def code_13381 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13382: ((6,2,2)), m=18, a=[2, 4, 4, 12, 13, 16], S=[0, 10]. -/
def code_13382 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9)]

/-- Catalogue code #13383: ((6,2,2)), m=18, a=[2, 4, 4, 12, 16, 17], S=[0, 10]. -/
def code_13383 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13384: ((6,2,2)), m=18, a=[2, 4, 4, 13, 16, 17], S=[0, 10]. -/
def code_13384 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (4 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13385: ((6,2,2)), m=18, a=[2, 4, 5, 5, 12, 14], S=[0, 8]. -/
def code_13385 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13386: ((6,2,2)), m=18, a=[2, 4, 5, 6, 6, 9], S=[0, 15]. -/
def code_13386 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ)]

/-- Catalogue code #13387: ((6,2,2)), m=18, a=[2, 4, 5, 6, 7, 8], S=[0, 17]. -/
def code_13387 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-2 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13388: ((6,2,2)), m=18, a=[2, 4, 5, 6, 10, 11], S=[0, 17]. -/
def code_13388 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((2 : ℚ) / 3), (0 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13389: ((6,2,2)), m=18, a=[2, 4, 5, 6, 10, 15], S=[0, 7]. -/
def code_13389 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((4 : ℚ) / 9), (0 : ℚ), ((4 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13390: ((6,2,2)), m=18, a=[2, 4, 5, 6, 10, 15], S=[0, 17]. -/
def code_13390 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true]}, {![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((2 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), ((-5 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13391: ((6,2,2)), m=18, a=[2, 4, 5, 6, 11, 15], S=[0, 17]. -/
def code_13391 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13392: ((6,2,2)), m=18, a=[2, 4, 5, 7, 10, 12], S=[0, 1]. -/
def code_13392 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((2 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13393: ((6,2,2)), m=18, a=[2, 4, 5, 7, 10, 15], S=[0, 1]. -/
def code_13393 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13394: ((6,2,2)), m=18, a=[2, 4, 5, 7, 12, 15], S=[0, 1]. -/
def code_13394 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13395: ((6,2,2)), m=18, a=[2, 4, 5, 10, 11, 15], S=[0, 17]. -/
def code_13395 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, true]}, {![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13396: ((6,2,2)), m=18, a=[2, 4, 5, 10, 12, 15], S=[0, 1]. -/
def code_13396 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-2 : ℚ) / 9), (0 : ℚ), ((5 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13397: ((6,2,2)), m=18, a=[2, 4, 5, 10, 12, 15], S=[0, 11]. -/
def code_13397 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), ((4 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13398: ((6,2,2)), m=18, a=[2, 4, 5, 10, 12, 17], S=[0, 11]. -/
def code_13398 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 3), ((-1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13399: ((6,2,2)), m=18, a=[2, 4, 5, 10, 15, 17], S=[0, 11]. -/
def code_13399 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((-2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13400: ((6,2,2)), m=18, a=[2, 4, 5, 12, 14, 15], S=[0, 8]. -/
def code_13400 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13401: ((6,2,2)), m=18, a=[2, 4, 5, 12, 15, 17], S=[0, 11]. -/
def code_13401 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13402: ((6,2,2)), m=18, a=[2, 4, 6, 10, 11, 15], S=[0, 13]. -/
def code_13402 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((5 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13403: ((6,2,2)), m=18, a=[2, 4, 6, 10, 11, 15], S=[0, 17]. -/
def code_13403 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13404: ((6,2,2)), m=18, a=[2, 4, 7, 10, 12, 15], S=[0, 1]. -/
def code_13404 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3), ((4 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13405: ((6,2,2)), m=18, a=[2, 4, 7, 10, 12, 15], S=[0, 13]. -/
def code_13405 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-5 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3), ((-2 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13406: ((6,2,2)), m=18, a=[2, 4, 7, 10, 12, 17], S=[0, 13]. -/
def code_13406 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13407: ((6,2,2)), m=18, a=[2, 4, 7, 10, 15, 17], S=[0, 13]. -/
def code_13407 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-1 : ℚ) / 9), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 9)]

/-- Catalogue code #13408: ((6,2,2)), m=18, a=[2, 4, 7, 12, 13, 14], S=[0, 8]. -/
def code_13408 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13409: ((6,2,2)), m=18, a=[2, 4, 7, 12, 15, 16], S=[0, 10]. -/
def code_13409 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13410: ((6,2,2)), m=18, a=[2, 4, 7, 12, 15, 17], S=[0, 13]. -/
def code_13410 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13411: ((6,2,2)), m=18, a=[2, 4, 9, 11, 12, 14], S=[0, 8]. -/
def code_13411 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13412: ((6,2,2)), m=18, a=[2, 4, 9, 12, 16, 17], S=[0, 10]. -/
def code_13412 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13413: ((6,2,2)), m=18, a=[2, 4, 10, 12, 15, 17], S=[0, 11]. -/
def code_13413 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((2 : ℚ) / 9), ((-2 : ℚ) / 9), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13414: ((6,2,2)), m=18, a=[2, 4, 10, 12, 15, 17], S=[0, 13]. -/
def code_13414 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #13415: ((6,2,2)), m=18, a=[2, 4, 11, 11, 12, 16], S=[0, 10]. -/
def code_13415 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13416: ((6,2,2)), m=18, a=[2, 4, 11, 12, 14, 17], S=[0, 8]. -/
def code_13416 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13417: ((6,2,2)), m=18, a=[2, 4, 11, 12, 15, 16], S=[0, 10]. -/
def code_13417 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13418: ((6,2,2)), m=18, a=[2, 4, 12, 13, 14, 15], S=[0, 8]. -/
def code_13418 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (4 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13419: ((6,2,2)), m=18, a=[2, 5, 5, 6, 10, 16], S=[0, 4]. -/
def code_13419 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13420: ((6,2,2)), m=18, a=[2, 5, 5, 6, 14, 16], S=[0, 8]. -/
def code_13420 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13421: ((6,2,2)), m=18, a=[2, 5, 6, 10, 11, 15], S=[0, 17]. -/
def code_13421 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, true, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13422: ((6,2,2)), m=18, a=[2, 5, 7, 10, 12, 14], S=[0, 17]. -/
def code_13422 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13423: ((6,2,2)), m=18, a=[2, 5, 7, 10, 12, 15], S=[0, 1]. -/
def code_13423 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13424: ((6,2,2)), m=18, a=[2, 5, 8, 8, 11, 12], S=[0, 14]. -/
def code_13424 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13425: ((6,2,2)), m=18, a=[2, 5, 8, 11, 12, 14], S=[0, 1]. -/
def code_13425 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), ((2 : ℚ) / 3)]

/-- Catalogue code #13426: ((6,2,2)), m=18, a=[2, 5, 8, 12, 14, 17], S=[0, 7]. -/
def code_13426 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 3), ((1 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13427: ((6,2,2)), m=18, a=[2, 5, 8, 12, 16, 17], S=[0, 14]. -/
def code_13427 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13428: ((6,2,2)), m=18, a=[2, 5, 9, 10, 10, 12], S=[0, 14]. -/
def code_13428 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13429: ((6,2,2)), m=18, a=[2, 5, 9, 10, 10, 16], S=[0, 4]. -/
def code_13429 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13430: ((6,2,2)), m=18, a=[2, 5, 10, 12, 15, 17], S=[0, 11]. -/
def code_13430 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13431: ((6,2,2)), m=18, a=[2, 6, 6, 9, 13, 14], S=[0, 15]. -/
def code_13431 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (15 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #13432: ((6,2,2)), m=18, a=[2, 6, 7, 7, 8, 8], S=[0, 4]. -/
def code_13432 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13433: ((6,2,2)), m=18, a=[2, 6, 7, 7, 10, 16], S=[0, 4]. -/
def code_13433 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13434: ((6,2,2)), m=18, a=[2, 6, 7, 7, 14, 16], S=[0, 8]. -/
def code_13434 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13435: ((6,2,2)), m=18, a=[2, 6, 7, 8, 8, 13], S=[0, 4]. -/
def code_13435 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13436: ((6,2,2)), m=18, a=[2, 6, 7, 8, 10, 15], S=[0, 14]. -/
def code_13436 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13437: ((6,2,2)), m=18, a=[2, 6, 7, 9, 14, 14], S=[0, 8]. -/
def code_13437 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13438: ((6,2,2)), m=18, a=[2, 6, 7, 10, 13, 14], S=[0, 1]. -/
def code_13438 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #13439: ((6,2,2)), m=18, a=[2, 6, 8, 8, 9, 11], S=[0, 4]. -/
def code_13439 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13440: ((6,2,2)), m=18, a=[2, 6, 8, 8, 15, 17], S=[0, 4]. -/
def code_13440 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13441: ((6,2,2)), m=18, a=[2, 6, 8, 9, 10, 13], S=[0, 14]. -/
def code_13441 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, true, true, false, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13442: ((6,2,2)), m=18, a=[2, 6, 9, 12, 13, 14], S=[0, 3]. -/
def code_13442 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (3 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 3), (0 : ℚ), ((-1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 3)]

/-- Catalogue code #13443: ((6,2,2)), m=18, a=[2, 6, 9, 14, 14, 17], S=[0, 10]. -/
def code_13443 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (9 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13444: ((6,2,2)), m=18, a=[2, 6, 10, 10, 11, 16], S=[0, 4]. -/
def code_13444 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ), ((1 : ℚ) / 9)]

/-- Catalogue code #13445: ((6,2,2)), m=18, a=[2, 6, 10, 10, 15, 17], S=[0, 4]. -/
def code_13445 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13446: ((6,2,2)), m=18, a=[2, 6, 10, 10, 16, 17], S=[0, 4]. -/
def code_13446 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13447: ((6,2,2)), m=18, a=[2, 6, 10, 11, 16, 17], S=[0, 4]. -/
def code_13447 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13448: ((6,2,2)), m=18, a=[2, 6, 10, 13, 14, 17], S=[0, 11]. -/
def code_13448 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-2 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13449: ((6,2,2)), m=18, a=[2, 6, 10, 13, 15, 16], S=[0, 4]. -/
def code_13449 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}, {![false, true, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13450: ((6,2,2)), m=18, a=[2, 6, 10, 15, 16, 17], S=[0, 4]. -/
def code_13450 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9)]

/-- Catalogue code #13451: ((6,2,2)), m=18, a=[2, 6, 11, 14, 16, 17], S=[0, 8]. -/
def code_13451 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9)]

/-- Catalogue code #13452: ((6,2,2)), m=18, a=[2, 6, 13, 13, 14, 14], S=[0, 10]. -/
def code_13452 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((5 : ℚ) / 9), ((5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13453: ((6,2,2)), m=18, a=[2, 6, 13, 14, 15, 16], S=[0, 8]. -/
def code_13453 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13454: ((6,2,2)), m=18, a=[2, 6, 14, 14, 16, 17], S=[0, 8]. -/
def code_13454 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13455: ((6,2,2)), m=18, a=[2, 6, 14, 15, 16, 17], S=[0, 8]. -/
def code_13455 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13456: ((6,2,2)), m=18, a=[2, 7, 8, 12, 13, 14], S=[0, 17]. -/
def code_13456 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), (0 : ℚ), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), (0 : ℚ), ((-2 : ℚ) / 3)]

/-- Catalogue code #13457: ((6,2,2)), m=18, a=[2, 7, 8, 12, 13, 15], S=[0, 17]. -/
def code_13457 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-2 : ℚ) / 3)]

/-- Catalogue code #13458: ((6,2,2)), m=18, a=[2, 7, 8, 12, 14, 15], S=[0, 5]. -/
def code_13458 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (5 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 9), ((-5 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13459: ((6,2,2)), m=18, a=[2, 7, 8, 12, 14, 15], S=[0, 17]. -/
def code_13459 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((-4 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13460: ((6,2,2)), m=18, a=[2, 7, 8, 12, 15, 16], S=[0, 14]. -/
def code_13460 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((5 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13461: ((6,2,2)), m=18, a=[2, 7, 8, 13, 14, 15], S=[0, 17]. -/
def code_13461 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0)]
  targetZ := ![((4 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13462: ((6,2,2)), m=18, a=[2, 7, 10, 10, 16, 17], S=[0, 4]. -/
def code_13462 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (4 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13463: ((6,2,2)), m=18, a=[2, 7, 10, 12, 15, 17], S=[0, 13]. -/
def code_13463 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-5 : ℚ) / 9)]

/-- Catalogue code #13464: ((6,2,2)), m=18, a=[2, 7, 12, 13, 14, 15], S=[0, 17]. -/
def code_13464 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13465: ((6,2,2)), m=18, a=[2, 7, 14, 14, 16, 17], S=[0, 8]. -/
def code_13465 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (7 : ZMod 18), (14 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (8 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13466: ((6,2,2)), m=18, a=[2, 8, 8, 11, 11, 12], S=[0, 14]. -/
def code_13466 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}, {![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13467: ((6,2,2)), m=18, a=[2, 8, 8, 12, 13, 16], S=[0, 14]. -/
def code_13467 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), (1 : ℚ), ((-1 : ℚ) / 9)]

/-- Catalogue code #13468: ((6,2,2)), m=18, a=[2, 8, 8, 12, 16, 17], S=[0, 14]. -/
def code_13468 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), (1 : ℚ)]

/-- Catalogue code #13469: ((6,2,2)), m=18, a=[2, 8, 8, 12, 17, 17], S=[0, 14]. -/
def code_13469 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (17 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13470: ((6,2,2)), m=18, a=[2, 8, 8, 13, 16, 17], S=[0, 14]. -/
def code_13470 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13471: ((6,2,2)), m=18, a=[2, 8, 8, 15, 15, 16], S=[0, 14]. -/
def code_13471 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (15 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, false, false, false]}, {![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13472: ((6,2,2)), m=18, a=[2, 8, 9, 12, 13, 16], S=[0, 14]. -/
def code_13472 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (9 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13473: ((6,2,2)), m=18, a=[2, 8, 11, 11, 12, 16], S=[0, 14]. -/
def code_13473 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, true, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 3), ((5 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13474: ((6,2,2)), m=18, a=[2, 8, 11, 12, 14, 17], S=[0, 13]. -/
def code_13474 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (14 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((2 : ℚ) / 3), ((2 : ℚ) / 9), (0 : ℚ), ((1 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13475: ((6,2,2)), m=18, a=[2, 8, 11, 12, 15, 16], S=[0, 14]. -/
def code_13475 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13476: ((6,2,2)), m=18, a=[2, 8, 12, 13, 13, 16], S=[0, 14]. -/
def code_13476 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (13 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13477: ((6,2,2)), m=18, a=[2, 8, 12, 13, 14, 15], S=[0, 11]. -/
def code_13477 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (11 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), (0 : ℚ), ((-4 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13478: ((6,2,2)), m=18, a=[2, 8, 12, 13, 14, 15], S=[0, 17]. -/
def code_13478 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (8 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (15 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 3), ((-5 : ℚ) / 9), ((2 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13479: ((6,2,2)), m=18, a=[2, 10, 10, 12, 15, 17], S=[0, 14]. -/
def code_13479 : ExampleData 6 18 2 where
  a := ![(2 : ZMod 18), (10 : ZMod 18), (10 : ZMod 18), (12 : ZMod 18), (15 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (14 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0)]
  targetZ := ![((7 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13480: ((6,2,2)), m=18, a=[3, 3, 4, 8, 8, 14], S=[0, 2]. -/
def code_13480 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13481: ((6,2,2)), m=18, a=[3, 4, 5, 6, 7, 8], S=[0, 17]. -/
def code_13481 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (7 : ZMod 18), (8 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 3)]

/-- Catalogue code #13482: ((6,2,2)), m=18, a=[3, 4, 5, 6, 8, 14], S=[0, 2]. -/
def code_13482 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13483: ((6,2,2)), m=18, a=[3, 4, 5, 6, 10, 11], S=[0, 1]. -/
def code_13483 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((4 : ℚ) / 9), ((-1 : ℚ) / 3), ((1 : ℚ) / 3)]

/-- Catalogue code #13484: ((6,2,2)), m=18, a=[3, 4, 5, 6, 10, 16], S=[0, 1]. -/
def code_13484 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 9), (0 : ℚ), ((2 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13485: ((6,2,2)), m=18, a=[3, 4, 5, 6, 10, 17], S=[0, 7]. -/
def code_13485 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-5 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13486: ((6,2,2)), m=18, a=[3, 4, 5, 6, 11, 16], S=[0, 1]. -/
def code_13486 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 3), ((1 : ℚ) / 9), ((-5 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13487: ((6,2,2)), m=18, a=[3, 4, 5, 6, 14, 16], S=[0, 10]. -/
def code_13487 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, false, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 9), ((-5 : ℚ) / 9), ((1 : ℚ) / 3), ((5 : ℚ) / 9)]

/-- Catalogue code #13488: ((6,2,2)), m=18, a=[3, 4, 5, 6, 16, 17], S=[0, 7]. -/
def code_13488 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (6 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9)]

/-- Catalogue code #13489: ((6,2,2)), m=18, a=[3, 4, 5, 10, 11, 16], S=[0, 1]. -/
def code_13489 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((2 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((4 : ℚ) / 9)]

/-- Catalogue code #13490: ((6,2,2)), m=18, a=[3, 4, 5, 10, 16, 17], S=[0, 7]. -/
def code_13490 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (5 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((4 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((-4 : ℚ) / 9)]

/-- Catalogue code #13491: ((6,2,2)), m=18, a=[3, 4, 6, 8, 13, 14], S=[0, 2]. -/
def code_13491 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (8 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18)]
  S := ![(0 : ZMod 18), (2 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else 0)]
  targetZ := ![((1 : ℚ) / 9), ((1 : ℚ) / 3), ((-1 : ℚ) / 9), ((7 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 3)]

/-- Catalogue code #13492: ((6,2,2)), m=18, a=[3, 4, 6, 10, 11, 16], S=[0, 1]. -/
def code_13492 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (1 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((-4 : ℚ) / 9)]

/-- Catalogue code #13493: ((6,2,2)), m=18, a=[3, 4, 6, 10, 11, 16], S=[0, 13]. -/
def code_13493 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((-5 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3), (0 : ℚ), ((2 : ℚ) / 9)]

/-- Catalogue code #13494: ((6,2,2)), m=18, a=[3, 4, 6, 10, 11, 17], S=[0, 13]. -/
def code_13494 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (11 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 3), ((1 : ℚ) / 9), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 9), ((2 : ℚ) / 9)]

/-- Catalogue code #13495: ((6,2,2)), m=18, a=[3, 4, 6, 10, 16, 17], S=[0, 7]. -/
def code_13495 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (7 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((2 : ℚ) / 9), ((2 : ℚ) / 9), ((-5 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13496: ((6,2,2)), m=18, a=[3, 4, 6, 10, 16, 17], S=[0, 13]. -/
def code_13496 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (10 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 3), ((-4 : ℚ) / 9), ((-4 : ℚ) / 9), ((1 : ℚ) / 9), (0 : ℚ)]

/-- Catalogue code #13497: ((6,2,2)), m=18, a=[3, 4, 6, 11, 16, 17], S=[0, 13]. -/
def code_13497 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (11 : ZMod 18), (16 : ZMod 18), (17 : ZMod 18)]
  S := ![(0 : ZMod 18), (13 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, false]}, {![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 18)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 18)
      else 0)]
  targetZ := ![((-2 : ℚ) / 9), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((-4 : ℚ) / 9), ((2 : ℚ) / 9), ((1 : ℚ) / 3)]

/-- Catalogue code #13498: ((6,2,2)), m=18, a=[3, 4, 6, 13, 14, 16], S=[0, 10]. -/
def code_13498 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (6 : ZMod 18), (13 : ZMod 18), (14 : ZMod 18), (16 : ZMod 18)]
  S := ![(0 : ZMod 18), (10 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 9)
      else 0)]
  targetZ := ![((-1 : ℚ) / 9), ((1 : ℚ) / 9), ((1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9), ((-1 : ℚ) / 9)]

/-- Catalogue code #13499: ((6,2,2)), m=18, a=[3, 4, 8, 11, 12, 13], S=[0, 17]. -/
def code_13499 : ExampleData 6 18 2 where
  a := ![(3 : ZMod 18), (4 : ZMod 18), (8 : ZMod 18), (11 : ZMod 18), (12 : ZMod 18), (13 : ZMod 18)]
  S := ![(0 : ZMod 18), (17 : ZMod 18)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}, {![false, true, false, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 9)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 18)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 9)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 9)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 6)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 3)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 18)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((7 : ℚ) / 18)
      else 0)]
  targetZ := ![((2 : ℚ) / 9), ((-2 : ℚ) / 9), ((-1 : ℚ) / 3), ((-1 : ℚ) / 3), ((4 : ℚ) / 9), ((-4 : ℚ) / 9)]
def checks : List Bool :=
  [decide code_13000.OK,
   decide code_13001.OK,
   decide code_13002.OK,
   decide code_13003.OK,
   decide code_13004.OK,
   decide code_13005.OK,
   decide code_13006.OK,
   decide code_13007.OK,
   decide code_13008.OK,
   decide code_13009.OK,
   decide code_13010.OK,
   decide code_13011.OK,
   decide code_13012.OK,
   decide code_13013.OK,
   decide code_13014.OK,
   decide code_13015.OK,
   decide code_13016.OK,
   decide code_13017.OK,
   decide code_13018.OK,
   decide code_13019.OK,
   decide code_13020.OK,
   decide code_13021.OK,
   decide code_13022.OK,
   decide code_13023.OK,
   decide code_13024.OK,
   decide code_13025.OK,
   decide code_13026.OK,
   decide code_13027.OK,
   decide code_13028.OK,
   decide code_13029.OK,
   decide code_13030.OK,
   decide code_13031.OK,
   decide code_13032.OK,
   decide code_13033.OK,
   decide code_13034.OK,
   decide code_13035.OK,
   decide code_13036.OK,
   decide code_13037.OK,
   decide code_13038.OK,
   decide code_13039.OK,
   decide code_13040.OK,
   decide code_13041.OK,
   decide code_13042.OK,
   decide code_13043.OK,
   decide code_13044.OK,
   decide code_13045.OK,
   decide code_13046.OK,
   decide code_13047.OK,
   decide code_13048.OK,
   decide code_13049.OK,
   decide code_13050.OK,
   decide code_13051.OK,
   decide code_13052.OK,
   decide code_13053.OK,
   decide code_13054.OK,
   decide code_13055.OK,
   decide code_13056.OK,
   decide code_13057.OK,
   decide code_13058.OK,
   decide code_13059.OK,
   decide code_13060.OK,
   decide code_13061.OK,
   decide code_13062.OK,
   decide code_13063.OK,
   decide code_13064.OK,
   decide code_13065.OK,
   decide code_13066.OK,
   decide code_13067.OK,
   decide code_13068.OK,
   decide code_13069.OK,
   decide code_13070.OK,
   decide code_13071.OK,
   decide code_13072.OK,
   decide code_13073.OK,
   decide code_13074.OK,
   decide code_13075.OK,
   decide code_13076.OK,
   decide code_13077.OK,
   decide code_13078.OK,
   decide code_13079.OK,
   decide code_13080.OK,
   decide code_13081.OK,
   decide code_13082.OK,
   decide code_13083.OK,
   decide code_13084.OK,
   decide code_13085.OK,
   decide code_13086.OK,
   decide code_13087.OK,
   decide code_13088.OK,
   decide code_13089.OK,
   decide code_13090.OK,
   decide code_13091.OK,
   decide code_13092.OK,
   decide code_13093.OK,
   decide code_13094.OK,
   decide code_13095.OK,
   decide code_13096.OK,
   decide code_13097.OK,
   decide code_13098.OK,
   decide code_13099.OK,
   decide code_13100.OK,
   decide code_13101.OK,
   decide code_13102.OK,
   decide code_13103.OK,
   decide code_13104.OK,
   decide code_13105.OK,
   decide code_13106.OK,
   decide code_13107.OK,
   decide code_13108.OK,
   decide code_13109.OK,
   decide code_13110.OK,
   decide code_13111.OK,
   decide code_13112.OK,
   decide code_13113.OK,
   decide code_13114.OK,
   decide code_13115.OK,
   decide code_13116.OK,
   decide code_13117.OK,
   decide code_13118.OK,
   decide code_13119.OK,
   decide code_13120.OK,
   decide code_13121.OK,
   decide code_13122.OK,
   decide code_13123.OK,
   decide code_13124.OK,
   decide code_13125.OK,
   decide code_13126.OK,
   decide code_13127.OK,
   decide code_13128.OK,
   decide code_13129.OK,
   decide code_13130.OK,
   decide code_13131.OK,
   decide code_13132.OK,
   decide code_13133.OK,
   decide code_13134.OK,
   decide code_13135.OK,
   decide code_13136.OK,
   decide code_13137.OK,
   decide code_13138.OK,
   decide code_13139.OK,
   decide code_13140.OK,
   decide code_13141.OK,
   decide code_13142.OK,
   decide code_13143.OK,
   decide code_13144.OK,
   decide code_13145.OK,
   decide code_13146.OK,
   decide code_13147.OK,
   decide code_13148.OK,
   decide code_13149.OK,
   decide code_13150.OK,
   decide code_13151.OK,
   decide code_13152.OK,
   decide code_13153.OK,
   decide code_13154.OK,
   decide code_13155.OK,
   decide code_13156.OK,
   decide code_13157.OK,
   decide code_13158.OK,
   decide code_13159.OK,
   decide code_13160.OK,
   decide code_13161.OK,
   decide code_13162.OK,
   decide code_13163.OK,
   decide code_13164.OK,
   decide code_13165.OK,
   decide code_13166.OK,
   decide code_13167.OK,
   decide code_13168.OK,
   decide code_13169.OK,
   decide code_13170.OK,
   decide code_13171.OK,
   decide code_13172.OK,
   decide code_13173.OK,
   decide code_13174.OK,
   decide code_13175.OK,
   decide code_13176.OK,
   decide code_13177.OK,
   decide code_13178.OK,
   decide code_13179.OK,
   decide code_13180.OK,
   decide code_13181.OK,
   decide code_13182.OK,
   decide code_13183.OK,
   decide code_13184.OK,
   decide code_13185.OK,
   decide code_13186.OK,
   decide code_13187.OK,
   decide code_13188.OK,
   decide code_13189.OK,
   decide code_13190.OK,
   decide code_13191.OK,
   decide code_13192.OK,
   decide code_13193.OK,
   decide code_13194.OK,
   decide code_13195.OK,
   decide code_13196.OK,
   decide code_13197.OK,
   decide code_13198.OK,
   decide code_13199.OK,
   decide code_13200.OK,
   decide code_13201.OK,
   decide code_13202.OK,
   decide code_13203.OK,
   decide code_13204.OK,
   decide code_13205.OK,
   decide code_13206.OK,
   decide code_13207.OK,
   decide code_13208.OK,
   decide code_13209.OK,
   decide code_13210.OK,
   decide code_13211.OK,
   decide code_13212.OK,
   decide code_13213.OK,
   decide code_13214.OK,
   decide code_13215.OK,
   decide code_13216.OK,
   decide code_13217.OK,
   decide code_13218.OK,
   decide code_13219.OK,
   decide code_13220.OK,
   decide code_13221.OK,
   decide code_13222.OK,
   decide code_13223.OK,
   decide code_13224.OK,
   decide code_13225.OK,
   decide code_13226.OK,
   decide code_13227.OK,
   decide code_13228.OK,
   decide code_13229.OK,
   decide code_13230.OK,
   decide code_13231.OK,
   decide code_13232.OK,
   decide code_13233.OK,
   decide code_13234.OK,
   decide code_13235.OK,
   decide code_13236.OK,
   decide code_13237.OK,
   decide code_13238.OK,
   decide code_13239.OK,
   decide code_13240.OK,
   decide code_13241.OK,
   decide code_13242.OK,
   decide code_13243.OK,
   decide code_13244.OK,
   decide code_13245.OK,
   decide code_13246.OK,
   decide code_13247.OK,
   decide code_13248.OK,
   decide code_13249.OK,
   decide code_13250.OK,
   decide code_13251.OK,
   decide code_13252.OK,
   decide code_13253.OK,
   decide code_13254.OK,
   decide code_13255.OK,
   decide code_13256.OK,
   decide code_13257.OK,
   decide code_13258.OK,
   decide code_13259.OK,
   decide code_13260.OK,
   decide code_13261.OK,
   decide code_13262.OK,
   decide code_13263.OK,
   decide code_13264.OK,
   decide code_13265.OK,
   decide code_13266.OK,
   decide code_13267.OK,
   decide code_13268.OK,
   decide code_13269.OK,
   decide code_13270.OK,
   decide code_13271.OK,
   decide code_13272.OK,
   decide code_13273.OK,
   decide code_13274.OK,
   decide code_13275.OK,
   decide code_13276.OK,
   decide code_13277.OK,
   decide code_13278.OK,
   decide code_13279.OK,
   decide code_13280.OK,
   decide code_13281.OK,
   decide code_13282.OK,
   decide code_13283.OK,
   decide code_13284.OK,
   decide code_13285.OK,
   decide code_13286.OK,
   decide code_13287.OK,
   decide code_13288.OK,
   decide code_13289.OK,
   decide code_13290.OK,
   decide code_13291.OK,
   decide code_13292.OK,
   decide code_13293.OK,
   decide code_13294.OK,
   decide code_13295.OK,
   decide code_13296.OK,
   decide code_13297.OK,
   decide code_13298.OK,
   decide code_13299.OK,
   decide code_13300.OK,
   decide code_13301.OK,
   decide code_13302.OK,
   decide code_13303.OK,
   decide code_13304.OK,
   decide code_13305.OK,
   decide code_13306.OK,
   decide code_13307.OK,
   decide code_13308.OK,
   decide code_13309.OK,
   decide code_13310.OK,
   decide code_13311.OK,
   decide code_13312.OK,
   decide code_13313.OK,
   decide code_13314.OK,
   decide code_13315.OK,
   decide code_13316.OK,
   decide code_13317.OK,
   decide code_13318.OK,
   decide code_13319.OK,
   decide code_13320.OK,
   decide code_13321.OK,
   decide code_13322.OK,
   decide code_13323.OK,
   decide code_13324.OK,
   decide code_13325.OK,
   decide code_13326.OK,
   decide code_13327.OK,
   decide code_13328.OK,
   decide code_13329.OK,
   decide code_13330.OK,
   decide code_13331.OK,
   decide code_13332.OK,
   decide code_13333.OK,
   decide code_13334.OK,
   decide code_13335.OK,
   decide code_13336.OK,
   decide code_13337.OK,
   decide code_13338.OK,
   decide code_13339.OK,
   decide code_13340.OK,
   decide code_13341.OK,
   decide code_13342.OK,
   decide code_13343.OK,
   decide code_13344.OK,
   decide code_13345.OK,
   decide code_13346.OK,
   decide code_13347.OK,
   decide code_13348.OK,
   decide code_13349.OK,
   decide code_13350.OK,
   decide code_13351.OK,
   decide code_13352.OK,
   decide code_13353.OK,
   decide code_13354.OK,
   decide code_13355.OK,
   decide code_13356.OK,
   decide code_13357.OK,
   decide code_13358.OK,
   decide code_13359.OK,
   decide code_13360.OK,
   decide code_13361.OK,
   decide code_13362.OK,
   decide code_13363.OK,
   decide code_13364.OK,
   decide code_13365.OK,
   decide code_13366.OK,
   decide code_13367.OK,
   decide code_13368.OK,
   decide code_13369.OK,
   decide code_13370.OK,
   decide code_13371.OK,
   decide code_13372.OK,
   decide code_13373.OK,
   decide code_13374.OK,
   decide code_13375.OK,
   decide code_13376.OK,
   decide code_13377.OK,
   decide code_13378.OK,
   decide code_13379.OK,
   decide code_13380.OK,
   decide code_13381.OK,
   decide code_13382.OK,
   decide code_13383.OK,
   decide code_13384.OK,
   decide code_13385.OK,
   decide code_13386.OK,
   decide code_13387.OK,
   decide code_13388.OK,
   decide code_13389.OK,
   decide code_13390.OK,
   decide code_13391.OK,
   decide code_13392.OK,
   decide code_13393.OK,
   decide code_13394.OK,
   decide code_13395.OK,
   decide code_13396.OK,
   decide code_13397.OK,
   decide code_13398.OK,
   decide code_13399.OK,
   decide code_13400.OK,
   decide code_13401.OK,
   decide code_13402.OK,
   decide code_13403.OK,
   decide code_13404.OK,
   decide code_13405.OK,
   decide code_13406.OK,
   decide code_13407.OK,
   decide code_13408.OK,
   decide code_13409.OK,
   decide code_13410.OK,
   decide code_13411.OK,
   decide code_13412.OK,
   decide code_13413.OK,
   decide code_13414.OK,
   decide code_13415.OK,
   decide code_13416.OK,
   decide code_13417.OK,
   decide code_13418.OK,
   decide code_13419.OK,
   decide code_13420.OK,
   decide code_13421.OK,
   decide code_13422.OK,
   decide code_13423.OK,
   decide code_13424.OK,
   decide code_13425.OK,
   decide code_13426.OK,
   decide code_13427.OK,
   decide code_13428.OK,
   decide code_13429.OK,
   decide code_13430.OK,
   decide code_13431.OK,
   decide code_13432.OK,
   decide code_13433.OK,
   decide code_13434.OK,
   decide code_13435.OK,
   decide code_13436.OK,
   decide code_13437.OK,
   decide code_13438.OK,
   decide code_13439.OK,
   decide code_13440.OK,
   decide code_13441.OK,
   decide code_13442.OK,
   decide code_13443.OK,
   decide code_13444.OK,
   decide code_13445.OK,
   decide code_13446.OK,
   decide code_13447.OK,
   decide code_13448.OK,
   decide code_13449.OK,
   decide code_13450.OK,
   decide code_13451.OK,
   decide code_13452.OK,
   decide code_13453.OK,
   decide code_13454.OK,
   decide code_13455.OK,
   decide code_13456.OK,
   decide code_13457.OK,
   decide code_13458.OK,
   decide code_13459.OK,
   decide code_13460.OK,
   decide code_13461.OK,
   decide code_13462.OK,
   decide code_13463.OK,
   decide code_13464.OK,
   decide code_13465.OK,
   decide code_13466.OK,
   decide code_13467.OK,
   decide code_13468.OK,
   decide code_13469.OK,
   decide code_13470.OK,
   decide code_13471.OK,
   decide code_13472.OK,
   decide code_13473.OK,
   decide code_13474.OK,
   decide code_13475.OK,
   decide code_13476.OK,
   decide code_13477.OK,
   decide code_13478.OK,
   decide code_13479.OK,
   decide code_13480.OK,
   decide code_13481.OK,
   decide code_13482.OK,
   decide code_13483.OK,
   decide code_13484.OK,
   decide code_13485.OK,
   decide code_13486.OK,
   decide code_13487.OK,
   decide code_13488.OK,
   decide code_13489.OK,
   decide code_13490.OK,
   decide code_13491.OK,
   decide code_13492.OK,
   decide code_13493.OK,
   decide code_13494.OK,
   decide code_13495.OK,
   decide code_13496.OK,
   decide code_13497.OK,
   decide code_13498.OK,
   decide code_13499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk026
