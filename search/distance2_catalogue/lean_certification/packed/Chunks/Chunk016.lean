import SS

namespace Catalogue.Chunk016

open SS SS.Verify

/-- Catalogue code #8000: ((6,2,2)), m=13, a=[5, 9, 9, 10, 11, 12], S=[0, 7]. -/
def code_8000 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (7 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #8001: ((6,2,2)), m=13, a=[5, 9, 9, 10, 12, 12], S=[0, 11]. -/
def code_8001 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8002: ((6,2,2)), m=13, a=[5, 9, 11, 11, 12, 12], S=[0, 3]. -/
def code_8002 : ExampleData 6 13 2 where
  a := ![(5 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8003: ((6,2,2)), m=13, a=[6, 6, 8, 9, 9, 10], S=[0, 1]. -/
def code_8003 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8004: ((6,2,2)), m=13, a=[6, 6, 9, 9, 10, 12], S=[0, 5]. -/
def code_8004 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #8005: ((6,2,2)), m=13, a=[6, 6, 9, 11, 12, 12], S=[0, 8]. -/
def code_8005 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8006: ((6,2,2)), m=13, a=[6, 6, 10, 11, 11, 12], S=[0, 9]. -/
def code_8006 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #8007: ((6,2,2)), m=13, a=[6, 6, 10, 11, 12, 12], S=[0, 8]. -/
def code_8007 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-7 : ℚ) / 13), ((-7 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #8008: ((6,2,2)), m=13, a=[6, 7, 8, 8, 9, 10], S=[0, 12]. -/
def code_8008 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((7 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #8009: ((6,2,2)), m=13, a=[6, 7, 8, 9, 9, 10], S=[0, 11]. -/
def code_8009 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #8010: ((6,2,2)), m=13, a=[6, 7, 8, 9, 9, 11], S=[0, 1]. -/
def code_8010 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8011: ((6,2,2)), m=13, a=[6, 7, 8, 9, 9, 11], S=[0, 12]. -/
def code_8011 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (12 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8012: ((6,2,2)), m=13, a=[6, 7, 8, 9, 9, 12], S=[0, 2]. -/
def code_8012 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((11 : ℚ) / 13)]

/-- Catalogue code #8013: ((6,2,2)), m=13, a=[6, 7, 8, 9, 9, 12], S=[0, 10]. -/
def code_8013 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-11 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8014: ((6,2,2)), m=13, a=[6, 7, 8, 9, 10, 11], S=[0, 1]. -/
def code_8014 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((9 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #8015: ((6,2,2)), m=13, a=[6, 7, 8, 9, 10, 12], S=[0, 2]. -/
def code_8015 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8016: ((6,2,2)), m=13, a=[6, 7, 8, 9, 11, 12], S=[0, 10]. -/
def code_8016 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #8017: ((6,2,2)), m=13, a=[6, 7, 8, 10, 10, 11], S=[0, 1]. -/
def code_8017 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #8018: ((6,2,2)), m=13, a=[6, 7, 8, 10, 10, 12], S=[0, 2]. -/
def code_8018 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #8019: ((6,2,2)), m=13, a=[6, 7, 8, 10, 11, 12], S=[0, 4]. -/
def code_8019 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8020: ((6,2,2)), m=13, a=[6, 7, 9, 9, 11, 12], S=[0, 5]. -/
def code_8020 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((1 : ℚ) / 13), ((7 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #8021: ((6,2,2)), m=13, a=[6, 7, 9, 9, 11, 12], S=[0, 10]. -/
def code_8021 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((-11 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #8022: ((6,2,2)), m=13, a=[6, 7, 9, 10, 11, 11], S=[0, 1]. -/
def code_8022 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #8023: ((6,2,2)), m=13, a=[6, 7, 9, 10, 11, 12], S=[0, 8]. -/
def code_8023 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #8024: ((6,2,2)), m=13, a=[6, 7, 9, 10, 12, 12], S=[0, 2]. -/
def code_8024 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8025: ((6,2,2)), m=13, a=[6, 7, 9, 11, 11, 12], S=[0, 3]. -/
def code_8025 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8026: ((6,2,2)), m=13, a=[6, 7, 9, 11, 12, 12], S=[0, 3]. -/
def code_8026 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #8027: ((6,2,2)), m=13, a=[6, 7, 10, 10, 11, 11], S=[0, 1]. -/
def code_8027 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #8028: ((6,2,2)), m=13, a=[6, 7, 10, 10, 11, 12], S=[0, 5]. -/
def code_8028 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((11 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8029: ((6,2,2)), m=13, a=[6, 7, 10, 11, 11, 11], S=[0, 1]. -/
def code_8029 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}, {![false, true, false, true, true, true], ![true, false, true, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-9 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #8030: ((6,2,2)), m=13, a=[6, 7, 10, 11, 11, 12], S=[0, 4]. -/
def code_8030 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((9 : ℚ) / 13)]

/-- Catalogue code #8031: ((6,2,2)), m=13, a=[6, 7, 10, 11, 12, 12], S=[0, 4]. -/
def code_8031 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (7 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13)]

/-- Catalogue code #8032: ((6,2,2)), m=13, a=[6, 8, 8, 9, 10, 11], S=[0, 1]. -/
def code_8032 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8033: ((6,2,2)), m=13, a=[6, 8, 8, 9, 10, 12], S=[0, 2]. -/
def code_8033 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, true, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13), ((7 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #8034: ((6,2,2)), m=13, a=[6, 8, 8, 9, 11, 12], S=[0, 3]. -/
def code_8034 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #8035: ((6,2,2)), m=13, a=[6, 8, 8, 10, 11, 12], S=[0, 4]. -/
def code_8035 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((5 : ℚ) / 13), ((7 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8036: ((6,2,2)), m=13, a=[6, 8, 9, 9, 10, 10], S=[0, 2]. -/
def code_8036 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #8037: ((6,2,2)), m=13, a=[6, 8, 9, 9, 11, 12], S=[0, 10]. -/
def code_8037 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8038: ((6,2,2)), m=13, a=[6, 8, 9, 10, 10, 11], S=[0, 1]. -/
def code_8038 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (1 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-5 : ℚ) / 13)]

/-- Catalogue code #8039: ((6,2,2)), m=13, a=[6, 8, 9, 10, 12, 12], S=[0, 2]. -/
def code_8039 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, true, false, false, false, true]}, {![false, true, true, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((1 : ℚ) / 13), ((-7 : ℚ) / 13)]

/-- Catalogue code #8040: ((6,2,2)), m=13, a=[6, 8, 9, 11, 11, 12], S=[0, 10]. -/
def code_8040 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (10 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, false, true, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((7 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8041: ((6,2,2)), m=13, a=[6, 8, 9, 11, 12, 12], S=[0, 3]. -/
def code_8041 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (3 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #8042: ((6,2,2)), m=13, a=[6, 8, 10, 10, 11, 12], S=[0, 9]. -/
def code_8042 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #8043: ((6,2,2)), m=13, a=[6, 8, 10, 11, 11, 12], S=[0, 9]. -/
def code_8043 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (9 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((-1 : ℚ) / 13), ((-1 : ℚ) / 13), ((-3 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((-9 : ℚ) / 13)]

/-- Catalogue code #8044: ((6,2,2)), m=13, a=[6, 8, 11, 11, 12, 12], S=[0, 4]. -/
def code_8044 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (8 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8045: ((6,2,2)), m=13, a=[6, 9, 9, 10, 10, 11], S=[0, 8]. -/
def code_8045 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((6 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8046: ((6,2,2)), m=13, a=[6, 9, 9, 10, 11, 12], S=[0, 8]. -/
def code_8046 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #8047: ((6,2,2)), m=13, a=[6, 9, 9, 10, 12, 12], S=[0, 8]. -/
def code_8047 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (8 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0)]
  targetZ := ![((9 : ℚ) / 13), ((-1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8048: ((6,2,2)), m=13, a=[6, 9, 9, 10, 12, 12], S=[0, 11]. -/
def code_8048 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (11 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((7 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13), ((9 : ℚ) / 13), ((-3 : ℚ) / 13), ((-3 : ℚ) / 13)]

/-- Catalogue code #8049: ((6,2,2)), m=13, a=[6, 9, 9, 11, 11, 12], S=[0, 5]. -/
def code_8049 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((5 : ℚ) / 13), ((5 : ℚ) / 13), ((-3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #8050: ((6,2,2)), m=13, a=[6, 9, 9, 11, 12, 12], S=[0, 5]. -/
def code_8050 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (9 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((7 : ℚ) / 13), ((9 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13)]

/-- Catalogue code #8051: ((6,2,2)), m=13, a=[6, 9, 10, 10, 12, 12], S=[0, 2]. -/
def code_8051 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (9 : ZMod 13), (10 : ZMod 13), (10 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (2 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}, {![false, true, true, true, false, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((6 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 13)
      else 0)]
  targetZ := ![((-9 : ℚ) / 13), ((3 : ℚ) / 13), ((1 : ℚ) / 13), ((1 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13)]

/-- Catalogue code #8052: ((6,2,2)), m=13, a=[6, 9, 11, 11, 12, 12], S=[0, 5]. -/
def code_8052 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (9 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (5 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((4 : ℚ) / 13)
      else 0)]
  targetZ := ![((-3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((3 : ℚ) / 13), ((5 : ℚ) / 13), ((5 : ℚ) / 13)]

/-- Catalogue code #8053: ((6,2,2)), m=13, a=[6, 10, 11, 11, 12, 12], S=[0, 4]. -/
def code_8053 : ExampleData 6 13 2 where
  a := ![(6 : ZMod 13), (10 : ZMod 13), (11 : ZMod 13), (11 : ZMod 13), (12 : ZMod 13), (12 : ZMod 13)]
  S := ![(0 : ZMod 13), (4 : ZMod 13)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, true, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 13)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 13)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 13)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 13)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 13)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 13)
      else 0)]
  targetZ := ![((-5 : ℚ) / 13), ((5 : ℚ) / 13), ((3 : ℚ) / 13), ((-5 : ℚ) / 13), ((-1 : ℚ) / 13), ((-1 : ℚ) / 13)]

/-- Catalogue code #8054: ((6,2,2)), m=14, a=[1, 1, 1, 3, 3, 5], S=[0, 6]. -/
def code_8054 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8055: ((6,2,2)), m=14, a=[1, 1, 1, 3, 3, 6], S=[0, 9]. -/
def code_8055 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8056: ((6,2,2)), m=14, a=[1, 1, 1, 3, 3, 8], S=[0, 9]. -/
def code_8056 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8057: ((6,2,2)), m=14, a=[1, 1, 1, 3, 6, 8], S=[0, 9]. -/
def code_8057 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8058: ((6,2,2)), m=14, a=[1, 1, 1, 3, 8, 11], S=[0, 5]. -/
def code_8058 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8059: ((6,2,2)), m=14, a=[1, 1, 1, 3, 9, 11], S=[0, 6]. -/
def code_8059 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8060: ((6,2,2)), m=14, a=[1, 1, 1, 5, 6, 6], S=[0, 3]. -/
def code_8060 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8061: ((6,2,2)), m=14, a=[1, 1, 1, 5, 11, 11], S=[0, 8]. -/
def code_8061 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8062: ((6,2,2)), m=14, a=[1, 1, 1, 8, 8, 9], S=[0, 3]. -/
def code_8062 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8063: ((6,2,2)), m=14, a=[1, 1, 2, 2, 4, 4], S=[0, 6]. -/
def code_8063 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8064: ((6,2,2)), m=14, a=[1, 1, 2, 2, 4, 4], S=[0, 8]. -/
def code_8064 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8065: ((6,2,2)), m=14, a=[1, 1, 2, 2, 4, 8], S=[0, 9]. -/
def code_8065 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8066: ((6,2,2)), m=14, a=[1, 1, 2, 2, 5, 5], S=[0, 10]. -/
def code_8066 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8067: ((6,2,2)), m=14, a=[1, 1, 2, 2, 5, 5], S=[0, 11]. -/
def code_8067 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #8068: ((6,2,2)), m=14, a=[1, 1, 2, 2, 5, 8], S=[0, 10]. -/
def code_8068 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8069: ((6,2,2)), m=14, a=[1, 1, 2, 2, 6, 8], S=[0, 10]. -/
def code_8069 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8070: ((6,2,2)), m=14, a=[1, 1, 2, 2, 8, 8], S=[0, 4]. -/
def code_8070 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8071: ((6,2,2)), m=14, a=[1, 1, 2, 2, 8, 9], S=[0, 4]. -/
def code_8071 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8072: ((6,2,2)), m=14, a=[1, 1, 2, 2, 8, 10], S=[0, 5]. -/
def code_8072 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8073: ((6,2,2)), m=14, a=[1, 1, 2, 2, 9, 9], S=[0, 4]. -/
def code_8073 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8074: ((6,2,2)), m=14, a=[1, 1, 2, 3, 3, 4], S=[0, 6]. -/
def code_8074 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8075: ((6,2,2)), m=14, a=[1, 1, 2, 3, 3, 4], S=[0, 8]. -/
def code_8075 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8076: ((6,2,2)), m=14, a=[1, 1, 2, 3, 3, 5], S=[0, 8]. -/
def code_8076 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8077: ((6,2,2)), m=14, a=[1, 1, 2, 3, 3, 6], S=[0, 9]. -/
def code_8077 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8078: ((6,2,2)), m=14, a=[1, 1, 2, 3, 3, 7], S=[0, 8]. -/
def code_8078 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8079: ((6,2,2)), m=14, a=[1, 1, 2, 3, 3, 7], S=[0, 9]. -/
def code_8079 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8080: ((6,2,2)), m=14, a=[1, 1, 2, 3, 4, 7], S=[0, 9]. -/
def code_8080 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8081: ((6,2,2)), m=14, a=[1, 1, 2, 3, 5, 5], S=[0, 10]. -/
def code_8081 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8082: ((6,2,2)), m=14, a=[1, 1, 2, 3, 5, 7], S=[0, 8]. -/
def code_8082 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8083: ((6,2,2)), m=14, a=[1, 1, 2, 3, 5, 7], S=[0, 10]. -/
def code_8083 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8084: ((6,2,2)), m=14, a=[1, 1, 2, 3, 6, 7], S=[0, 9]. -/
def code_8084 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8085: ((6,2,2)), m=14, a=[1, 1, 2, 3, 7, 8], S=[0, 5]. -/
def code_8085 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8086: ((6,2,2)), m=14, a=[1, 1, 2, 3, 7, 9], S=[0, 4]. -/
def code_8086 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8087: ((6,2,2)), m=14, a=[1, 1, 2, 3, 7, 9], S=[0, 6]. -/
def code_8087 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8088: ((6,2,2)), m=14, a=[1, 1, 2, 3, 7, 10], S=[0, 5]. -/
def code_8088 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8089: ((6,2,2)), m=14, a=[1, 1, 2, 3, 7, 11], S=[0, 5]. -/
def code_8089 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8090: ((6,2,2)), m=14, a=[1, 1, 2, 3, 7, 11], S=[0, 6]. -/
def code_8090 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8091: ((6,2,2)), m=14, a=[1, 1, 2, 3, 8, 8], S=[0, 5]. -/
def code_8091 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), (0 : ℚ), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8092: ((6,2,2)), m=14, a=[1, 1, 2, 3, 8, 10], S=[0, 5]. -/
def code_8092 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8093: ((6,2,2)), m=14, a=[1, 1, 2, 3, 8, 11], S=[0, 5]. -/
def code_8093 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8094: ((6,2,2)), m=14, a=[1, 1, 2, 3, 9, 10], S=[0, 6]. -/
def code_8094 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8095: ((6,2,2)), m=14, a=[1, 1, 2, 3, 9, 11], S=[0, 6]. -/
def code_8095 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8096: ((6,2,2)), m=14, a=[1, 1, 2, 4, 4, 4], S=[0, 8]. -/
def code_8096 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8097: ((6,2,2)), m=14, a=[1, 1, 2, 4, 5, 5], S=[0, 11]. -/
def code_8097 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #8098: ((6,2,2)), m=14, a=[1, 1, 2, 4, 5, 7], S=[0, 11]. -/
def code_8098 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-4 : ℚ) / 7)]

/-- Catalogue code #8099: ((6,2,2)), m=14, a=[1, 1, 2, 4, 6, 6], S=[0, 3]. -/
def code_8099 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8100: ((6,2,2)), m=14, a=[1, 1, 2, 4, 6, 8], S=[0, 11]. -/
def code_8100 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8101: ((6,2,2)), m=14, a=[1, 1, 2, 4, 7, 9], S=[0, 6]. -/
def code_8101 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8102: ((6,2,2)), m=14, a=[1, 1, 2, 4, 7, 10], S=[0, 6]. -/
def code_8102 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8103: ((6,2,2)), m=14, a=[1, 1, 2, 4, 9, 10], S=[0, 6]. -/
def code_8103 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![true, false, false, false, true, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8104: ((6,2,2)), m=14, a=[1, 1, 2, 4, 10, 10], S=[0, 6]. -/
def code_8104 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8105: ((6,2,2)), m=14, a=[1, 1, 2, 4, 10, 12], S=[0, 8]. -/
def code_8105 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8106: ((6,2,2)), m=14, a=[1, 1, 2, 4, 11, 11], S=[0, 8]. -/
def code_8106 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8107: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 5], S=[0, 3]. -/
def code_8107 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8108: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 6], S=[0, 4]. -/
def code_8108 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8109: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 7], S=[0, 3]. -/
def code_8109 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8110: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 7], S=[0, 4]. -/
def code_8110 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8111: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 7], S=[0, 11]. -/
def code_8111 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8112: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 10], S=[0, 3]. -/
def code_8112 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8113: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 11], S=[0, 4]. -/
def code_8113 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8114: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 12], S=[0, 3]. -/
def code_8114 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8115: ((6,2,2)), m=14, a=[1, 1, 2, 5, 5, 12], S=[0, 4]. -/
def code_8115 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8116: ((6,2,2)), m=14, a=[1, 1, 2, 5, 6, 6], S=[0, 3]. -/
def code_8116 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((6 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8117: ((6,2,2)), m=14, a=[1, 1, 2, 5, 6, 7], S=[0, 4]. -/
def code_8117 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8118: ((6,2,2)), m=14, a=[1, 1, 2, 5, 6, 7], S=[0, 11]. -/
def code_8118 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8119: ((6,2,2)), m=14, a=[1, 1, 2, 5, 6, 10], S=[0, 3]. -/
def code_8119 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8120: ((6,2,2)), m=14, a=[1, 1, 2, 5, 6, 12], S=[0, 4]. -/
def code_8120 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8121: ((6,2,2)), m=14, a=[1, 1, 2, 5, 7, 10], S=[0, 3]. -/
def code_8121 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8122: ((6,2,2)), m=14, a=[1, 1, 2, 5, 7, 10], S=[0, 8]. -/
def code_8122 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8123: ((6,2,2)), m=14, a=[1, 1, 2, 5, 7, 11], S=[0, 4]. -/
def code_8123 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8124: ((6,2,2)), m=14, a=[1, 1, 2, 5, 10, 10], S=[0, 8]. -/
def code_8124 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8125: ((6,2,2)), m=14, a=[1, 1, 2, 5, 10, 11], S=[0, 8]. -/
def code_8125 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8126: ((6,2,2)), m=14, a=[1, 1, 2, 6, 6, 6], S=[0, 4]. -/
def code_8126 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8127: ((6,2,2)), m=14, a=[1, 1, 2, 6, 6, 10], S=[0, 3]. -/
def code_8127 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8128: ((6,2,2)), m=14, a=[1, 1, 2, 6, 6, 10], S=[0, 9]. -/
def code_8128 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8129: ((6,2,2)), m=14, a=[1, 1, 2, 6, 6, 11], S=[0, 9]. -/
def code_8129 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8130: ((6,2,2)), m=14, a=[1, 1, 2, 6, 6, 12], S=[0, 4]. -/
def code_8130 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8131: ((6,2,2)), m=14, a=[1, 1, 2, 6, 10, 11], S=[0, 9]. -/
def code_8131 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8132: ((6,2,2)), m=14, a=[1, 1, 2, 6, 10, 12], S=[0, 9]. -/
def code_8132 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8133: ((6,2,2)), m=14, a=[1, 1, 2, 7, 8, 9], S=[0, 3]. -/
def code_8133 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8134: ((6,2,2)), m=14, a=[1, 1, 2, 7, 8, 9], S=[0, 4]. -/
def code_8134 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8135: ((6,2,2)), m=14, a=[1, 1, 2, 7, 8, 11], S=[0, 5]. -/
def code_8135 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8136: ((6,2,2)), m=14, a=[1, 1, 2, 7, 9, 9], S=[0, 4]. -/
def code_8136 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8137: ((6,2,2)), m=14, a=[1, 1, 2, 7, 9, 9], S=[0, 11]. -/
def code_8137 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8138: ((6,2,2)), m=14, a=[1, 1, 2, 7, 9, 10], S=[0, 6]. -/
def code_8138 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8139: ((6,2,2)), m=14, a=[1, 1, 2, 7, 9, 10], S=[0, 11]. -/
def code_8139 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8140: ((6,2,2)), m=14, a=[1, 1, 2, 7, 9, 11], S=[0, 6]. -/
def code_8140 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, false, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8141: ((6,2,2)), m=14, a=[1, 1, 2, 7, 10, 10], S=[0, 8]. -/
def code_8141 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8142: ((6,2,2)), m=14, a=[1, 1, 2, 7, 10, 11], S=[0, 9]. -/
def code_8142 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8143: ((6,2,2)), m=14, a=[1, 1, 2, 8, 8, 8], S=[0, 4]. -/
def code_8143 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8144: ((6,2,2)), m=14, a=[1, 1, 2, 8, 8, 8], S=[0, 10]. -/
def code_8144 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8145: ((6,2,2)), m=14, a=[1, 1, 2, 8, 8, 9], S=[0, 11]. -/
def code_8145 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((6 : ℚ) / 7), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8146: ((6,2,2)), m=14, a=[1, 1, 2, 8, 8, 10], S=[0, 5]. -/
def code_8146 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8147: ((6,2,2)), m=14, a=[1, 1, 2, 8, 9, 9], S=[0, 4]. -/
def code_8147 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8148: ((6,2,2)), m=14, a=[1, 1, 2, 8, 9, 10], S=[0, 11]. -/
def code_8148 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8149: ((6,2,2)), m=14, a=[1, 1, 2, 9, 9, 10], S=[0, 11]. -/
def code_8149 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8150: ((6,2,2)), m=14, a=[1, 1, 3, 3, 4, 6], S=[0, 12]. -/
def code_8150 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8151: ((6,2,2)), m=14, a=[1, 1, 3, 3, 4, 8], S=[0, 12]. -/
def code_8151 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8152: ((6,2,2)), m=14, a=[1, 1, 3, 3, 5, 6], S=[0, 12]. -/
def code_8152 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8153: ((6,2,2)), m=14, a=[1, 1, 3, 3, 5, 7], S=[0, 8]. -/
def code_8153 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8154: ((6,2,2)), m=14, a=[1, 1, 3, 3, 5, 7], S=[0, 12]. -/
def code_8154 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8155: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 6], S=[0, 2]. -/
def code_8155 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8156: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 6], S=[0, 5]. -/
def code_8156 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8157: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 7], S=[0, 2]. -/
def code_8157 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8158: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 7], S=[0, 5]. -/
def code_8158 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8159: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 7], S=[0, 9]. -/
def code_8159 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8160: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 8], S=[0, 12]. -/
def code_8160 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8161: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 9], S=[0, 2]. -/
def code_8161 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8162: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 10], S=[0, 2]. -/
def code_8162 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8163: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 12], S=[0, 5]. -/
def code_8163 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8164: ((6,2,2)), m=14, a=[1, 1, 3, 3, 6, 13], S=[0, 5]. -/
def code_8164 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8165: ((6,2,2)), m=14, a=[1, 1, 3, 3, 7, 9], S=[0, 2]. -/
def code_8165 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8166: ((6,2,2)), m=14, a=[1, 1, 3, 3, 7, 9], S=[0, 8]. -/
def code_8166 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8167: ((6,2,2)), m=14, a=[1, 1, 3, 3, 7, 12], S=[0, 5]. -/
def code_8167 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8168: ((6,2,2)), m=14, a=[1, 1, 3, 3, 7, 12], S=[0, 8]. -/
def code_8168 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8169: ((6,2,2)), m=14, a=[1, 1, 3, 3, 9, 12], S=[0, 8]. -/
def code_8169 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8170: ((6,2,2)), m=14, a=[1, 1, 3, 3, 9, 13], S=[0, 8]. -/
def code_8170 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8171: ((6,2,2)), m=14, a=[1, 1, 3, 3, 10, 12], S=[0, 8]. -/
def code_8171 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8172: ((6,2,2)), m=14, a=[1, 1, 3, 4, 5, 5], S=[0, 12]. -/
def code_8172 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8173: ((6,2,2)), m=14, a=[1, 1, 3, 4, 5, 7], S=[0, 2]. -/
def code_8173 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8174: ((6,2,2)), m=14, a=[1, 1, 3, 4, 5, 9], S=[0, 2]. -/
def code_8174 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8175: ((6,2,2)), m=14, a=[1, 1, 3, 4, 6, 6], S=[0, 2]. -/
def code_8175 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8176: ((6,2,2)), m=14, a=[1, 1, 3, 4, 6, 6], S=[0, 5]. -/
def code_8176 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8177: ((6,2,2)), m=14, a=[1, 1, 3, 4, 6, 8], S=[0, 12]. -/
def code_8177 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8178: ((6,2,2)), m=14, a=[1, 1, 3, 4, 6, 9], S=[0, 2]. -/
def code_8178 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8179: ((6,2,2)), m=14, a=[1, 1, 3, 4, 6, 12], S=[0, 5]. -/
def code_8179 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8180: ((6,2,2)), m=14, a=[1, 1, 3, 4, 7, 9], S=[0, 2]. -/
def code_8180 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8181: ((6,2,2)), m=14, a=[1, 1, 3, 4, 7, 12], S=[0, 5]. -/
def code_8181 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8182: ((6,2,2)), m=14, a=[1, 1, 3, 4, 9, 12], S=[0, 8]. -/
def code_8182 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8183: ((6,2,2)), m=14, a=[1, 1, 3, 5, 5, 7], S=[0, 10]. -/
def code_8183 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8184: ((6,2,2)), m=14, a=[1, 1, 3, 5, 5, 7], S=[0, 12]. -/
def code_8184 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8185: ((6,2,2)), m=14, a=[1, 1, 3, 5, 5, 9], S=[0, 12]. -/
def code_8185 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8186: ((6,2,2)), m=14, a=[1, 1, 3, 5, 6, 7], S=[0, 12]. -/
def code_8186 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8187: ((6,2,2)), m=14, a=[1, 1, 3, 5, 7, 9], S=[0, 2]. -/
def code_8187 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8188: ((6,2,2)), m=14, a=[1, 1, 3, 5, 7, 9], S=[0, 10]. -/
def code_8188 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8189: ((6,2,2)), m=14, a=[1, 1, 3, 5, 7, 12], S=[0, 10]. -/
def code_8189 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8190: ((6,2,2)), m=14, a=[1, 1, 3, 5, 9, 12], S=[0, 10]. -/
def code_8190 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8191: ((6,2,2)), m=14, a=[1, 1, 3, 6, 6, 9], S=[0, 2]. -/
def code_8191 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8192: ((6,2,2)), m=14, a=[1, 1, 3, 6, 6, 10], S=[0, 2]. -/
def code_8192 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8193: ((6,2,2)), m=14, a=[1, 1, 3, 6, 6, 12], S=[0, 5]. -/
def code_8193 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8194: ((6,2,2)), m=14, a=[1, 1, 3, 6, 6, 13], S=[0, 5]. -/
def code_8194 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8195: ((6,2,2)), m=14, a=[1, 1, 3, 6, 7, 9], S=[0, 2]. -/
def code_8195 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8196: ((6,2,2)), m=14, a=[1, 1, 3, 6, 7, 12], S=[0, 5]. -/
def code_8196 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8197: ((6,2,2)), m=14, a=[1, 1, 3, 7, 8, 9], S=[0, 12]. -/
def code_8197 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8198: ((6,2,2)), m=14, a=[1, 1, 3, 7, 8, 11], S=[0, 5]. -/
def code_8198 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8199: ((6,2,2)), m=14, a=[1, 1, 3, 7, 8, 11], S=[0, 12]. -/
def code_8199 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8200: ((6,2,2)), m=14, a=[1, 1, 3, 7, 9, 9], S=[0, 4]. -/
def code_8200 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8201: ((6,2,2)), m=14, a=[1, 1, 3, 7, 9, 9], S=[0, 12]. -/
def code_8201 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8202: ((6,2,2)), m=14, a=[1, 1, 3, 7, 9, 10], S=[0, 12]. -/
def code_8202 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8203: ((6,2,2)), m=14, a=[1, 1, 3, 7, 9, 11], S=[0, 6]. -/
def code_8203 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8204: ((6,2,2)), m=14, a=[1, 1, 3, 7, 9, 11], S=[0, 12]. -/
def code_8204 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8205: ((6,2,2)), m=14, a=[1, 1, 3, 7, 9, 12], S=[0, 8]. -/
def code_8205 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8206: ((6,2,2)), m=14, a=[1, 1, 3, 7, 9, 12], S=[0, 10]. -/
def code_8206 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8207: ((6,2,2)), m=14, a=[1, 1, 3, 8, 8, 9], S=[0, 12]. -/
def code_8207 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8208: ((6,2,2)), m=14, a=[1, 1, 3, 8, 8, 10], S=[0, 5]. -/
def code_8208 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8209: ((6,2,2)), m=14, a=[1, 1, 3, 8, 8, 10], S=[0, 12]. -/
def code_8209 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8210: ((6,2,2)), m=14, a=[1, 1, 3, 8, 8, 11], S=[0, 5]. -/
def code_8210 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, true, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8211: ((6,2,2)), m=14, a=[1, 1, 3, 8, 9, 10], S=[0, 12]. -/
def code_8211 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8212: ((6,2,2)), m=14, a=[1, 1, 3, 8, 9, 11], S=[0, 12]. -/
def code_8212 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8213: ((6,2,2)), m=14, a=[1, 1, 3, 9, 9, 10], S=[0, 12]. -/
def code_8213 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (3 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8214: ((6,2,2)), m=14, a=[1, 1, 4, 4, 4, 4], S=[0, 2]. -/
def code_8214 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8215: ((6,2,2)), m=14, a=[1, 1, 4, 4, 4, 6], S=[0, 12]. -/
def code_8215 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8216: ((6,2,2)), m=14, a=[1, 1, 4, 4, 4, 8], S=[0, 2]. -/
def code_8216 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8217: ((6,2,2)), m=14, a=[1, 1, 4, 4, 4, 12], S=[0, 6]. -/
def code_8217 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![true, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8218: ((6,2,2)), m=14, a=[1, 1, 4, 4, 5, 7], S=[0, 6]. -/
def code_8218 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8219: ((6,2,2)), m=14, a=[1, 1, 4, 4, 5, 12], S=[0, 6]. -/
def code_8219 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8220: ((6,2,2)), m=14, a=[1, 1, 4, 4, 6, 6], S=[0, 2]. -/
def code_8220 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8221: ((6,2,2)), m=14, a=[1, 1, 4, 4, 6, 6], S=[0, 12]. -/
def code_8221 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8222: ((6,2,2)), m=14, a=[1, 1, 4, 4, 6, 8], S=[0, 2]. -/
def code_8222 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8223: ((6,2,2)), m=14, a=[1, 1, 4, 4, 6, 8], S=[0, 12]. -/
def code_8223 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8224: ((6,2,2)), m=14, a=[1, 1, 4, 4, 7, 12], S=[0, 6]. -/
def code_8224 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8225: ((6,2,2)), m=14, a=[1, 1, 4, 4, 8, 8], S=[0, 2]. -/
def code_8225 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8226: ((6,2,2)), m=14, a=[1, 1, 4, 5, 5, 7], S=[0, 11]. -/
def code_8226 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8227: ((6,2,2)), m=14, a=[1, 1, 4, 5, 5, 7], S=[0, 12]. -/
def code_8227 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8228: ((6,2,2)), m=14, a=[1, 1, 4, 5, 5, 8], S=[0, 12]. -/
def code_8228 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8229: ((6,2,2)), m=14, a=[1, 1, 4, 5, 7, 9], S=[0, 2]. -/
def code_8229 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8230: ((6,2,2)), m=14, a=[1, 1, 4, 5, 7, 9], S=[0, 11]. -/
def code_8230 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8231: ((6,2,2)), m=14, a=[1, 1, 4, 5, 7, 12], S=[0, 6]. -/
def code_8231 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8232: ((6,2,2)), m=14, a=[1, 1, 4, 5, 7, 12], S=[0, 11]. -/
def code_8232 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8233: ((6,2,2)), m=14, a=[1, 1, 4, 5, 9, 12], S=[0, 11]. -/
def code_8233 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8234: ((6,2,2)), m=14, a=[1, 1, 4, 6, 6, 8], S=[0, 2]. -/
def code_8234 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, true, false], ![true, true, false, false, false, false], ![true, true, false, false, true, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8235: ((6,2,2)), m=14, a=[1, 1, 4, 6, 6, 9], S=[0, 2]. -/
def code_8235 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8236: ((6,2,2)), m=14, a=[1, 1, 4, 6, 6, 9], S=[0, 11]. -/
def code_8236 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8237: ((6,2,2)), m=14, a=[1, 1, 4, 6, 6, 10], S=[0, 2]. -/
def code_8237 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8238: ((6,2,2)), m=14, a=[1, 1, 4, 6, 6, 10], S=[0, 12]. -/
def code_8238 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8239: ((6,2,2)), m=14, a=[1, 1, 4, 6, 6, 11], S=[0, 12]. -/
def code_8239 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8240: ((6,2,2)), m=14, a=[1, 1, 4, 6, 6, 12], S=[0, 5]. -/
def code_8240 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8241: ((6,2,2)), m=14, a=[1, 1, 4, 6, 6, 12], S=[0, 11]. -/
def code_8241 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8242: ((6,2,2)), m=14, a=[1, 1, 4, 6, 8, 10], S=[0, 12]. -/
def code_8242 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8243: ((6,2,2)), m=14, a=[1, 1, 4, 6, 9, 12], S=[0, 11]. -/
def code_8243 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8244: ((6,2,2)), m=14, a=[1, 1, 4, 6, 10, 10], S=[0, 12]. -/
def code_8244 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8245: ((6,2,2)), m=14, a=[1, 1, 4, 6, 11, 11], S=[0, 12]. -/
def code_8245 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8246: ((6,2,2)), m=14, a=[1, 1, 4, 7, 9, 10], S=[0, 6]. -/
def code_8246 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, false, true, false, true, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8247: ((6,2,2)), m=14, a=[1, 1, 4, 7, 9, 12], S=[0, 11]. -/
def code_8247 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}, {![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), ((-4 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8248: ((6,2,2)), m=14, a=[1, 1, 4, 8, 8, 10], S=[0, 12]. -/
def code_8248 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8249: ((6,2,2)), m=14, a=[1, 1, 4, 8, 8, 12], S=[0, 3]. -/
def code_8249 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8250: ((6,2,2)), m=14, a=[1, 1, 4, 8, 9, 9], S=[0, 2]. -/
def code_8250 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8251: ((6,2,2)), m=14, a=[1, 1, 4, 8, 10, 10], S=[0, 12]. -/
def code_8251 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8252: ((6,2,2)), m=14, a=[1, 1, 4, 8, 12, 12], S=[0, 5]. -/
def code_8252 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8253: ((6,2,2)), m=14, a=[1, 1, 5, 5, 5, 11], S=[0, 2]. -/
def code_8253 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8254: ((6,2,2)), m=14, a=[1, 1, 5, 5, 5, 12], S=[0, 3]. -/
def code_8254 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8255: ((6,2,2)), m=14, a=[1, 1, 5, 5, 6, 10], S=[0, 2]. -/
def code_8255 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8256: ((6,2,2)), m=14, a=[1, 1, 5, 5, 6, 12], S=[0, 4]. -/
def code_8256 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8257: ((6,2,2)), m=14, a=[1, 1, 5, 5, 7, 10], S=[0, 3]. -/
def code_8257 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8258: ((6,2,2)), m=14, a=[1, 1, 5, 5, 7, 10], S=[0, 12]. -/
def code_8258 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8259: ((6,2,2)), m=14, a=[1, 1, 5, 5, 7, 11], S=[0, 4]. -/
def code_8259 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8260: ((6,2,2)), m=14, a=[1, 1, 5, 5, 7, 11], S=[0, 12]. -/
def code_8260 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8261: ((6,2,2)), m=14, a=[1, 1, 5, 5, 10, 11], S=[0, 12]. -/
def code_8261 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8262: ((6,2,2)), m=14, a=[1, 1, 5, 6, 6, 10], S=[0, 3]. -/
def code_8262 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8263: ((6,2,2)), m=14, a=[1, 1, 5, 6, 6, 10], S=[0, 12]. -/
def code_8263 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8264: ((6,2,2)), m=14, a=[1, 1, 5, 6, 6, 11], S=[0, 12]. -/
def code_8264 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, false], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8265: ((6,2,2)), m=14, a=[1, 1, 5, 6, 10, 11], S=[0, 12]. -/
def code_8265 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8266: ((6,2,2)), m=14, a=[1, 1, 5, 7, 8, 11], S=[0, 2]. -/
def code_8266 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8267: ((6,2,2)), m=14, a=[1, 1, 5, 7, 8, 12], S=[0, 3]. -/
def code_8267 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8268: ((6,2,2)), m=14, a=[1, 1, 5, 7, 8, 12], S=[0, 10]. -/
def code_8268 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8269: ((6,2,2)), m=14, a=[1, 1, 5, 7, 9, 10], S=[0, 2]. -/
def code_8269 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8270: ((6,2,2)), m=14, a=[1, 1, 5, 7, 9, 10], S=[0, 3]. -/
def code_8270 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![true, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8271: ((6,2,2)), m=14, a=[1, 1, 5, 7, 9, 11], S=[0, 2]. -/
def code_8271 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8272: ((6,2,2)), m=14, a=[1, 1, 5, 7, 9, 11], S=[0, 4]. -/
def code_8272 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8273: ((6,2,2)), m=14, a=[1, 1, 5, 7, 9, 12], S=[0, 3]. -/
def code_8273 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8274: ((6,2,2)), m=14, a=[1, 1, 5, 7, 9, 12], S=[0, 4]. -/
def code_8274 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8275: ((6,2,2)), m=14, a=[1, 1, 5, 7, 10, 10], S=[0, 8]. -/
def code_8275 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8276: ((6,2,2)), m=14, a=[1, 1, 5, 7, 10, 11], S=[0, 2]. -/
def code_8276 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8277: ((6,2,2)), m=14, a=[1, 1, 5, 7, 10, 11], S=[0, 12]. -/
def code_8277 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8278: ((6,2,2)), m=14, a=[1, 1, 5, 7, 10, 12], S=[0, 3]. -/
def code_8278 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, true, true, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8279: ((6,2,2)), m=14, a=[1, 1, 5, 7, 11, 11], S=[0, 2]. -/
def code_8279 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8280: ((6,2,2)), m=14, a=[1, 1, 5, 7, 11, 11], S=[0, 6]. -/
def code_8280 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8281: ((6,2,2)), m=14, a=[1, 1, 5, 7, 11, 12], S=[0, 4]. -/
def code_8281 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8282: ((6,2,2)), m=14, a=[1, 1, 5, 7, 11, 12], S=[0, 6]. -/
def code_8282 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8283: ((6,2,2)), m=14, a=[1, 1, 5, 8, 8, 10], S=[0, 2]. -/
def code_8283 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8284: ((6,2,2)), m=14, a=[1, 1, 5, 8, 8, 10], S=[0, 3]. -/
def code_8284 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8285: ((6,2,2)), m=14, a=[1, 1, 5, 8, 8, 12], S=[0, 3]. -/
def code_8285 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, true, true, false], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((6 : ℚ) / 7), (0 : ℚ), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8286: ((6,2,2)), m=14, a=[1, 1, 5, 8, 11, 11], S=[0, 2]. -/
def code_8286 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8287: ((6,2,2)), m=14, a=[1, 1, 5, 9, 10, 12], S=[0, 3]. -/
def code_8287 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8288: ((6,2,2)), m=14, a=[1, 1, 5, 9, 11, 12], S=[0, 4]. -/
def code_8288 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7)]

/-- Catalogue code #8289: ((6,2,2)), m=14, a=[1, 1, 5, 10, 11, 12], S=[0, 6]. -/
def code_8289 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8290: ((6,2,2)), m=14, a=[1, 1, 5, 11, 11, 12], S=[0, 6]. -/
def code_8290 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (5 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8291: ((6,2,2)), m=14, a=[1, 1, 6, 6, 6, 10], S=[0, 12]. -/
def code_8291 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8292: ((6,2,2)), m=14, a=[1, 1, 6, 6, 8, 12], S=[0, 10]. -/
def code_8292 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8293: ((6,2,2)), m=14, a=[1, 1, 6, 6, 9, 12], S=[0, 11]. -/
def code_8293 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-6 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8294: ((6,2,2)), m=14, a=[1, 1, 6, 6, 9, 13], S=[0, 11]. -/
def code_8294 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8295: ((6,2,2)), m=14, a=[1, 1, 6, 6, 10, 10], S=[0, 2]. -/
def code_8295 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8296: ((6,2,2)), m=14, a=[1, 1, 6, 6, 10, 10], S=[0, 12]. -/
def code_8296 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8297: ((6,2,2)), m=14, a=[1, 1, 6, 6, 10, 11], S=[0, 12]. -/
def code_8297 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8298: ((6,2,2)), m=14, a=[1, 1, 6, 6, 10, 12], S=[0, 11]. -/
def code_8298 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, false], ![true, false, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8299: ((6,2,2)), m=14, a=[1, 1, 6, 6, 11, 11], S=[0, 9]. -/
def code_8299 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8300: ((6,2,2)), m=14, a=[1, 1, 6, 6, 11, 11], S=[0, 12]. -/
def code_8300 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8301: ((6,2,2)), m=14, a=[1, 1, 6, 7, 9, 12], S=[0, 4]. -/
def code_8301 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8302: ((6,2,2)), m=14, a=[1, 1, 6, 7, 9, 12], S=[0, 11]. -/
def code_8302 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, false, false, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8303: ((6,2,2)), m=14, a=[1, 1, 6, 8, 8, 10], S=[0, 2]. -/
def code_8303 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8304: ((6,2,2)), m=14, a=[1, 1, 6, 8, 8, 12], S=[0, 4]. -/
def code_8304 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![true, true, false, false, false, true], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8305: ((6,2,2)), m=14, a=[1, 1, 6, 8, 10, 10], S=[0, 2]. -/
def code_8305 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, false, true], ![false, false, true, false, true, false], ![true, true, false, false, false, false], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8306: ((6,2,2)), m=14, a=[1, 1, 6, 8, 10, 10], S=[0, 12]. -/
def code_8306 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, true, false, true, true]}, {![false, false, true, false, true, true], ![true, true, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8307: ((6,2,2)), m=14, a=[1, 1, 7, 8, 9, 11], S=[0, 12]. -/
def code_8307 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, false, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8308: ((6,2,2)), m=14, a=[1, 1, 7, 8, 11, 11], S=[0, 2]. -/
def code_8308 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8309: ((6,2,2)), m=14, a=[1, 1, 7, 8, 11, 11], S=[0, 9]. -/
def code_8309 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8310: ((6,2,2)), m=14, a=[1, 1, 7, 8, 11, 12], S=[0, 9]. -/
def code_8310 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8311: ((6,2,2)), m=14, a=[1, 1, 7, 9, 9, 10], S=[0, 12]. -/
def code_8311 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8312: ((6,2,2)), m=14, a=[1, 1, 7, 9, 10, 10], S=[0, 8]. -/
def code_8312 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8313: ((6,2,2)), m=14, a=[1, 1, 7, 9, 10, 11], S=[0, 2]. -/
def code_8313 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8314: ((6,2,2)), m=14, a=[1, 1, 7, 9, 10, 12], S=[0, 3]. -/
def code_8314 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, true, true, false, false], ![true, false, true, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8315: ((6,2,2)), m=14, a=[1, 1, 7, 9, 10, 12], S=[0, 8]. -/
def code_8315 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8316: ((6,2,2)), m=14, a=[1, 1, 7, 9, 11, 12], S=[0, 4]. -/
def code_8316 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8317: ((6,2,2)), m=14, a=[1, 1, 7, 10, 10, 12], S=[0, 8]. -/
def code_8317 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8318: ((6,2,2)), m=14, a=[1, 1, 7, 10, 11, 12], S=[0, 5]. -/
def code_8318 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8319: ((6,2,2)), m=14, a=[1, 1, 7, 11, 11, 12], S=[0, 6]. -/
def code_8319 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, true, true, true], ![true, false, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8320: ((6,2,2)), m=14, a=[1, 1, 7, 11, 11, 12], S=[0, 9]. -/
def code_8320 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8321: ((6,2,2)), m=14, a=[1, 1, 8, 8, 8, 10], S=[0, 12]. -/
def code_8321 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8322: ((6,2,2)), m=14, a=[1, 1, 8, 8, 9, 10], S=[0, 11]. -/
def code_8322 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![false, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![false, true, false, false, false, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8323: ((6,2,2)), m=14, a=[1, 1, 8, 8, 10, 10], S=[0, 12]. -/
def code_8323 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8324: ((6,2,2)), m=14, a=[1, 1, 8, 8, 10, 11], S=[0, 2]. -/
def code_8324 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8325: ((6,2,2)), m=14, a=[1, 1, 8, 8, 10, 11], S=[0, 9]. -/
def code_8325 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8326: ((6,2,2)), m=14, a=[1, 1, 8, 8, 10, 12], S=[0, 3]. -/
def code_8326 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((-4 : ℚ) / 7), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8327: ((6,2,2)), m=14, a=[1, 1, 8, 8, 10, 12], S=[0, 9]. -/
def code_8327 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8328: ((6,2,2)), m=14, a=[1, 1, 8, 8, 11, 11], S=[0, 2]. -/
def code_8328 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (2 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, false, true, true, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8329: ((6,2,2)), m=14, a=[1, 1, 8, 8, 11, 12], S=[0, 9]. -/
def code_8329 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, true, true, false], ![true, false, true, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8330: ((6,2,2)), m=14, a=[1, 1, 8, 8, 12, 12], S=[0, 4]. -/
def code_8330 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, true, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8331: ((6,2,2)), m=14, a=[1, 1, 8, 9, 9, 10], S=[0, 12]. -/
def code_8331 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (12 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8332: ((6,2,2)), m=14, a=[1, 1, 8, 9, 9, 12], S=[0, 10]. -/
def code_8332 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8333: ((6,2,2)), m=14, a=[1, 1, 8, 9, 12, 12], S=[0, 10]. -/
def code_8333 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8334: ((6,2,2)), m=14, a=[1, 1, 8, 10, 11, 12], S=[0, 9]. -/
def code_8334 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8335: ((6,2,2)), m=14, a=[1, 1, 8, 11, 11, 12], S=[0, 9]. -/
def code_8335 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14), (11 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, false], ![true, false, false, true, true, false], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8336: ((6,2,2)), m=14, a=[1, 1, 9, 9, 12, 12], S=[0, 10]. -/
def code_8336 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8337: ((6,2,2)), m=14, a=[1, 1, 9, 9, 12, 12], S=[0, 11]. -/
def code_8337 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, false, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, true], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8338: ((6,2,2)), m=14, a=[1, 1, 9, 10, 10, 12], S=[0, 8]. -/
def code_8338 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8339: ((6,2,2)), m=14, a=[1, 1, 10, 10, 10, 12], S=[0, 8]. -/
def code_8339 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (1 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8340: ((6,2,2)), m=14, a=[1, 2, 2, 2, 2, 5], S=[0, 6]. -/
def code_8340 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8341: ((6,2,2)), m=14, a=[1, 2, 2, 2, 3, 4], S=[0, 6]. -/
def code_8341 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8342: ((6,2,2)), m=14, a=[1, 2, 2, 2, 3, 6], S=[0, 10]. -/
def code_8342 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8343: ((6,2,2)), m=14, a=[1, 2, 2, 2, 3, 8], S=[0, 10]. -/
def code_8343 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, true, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8344: ((6,2,2)), m=14, a=[1, 2, 2, 2, 4, 4], S=[0, 6]. -/
def code_8344 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8345: ((6,2,2)), m=14, a=[1, 2, 2, 2, 4, 4], S=[0, 8]. -/
def code_8345 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![false, true, false, true, true, false], ![false, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8346: ((6,2,2)), m=14, a=[1, 2, 2, 2, 4, 5], S=[0, 6]. -/
def code_8346 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, false, false, true, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8347: ((6,2,2)), m=14, a=[1, 2, 2, 2, 4, 7], S=[0, 8]. -/
def code_8347 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8348: ((6,2,2)), m=14, a=[1, 2, 2, 2, 5, 8], S=[0, 10]. -/
def code_8348 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, false, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8349: ((6,2,2)), m=14, a=[1, 2, 2, 2, 6, 7], S=[0, 10]. -/
def code_8349 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8350: ((6,2,2)), m=14, a=[1, 2, 2, 2, 7, 8], S=[0, 4]. -/
def code_8350 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8351: ((6,2,2)), m=14, a=[1, 2, 2, 2, 7, 10], S=[0, 6]. -/
def code_8351 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8352: ((6,2,2)), m=14, a=[1, 2, 2, 2, 7, 12], S=[0, 6]. -/
def code_8352 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8353: ((6,2,2)), m=14, a=[1, 2, 2, 2, 8, 8], S=[0, 4]. -/
def code_8353 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![false, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8354: ((6,2,2)), m=14, a=[1, 2, 2, 2, 8, 9], S=[0, 4]. -/
def code_8354 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8355: ((6,2,2)), m=14, a=[1, 2, 2, 2, 9, 10], S=[0, 6]. -/
def code_8355 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8356: ((6,2,2)), m=14, a=[1, 2, 2, 3, 3, 7], S=[0, 10]. -/
def code_8356 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8357: ((6,2,2)), m=14, a=[1, 2, 2, 3, 4, 4], S=[0, 8]. -/
def code_8357 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8358: ((6,2,2)), m=14, a=[1, 2, 2, 3, 4, 6], S=[0, 9]. -/
def code_8358 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, false, true], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8359: ((6,2,2)), m=14, a=[1, 2, 2, 3, 5, 5], S=[0, 10]. -/
def code_8359 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8360: ((6,2,2)), m=14, a=[1, 2, 2, 3, 5, 6], S=[0, 10]. -/
def code_8360 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, true, true], ![true, true, true, true, false, true]}, {![false, true, false, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8361: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 6], S=[0, 4]. -/
def code_8361 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8362: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 6], S=[0, 10]. -/
def code_8362 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8363: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 7], S=[0, 4]. -/
def code_8363 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8364: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 7], S=[0, 10]. -/
def code_8364 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8365: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 8], S=[0, 4]. -/
def code_8365 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8366: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 8], S=[0, 10]. -/
def code_8366 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8367: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 9], S=[0, 4]. -/
def code_8367 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8368: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 10], S=[0, 5]. -/
def code_8368 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, true, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8369: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 11], S=[0, 4]. -/
def code_8369 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8370: ((6,2,2)), m=14, a=[1, 2, 2, 3, 6, 12], S=[0, 4]. -/
def code_8370 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8371: ((6,2,2)), m=14, a=[1, 2, 2, 3, 7, 8], S=[0, 4]. -/
def code_8371 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8372: ((6,2,2)), m=14, a=[1, 2, 2, 3, 7, 8], S=[0, 5]. -/
def code_8372 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8373: ((6,2,2)), m=14, a=[1, 2, 2, 3, 7, 9], S=[0, 4]. -/
def code_8373 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8374: ((6,2,2)), m=14, a=[1, 2, 2, 3, 7, 10], S=[0, 5]. -/
def code_8374 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8375: ((6,2,2)), m=14, a=[1, 2, 2, 3, 7, 11], S=[0, 4]. -/
def code_8375 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8376: ((6,2,2)), m=14, a=[1, 2, 2, 3, 8, 8], S=[0, 4]. -/
def code_8376 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8377: ((6,2,2)), m=14, a=[1, 2, 2, 3, 8, 9], S=[0, 4]. -/
def code_8377 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8378: ((6,2,2)), m=14, a=[1, 2, 2, 3, 8, 10], S=[0, 5]. -/
def code_8378 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8379: ((6,2,2)), m=14, a=[1, 2, 2, 3, 10, 10], S=[0, 6]. -/
def code_8379 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8380: ((6,2,2)), m=14, a=[1, 2, 2, 3, 10, 12], S=[0, 8]. -/
def code_8380 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8381: ((6,2,2)), m=14, a=[1, 2, 2, 4, 4, 5], S=[0, 6]. -/
def code_8381 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, true, false, true, false], ![false, true, false, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8382: ((6,2,2)), m=14, a=[1, 2, 2, 4, 4, 5], S=[0, 8]. -/
def code_8382 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, true, true], ![true, true, true, true, false, true]}, {![false, false, false, true, true, false], ![false, true, true, true, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8383: ((6,2,2)), m=14, a=[1, 2, 2, 4, 5, 6], S=[0, 11]. -/
def code_8383 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #8384: ((6,2,2)), m=14, a=[1, 2, 2, 4, 5, 9], S=[0, 3]. -/
def code_8384 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, true], ![true, false, true, false, true, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8385: ((6,2,2)), m=14, a=[1, 2, 2, 4, 5, 10], S=[0, 6]. -/
def code_8385 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8386: ((6,2,2)), m=14, a=[1, 2, 2, 4, 5, 10], S=[0, 8]. -/
def code_8386 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8387: ((6,2,2)), m=14, a=[1, 2, 2, 4, 5, 12], S=[0, 8]. -/
def code_8387 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8388: ((6,2,2)), m=14, a=[1, 2, 2, 4, 6, 7], S=[0, 3]. -/
def code_8388 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #8389: ((6,2,2)), m=14, a=[1, 2, 2, 4, 6, 7], S=[0, 5]. -/
def code_8389 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, false, true, false, true]}, {![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #8390: ((6,2,2)), m=14, a=[1, 2, 2, 4, 6, 7], S=[0, 11]. -/
def code_8390 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ)]

/-- Catalogue code #8391: ((6,2,2)), m=14, a=[1, 2, 2, 4, 6, 9], S=[0, 3]. -/
def code_8391 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #8392: ((6,2,2)), m=14, a=[1, 2, 2, 4, 6, 11], S=[0, 5]. -/
def code_8392 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-4 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #8393: ((6,2,2)), m=14, a=[1, 2, 2, 4, 6, 13], S=[0, 5]. -/
def code_8393 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #8394: ((6,2,2)), m=14, a=[1, 2, 2, 4, 7, 9], S=[0, 3]. -/
def code_8394 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #8395: ((6,2,2)), m=14, a=[1, 2, 2, 4, 7, 10], S=[0, 6]. -/
def code_8395 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, true, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8396: ((6,2,2)), m=14, a=[1, 2, 2, 4, 7, 11], S=[0, 5]. -/
def code_8396 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, true, false, true], ![true, false, false, false, true, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #8397: ((6,2,2)), m=14, a=[1, 2, 2, 4, 8, 9], S=[0, 3]. -/
def code_8397 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, false, true, false, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #8398: ((6,2,2)), m=14, a=[1, 2, 2, 4, 8, 11], S=[0, 5]. -/
def code_8398 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), (0 : ℚ)]

/-- Catalogue code #8399: ((6,2,2)), m=14, a=[1, 2, 2, 4, 9, 10], S=[0, 6]. -/
def code_8399 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![false, true, true, false, false, true], ![true, false, false, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8400: ((6,2,2)), m=14, a=[1, 2, 2, 4, 9, 12], S=[0, 8]. -/
def code_8400 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8401: ((6,2,2)), m=14, a=[1, 2, 2, 4, 10, 11], S=[0, 8]. -/
def code_8401 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8402: ((6,2,2)), m=14, a=[1, 2, 2, 4, 10, 12], S=[0, 8]. -/
def code_8402 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (4 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![false, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8403: ((6,2,2)), m=14, a=[1, 2, 2, 5, 5, 6], S=[0, 10]. -/
def code_8403 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8404: ((6,2,2)), m=14, a=[1, 2, 2, 5, 5, 6], S=[0, 11]. -/
def code_8404 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}, {![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8405: ((6,2,2)), m=14, a=[1, 2, 2, 5, 5, 8], S=[0, 10]. -/
def code_8405 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, true, false, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8406: ((6,2,2)), m=14, a=[1, 2, 2, 5, 5, 9], S=[0, 11]. -/
def code_8406 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, false, false, true, false, true], ![false, true, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8407: ((6,2,2)), m=14, a=[1, 2, 2, 5, 6, 6], S=[0, 4]. -/
def code_8407 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}, {![false, true, true, false, false, false], ![true, false, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8408: ((6,2,2)), m=14, a=[1, 2, 2, 5, 6, 9], S=[0, 10]. -/
def code_8408 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8409: ((6,2,2)), m=14, a=[1, 2, 2, 5, 6, 12], S=[0, 4]. -/
def code_8409 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8410: ((6,2,2)), m=14, a=[1, 2, 2, 5, 6, 13], S=[0, 10]. -/
def code_8410 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8411: ((6,2,2)), m=14, a=[1, 2, 2, 5, 8, 9], S=[0, 3]. -/
def code_8411 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, true, false, true], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8412: ((6,2,2)), m=14, a=[1, 2, 2, 5, 8, 9], S=[0, 10]. -/
def code_8412 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, false, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8413: ((6,2,2)), m=14, a=[1, 2, 2, 5, 8, 11], S=[0, 10]. -/
def code_8413 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8414: ((6,2,2)), m=14, a=[1, 2, 2, 5, 9, 11], S=[0, 10]. -/
def code_8414 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8415: ((6,2,2)), m=14, a=[1, 2, 2, 5, 9, 13], S=[0, 10]. -/
def code_8415 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8416: ((6,2,2)), m=14, a=[1, 2, 2, 5, 10, 10], S=[0, 8]. -/
def code_8416 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, false, false, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8417: ((6,2,2)), m=14, a=[1, 2, 2, 5, 10, 12], S=[0, 8]. -/
def code_8417 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8418: ((6,2,2)), m=14, a=[1, 2, 2, 6, 6, 6], S=[0, 4]. -/
def code_8418 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8419: ((6,2,2)), m=14, a=[1, 2, 2, 6, 6, 9], S=[0, 10]. -/
def code_8419 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8420: ((6,2,2)), m=14, a=[1, 2, 2, 6, 6, 11], S=[0, 4]. -/
def code_8420 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8421: ((6,2,2)), m=14, a=[1, 2, 2, 6, 7, 9], S=[0, 3]. -/
def code_8421 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8422: ((6,2,2)), m=14, a=[1, 2, 2, 6, 7, 9], S=[0, 10]. -/
def code_8422 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8423: ((6,2,2)), m=14, a=[1, 2, 2, 6, 7, 10], S=[0, 3]. -/
def code_8423 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, false], ![true, true, true, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((1 : ℚ) / 7)]

/-- Catalogue code #8424: ((6,2,2)), m=14, a=[1, 2, 2, 6, 7, 11], S=[0, 4]. -/
def code_8424 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8425: ((6,2,2)), m=14, a=[1, 2, 2, 6, 7, 11], S=[0, 5]. -/
def code_8425 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true], ![true, true, false, false, false, true]}, {![false, true, false, true, false, true], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8426: ((6,2,2)), m=14, a=[1, 2, 2, 6, 7, 11], S=[0, 10]. -/
def code_8426 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8427: ((6,2,2)), m=14, a=[1, 2, 2, 6, 8, 9], S=[0, 4]. -/
def code_8427 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8428: ((6,2,2)), m=14, a=[1, 2, 2, 6, 9, 9], S=[0, 4]. -/
def code_8428 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8429: ((6,2,2)), m=14, a=[1, 2, 2, 6, 9, 9], S=[0, 11]. -/
def code_8429 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, false, true], ![false, true, false, false, true, false], ![true, false, false, true, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8430: ((6,2,2)), m=14, a=[1, 2, 2, 6, 9, 10], S=[0, 11]. -/
def code_8430 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #8431: ((6,2,2)), m=14, a=[1, 2, 2, 6, 9, 11], S=[0, 10]. -/
def code_8431 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8432: ((6,2,2)), m=14, a=[1, 2, 2, 6, 9, 12], S=[0, 10]. -/
def code_8432 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, false, true, false, true, true], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8433: ((6,2,2)), m=14, a=[1, 2, 2, 6, 9, 13], S=[0, 10]. -/
def code_8433 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8434: ((6,2,2)), m=14, a=[1, 2, 2, 7, 8, 8], S=[0, 4]. -/
def code_8434 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, true, true, false, true], ![true, true, false, true, false, true], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8435: ((6,2,2)), m=14, a=[1, 2, 2, 7, 8, 9], S=[0, 11]. -/
def code_8435 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, true, true, false, false, true]}, {![false, false, true, false, false, true], ![false, true, false, false, false, true], ![false, true, true, true, false, false], ![true, false, false, true, true, true], ![true, false, true, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8436: ((6,2,2)), m=14, a=[1, 2, 2, 7, 8, 10], S=[0, 5]. -/
def code_8436 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, true, false, true, false, true], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-2 : ℚ) / 7), ((3 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-3 : ℚ) / 7)]

/-- Catalogue code #8437: ((6,2,2)), m=14, a=[1, 2, 2, 7, 8, 10], S=[0, 11]. -/
def code_8437 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((-1 : ℚ) / 7)]

/-- Catalogue code #8438: ((6,2,2)), m=14, a=[1, 2, 2, 7, 9, 10], S=[0, 11]. -/
def code_8438 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]

/-- Catalogue code #8439: ((6,2,2)), m=14, a=[1, 2, 2, 7, 9, 11], S=[0, 10]. -/
def code_8439 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8440: ((6,2,2)), m=14, a=[1, 2, 2, 7, 10, 10], S=[0, 6]. -/
def code_8440 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, false], ![true, false, false, true, true, true]}, {![false, false, false, false, true, true], ![true, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8441: ((6,2,2)), m=14, a=[1, 2, 2, 8, 8, 8], S=[0, 4]. -/
def code_8441 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, false, true, true, true, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![false, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8442: ((6,2,2)), m=14, a=[1, 2, 2, 8, 8, 8], S=[0, 10]. -/
def code_8442 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true]}, {![false, false, false, true, true, true], ![false, false, true, false, true, false], ![false, false, true, true, false, false], ![false, true, false, false, false, true], ![false, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![(1 : ℚ), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8443: ((6,2,2)), m=14, a=[1, 2, 2, 8, 8, 9], S=[0, 4]. -/
def code_8443 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, true, true, false, false, false], ![true, false, false, false, true, true], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8444: ((6,2,2)), m=14, a=[1, 2, 2, 8, 9, 9], S=[0, 4]. -/
def code_8444 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, true], ![true, true, true, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8445: ((6,2,2)), m=14, a=[1, 2, 2, 8, 9, 10], S=[0, 11]. -/
def code_8445 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, false, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), (0 : ℚ), ((3 : ℚ) / 7)]

/-- Catalogue code #8446: ((6,2,2)), m=14, a=[1, 2, 2, 8, 9, 11], S=[0, 10]. -/
def code_8446 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (8 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8447: ((6,2,2)), m=14, a=[1, 2, 2, 9, 9, 10], S=[0, 11]. -/
def code_8447 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (11 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8448: ((6,2,2)), m=14, a=[1, 2, 2, 9, 9, 13], S=[0, 3]. -/
def code_8448 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (2 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (3 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false], ![true, true, true, true, false, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, true], ![true, false, true, false, false, false], ![true, true, false, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((4 : ℚ) / 7), ((4 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8449: ((6,2,2)), m=14, a=[1, 2, 3, 3, 4, 4], S=[0, 9]. -/
def code_8449 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true], ![true, true, true, false, true, true]}, {![false, true, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, false, true, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8450: ((6,2,2)), m=14, a=[1, 2, 3, 3, 4, 6], S=[0, 9]. -/
def code_8450 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, false, true], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, true, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8451: ((6,2,2)), m=14, a=[1, 2, 3, 3, 5, 6], S=[0, 10]. -/
def code_8451 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![false, true, true, true, false, true], ![true, true, false, false, true, true], ![true, true, true, true, true, false]}, {![false, true, false, true, true, false], ![false, true, true, false, true, false], ![true, false, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8452: ((6,2,2)), m=14, a=[1, 2, 3, 3, 5, 7], S=[0, 6]. -/
def code_8452 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, true, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8453: ((6,2,2)), m=14, a=[1, 2, 3, 3, 5, 8], S=[0, 4]. -/
def code_8453 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, false, true], ![true, false, false, false, true, true], ![true, true, false, true, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8454: ((6,2,2)), m=14, a=[1, 2, 3, 3, 5, 10], S=[0, 6]. -/
def code_8454 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, true, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8455: ((6,2,2)), m=14, a=[1, 2, 3, 3, 5, 13], S=[0, 6]. -/
def code_8455 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, false, false], ![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8456: ((6,2,2)), m=14, a=[1, 2, 3, 3, 6, 7], S=[0, 9]. -/
def code_8456 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, true, false], ![false, true, false, false, false, true], ![true, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #8457: ((6,2,2)), m=14, a=[1, 2, 3, 3, 6, 7], S=[0, 10]. -/
def code_8457 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, false], ![true, false, false, false, true, true], ![true, false, true, true, false, true]}, {![false, false, true, false, false, true], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8458: ((6,2,2)), m=14, a=[1, 2, 3, 3, 7, 8], S=[0, 9]. -/
def code_8458 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, false], ![true, true, false, true, false, true], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), (0 : ℚ), ((4 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8459: ((6,2,2)), m=14, a=[1, 2, 3, 3, 7, 13], S=[0, 6]. -/
def code_8459 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8460: ((6,2,2)), m=14, a=[1, 2, 3, 3, 7, 13], S=[0, 9]. -/
def code_8460 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, false, true, true], ![false, true, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8461: ((6,2,2)), m=14, a=[1, 2, 3, 3, 8, 10], S=[0, 9]. -/
def code_8461 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #8462: ((6,2,2)), m=14, a=[1, 2, 3, 3, 8, 13], S=[0, 9]. -/
def code_8462 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, false, false, false, true], ![true, false, true, true, true, true], ![true, true, false, true, true, false], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![true, false, false, false, true, false], ![true, true, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0)]
  targetZ := ![((-4 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #8463: ((6,2,2)), m=14, a=[1, 2, 3, 3, 10, 10], S=[0, 6]. -/
def code_8463 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (3 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, false, true], ![true, false, false, true, true, false]}, {![false, false, false, false, true, true], ![false, false, true, true, false, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8464: ((6,2,2)), m=14, a=[1, 2, 3, 4, 4, 5], S=[0, 8]. -/
def code_8464 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8465: ((6,2,2)), m=14, a=[1, 2, 3, 4, 4, 6], S=[0, 9]. -/
def code_8465 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, true], ![true, true, true, true, true, false]}, {![false, false, true, false, false, true], ![false, true, true, false, true, false], ![false, true, true, true, false, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 2)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), (0 : ℚ), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8466: ((6,2,2)), m=14, a=[1, 2, 3, 4, 4, 9], S=[0, 6]. -/
def code_8466 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, false]}, {![false, false, true, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8467: ((6,2,2)), m=14, a=[1, 2, 3, 4, 4, 11], S=[0, 5]. -/
def code_8467 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, false, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 2)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((5 : ℚ) / 7)]

/-- Catalogue code #8468: ((6,2,2)), m=14, a=[1, 2, 3, 4, 4, 11], S=[0, 6]. -/
def code_8468 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, true, false, false, true], ![true, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, true, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8469: ((6,2,2)), m=14, a=[1, 2, 3, 4, 4, 12], S=[0, 6]. -/
def code_8469 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (4 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, true, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8470: ((6,2,2)), m=14, a=[1, 2, 3, 4, 5, 13], S=[0, 6]. -/
def code_8470 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (5 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, false, true, false, false], ![true, false, false, false, true, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8471: ((6,2,2)), m=14, a=[1, 2, 3, 4, 6, 8], S=[0, 9]. -/
def code_8471 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![true, false, true, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((-1 : ℚ) / 7), ((-2 : ℚ) / 7)]

/-- Catalogue code #8472: ((6,2,2)), m=14, a=[1, 2, 3, 4, 6, 13], S=[0, 9]. -/
def code_8472 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (6 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, false, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, false, true, false, true, true], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![((2 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8473: ((6,2,2)), m=14, a=[1, 2, 3, 4, 7, 8], S=[0, 5]. -/
def code_8473 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, false, true, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8474: ((6,2,2)), m=14, a=[1, 2, 3, 4, 7, 8], S=[0, 9]. -/
def code_8474 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, false, true, false, true], ![true, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8475: ((6,2,2)), m=14, a=[1, 2, 3, 4, 7, 9], S=[0, 8]. -/
def code_8475 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![false, true, true, false, false, true], ![true, false, false, true, false, true], ![true, true, false, true, true, false]}, {![false, true, false, true, true, true], ![true, false, false, false, true, false], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8476: ((6,2,2)), m=14, a=[1, 2, 3, 4, 7, 10], S=[0, 8]. -/
def code_8476 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, false, true, true, true, false], ![true, false, true, false, false, true], ![true, true, false, true, true, false]}, {![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, false, false, true, true, true], ![true, false, true, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8477: ((6,2,2)), m=14, a=[1, 2, 3, 4, 7, 12], S=[0, 9]. -/
def code_8477 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, false], ![false, true, true, true, true, true], ![true, true, false, true, true, false]}, {![false, false, false, true, true, true], ![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((5 : ℚ) / 7), ((-1 : ℚ) / 7), (0 : ℚ), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8478: ((6,2,2)), m=14, a=[1, 2, 3, 4, 8, 8], S=[0, 5]. -/
def code_8478 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (5 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, false, true], ![true, true, true, false, false, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, false, false, false], ![true, false, false, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((5 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![(0 : ℚ), ((-3 : ℚ) / 7), (0 : ℚ), ((4 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7)]

/-- Catalogue code #8479: ((6,2,2)), m=14, a=[1, 2, 3, 4, 8, 12], S=[0, 9]. -/
def code_8479 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((1 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #8480: ((6,2,2)), m=14, a=[1, 2, 3, 4, 8, 13], S=[0, 9]. -/
def code_8480 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (8 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, true, true, false], ![true, false, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, true], ![false, true, true, true, false, false], ![true, false, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((2 : ℚ) / 7), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #8481: ((6,2,2)), m=14, a=[1, 2, 3, 4, 9, 10], S=[0, 8]. -/
def code_8481 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (8 : ZMod 14)]
  supp := ![{![false, true, true, false, true, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false], ![true, false, true, false, false, true]}, {![false, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, false, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8482: ((6,2,2)), m=14, a=[1, 2, 3, 4, 9, 11], S=[0, 6]. -/
def code_8482 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (4 : ZMod 14), (9 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, false, true], ![false, true, true, false, true, false], ![true, false, false, true, true, false], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8483: ((6,2,2)), m=14, a=[1, 2, 3, 5, 5, 6], S=[0, 10]. -/
def code_8483 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (6 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, false, true, true], ![false, false, true, true, false, true], ![true, false, true, true, true, false], ![true, true, false, false, true, true]}, {![false, false, false, true, true, false], ![false, true, true, false, true, false], ![true, false, true, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8484: ((6,2,2)), m=14, a=[1, 2, 3, 5, 5, 7], S=[0, 10]. -/
def code_8484 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, true, true], ![false, true, false, true, false, true], ![true, false, true, true, true, false]}, {![false, false, false, true, true, false], ![false, false, true, false, false, true], ![false, true, true, true, false, false], ![true, true, false, false, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8485: ((6,2,2)), m=14, a=[1, 2, 3, 5, 7, 10], S=[0, 6]. -/
def code_8485 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, false, true, true], ![false, true, true, true, false, true], ![true, false, false, true, false, false], ![true, true, false, false, true, true], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8486: ((6,2,2)), m=14, a=[1, 2, 3, 5, 7, 12], S=[0, 10]. -/
def code_8486 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![false, true, true, true, false, false], ![true, true, false, false, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8487: ((6,2,2)), m=14, a=[1, 2, 3, 5, 7, 13], S=[0, 6]. -/
def code_8487 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (7 : ZMod 14), (13 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, false, false, false, false, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, false, true, false, true], ![true, false, false, true, false, false], ![true, true, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((3 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8488: ((6,2,2)), m=14, a=[1, 2, 3, 5, 8, 12], S=[0, 10]. -/
def code_8488 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![false, true, false, false, false, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![false, true, true, true, false, false], ![true, false, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8489: ((6,2,2)), m=14, a=[1, 2, 3, 5, 10, 10], S=[0, 6]. -/
def code_8489 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (5 : ZMod 14), (10 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (6 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, true, true, true, true], ![true, true, false, true, true, true]}, {![false, false, false, false, true, true], ![false, true, true, true, false, true], ![false, true, true, true, true, false], ![true, false, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((3 : ℚ) / 7), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8490: ((6,2,2)), m=14, a=[1, 2, 3, 6, 6, 8], S=[0, 10]. -/
def code_8490 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, false, true, true], ![false, true, false, true, true, false], ![true, true, true, false, false, true]}, {![false, true, false, false, false, true], ![true, false, true, false, true, false], ![true, false, true, true, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, false, true] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((-3 : ℚ) / 7)]

/-- Catalogue code #8491: ((6,2,2)), m=14, a=[1, 2, 3, 6, 6, 12], S=[0, 4]. -/
def code_8491 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, false, true, false, true], ![true, false, true, false, false, false], ![true, true, true, true, true, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8492: ((6,2,2)), m=14, a=[1, 2, 3, 6, 6, 12], S=[0, 10]. -/
def code_8492 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (6 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, false], ![true, false, true, true, true, true]}, {![false, false, false, true, true, true], ![true, false, true, false, true, false], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((4 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((-3 : ℚ) / 7), ((-3 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8493: ((6,2,2)), m=14, a=[1, 2, 3, 6, 7, 8], S=[0, 9]. -/
def code_8493 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (8 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, false, true], ![true, false, false, true, true, false], ![true, true, true, false, false, true]}, {![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, false, false, false, false, true], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, false, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), ((3 : ℚ) / 7), ((2 : ℚ) / 7), ((4 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8494: ((6,2,2)), m=14, a=[1, 2, 3, 6, 7, 9], S=[0, 4]. -/
def code_8494 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, true, true, true, true, true]}, {![false, false, true, true, false, true], ![false, true, false, false, true, true], ![false, true, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-1 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8495: ((6,2,2)), m=14, a=[1, 2, 3, 6, 7, 10], S=[0, 9]. -/
def code_8495 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, true, true, true], ![true, false, false, true, true, false]}, {![false, false, false, true, true, true], ![false, false, true, true, false, false], ![false, true, false, false, true, false], ![true, true, false, true, false, false], ![true, true, true, false, true, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, true, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, false, true, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, false, true, false] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((4 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-2 : ℚ) / 7), ((-2 : ℚ) / 7), ((1 : ℚ) / 7)]

/-- Catalogue code #8496: ((6,2,2)), m=14, a=[1, 2, 3, 6, 7, 11], S=[0, 4]. -/
def code_8496 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (7 : ZMod 14), (11 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![true, false, true, true, true, true], ![true, true, false, false, false, true]}, {![false, false, false, false, true, true], ![false, true, true, true, true, false], ![true, false, false, true, false, true], ![true, false, true, false, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, false, true, false, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0)]
  targetZ := ![((-1 : ℚ) / 7), ((5 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]

/-- Catalogue code #8497: ((6,2,2)), m=14, a=[1, 2, 3, 6, 8, 10], S=[0, 9]. -/
def code_8497 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (10 : ZMod 14)]
  S := ![(0 : ZMod 14), (9 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, false, false, true, true, false], ![true, false, true, true, true, true], ![true, true, true, false, true, false]}, {![false, false, true, true, false, false], ![false, true, true, false, true, true], ![true, false, false, false, true, false], ![true, true, false, true, false, false]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((5 : ℚ) / 14)
      else       if s = (![false, false, false, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((2 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, true, true, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, true, false, true, true] : BitString 6) then ((3 : ℚ) / 14)
      else       if s = (![true, false, false, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, false] : BitString 6) then ((1 : ℚ) / 14)
      else 0)]
  targetZ := ![(0 : ℚ), ((3 : ℚ) / 7), (0 : ℚ), ((2 : ℚ) / 7), ((-2 : ℚ) / 7), ((4 : ℚ) / 7)]

/-- Catalogue code #8498: ((6,2,2)), m=14, a=[1, 2, 3, 6, 8, 12], S=[0, 10]. -/
def code_8498 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (8 : ZMod 14), (12 : ZMod 14)]
  S := ![(0 : ZMod 14), (10 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, false, true, true, true], ![true, true, true, false, true, false]}, {![false, true, false, false, true, false], ![true, false, true, false, true, true], ![true, false, true, true, false, false], ![true, true, true, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, true, false, true, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, true, false, true, false] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, true, false, false, true, false] : BitString 6) then ((4 : ℚ) / 7)
      else       if s = (![true, false, true, false, true, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, false, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, true, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((-3 : ℚ) / 7), ((1 : ℚ) / 7), ((3 : ℚ) / 7), ((-3 : ℚ) / 7), ((3 : ℚ) / 7)]

/-- Catalogue code #8499: ((6,2,2)), m=14, a=[1, 2, 3, 6, 9, 9], S=[0, 4]. -/
def code_8499 : ExampleData 6 14 2 where
  a := ![(1 : ZMod 14), (2 : ZMod 14), (3 : ZMod 14), (6 : ZMod 14), (9 : ZMod 14), (9 : ZMod 14)]
  S := ![(0 : ZMod 14), (4 : ZMod 14)]
  supp := ![{![false, false, false, false, false, false], ![false, true, true, false, false, true], ![true, false, true, true, true, true]}, {![false, false, false, false, true, true], ![false, false, true, true, false, true], ![false, false, true, true, true, false], ![true, false, true, false, false, false], ![true, true, false, true, false, true]}]
  prob := ![(fun s : BitString 6 =>
      if s = (![false, false, false, false, false, false] : BitString 6) then ((3 : ℚ) / 7)
      else       if s = (![false, true, true, false, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, true, true, true] : BitString 6) then ((3 : ℚ) / 7)
      else 0), (fun s : BitString 6 =>
      if s = (![false, false, false, false, true, true] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![false, false, true, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![false, false, true, true, true, false] : BitString 6) then ((1 : ℚ) / 7)
      else       if s = (![true, false, true, false, false, false] : BitString 6) then ((2 : ℚ) / 7)
      else       if s = (![true, true, false, true, false, true] : BitString 6) then ((1 : ℚ) / 7)
      else 0)]
  targetZ := ![((1 : ℚ) / 7), ((5 : ℚ) / 7), ((-1 : ℚ) / 7), ((1 : ℚ) / 7), ((1 : ℚ) / 7), ((-1 : ℚ) / 7)]
def checks : List Bool :=
  [decide code_8000.OK,
   decide code_8001.OK,
   decide code_8002.OK,
   decide code_8003.OK,
   decide code_8004.OK,
   decide code_8005.OK,
   decide code_8006.OK,
   decide code_8007.OK,
   decide code_8008.OK,
   decide code_8009.OK,
   decide code_8010.OK,
   decide code_8011.OK,
   decide code_8012.OK,
   decide code_8013.OK,
   decide code_8014.OK,
   decide code_8015.OK,
   decide code_8016.OK,
   decide code_8017.OK,
   decide code_8018.OK,
   decide code_8019.OK,
   decide code_8020.OK,
   decide code_8021.OK,
   decide code_8022.OK,
   decide code_8023.OK,
   decide code_8024.OK,
   decide code_8025.OK,
   decide code_8026.OK,
   decide code_8027.OK,
   decide code_8028.OK,
   decide code_8029.OK,
   decide code_8030.OK,
   decide code_8031.OK,
   decide code_8032.OK,
   decide code_8033.OK,
   decide code_8034.OK,
   decide code_8035.OK,
   decide code_8036.OK,
   decide code_8037.OK,
   decide code_8038.OK,
   decide code_8039.OK,
   decide code_8040.OK,
   decide code_8041.OK,
   decide code_8042.OK,
   decide code_8043.OK,
   decide code_8044.OK,
   decide code_8045.OK,
   decide code_8046.OK,
   decide code_8047.OK,
   decide code_8048.OK,
   decide code_8049.OK,
   decide code_8050.OK,
   decide code_8051.OK,
   decide code_8052.OK,
   decide code_8053.OK,
   decide code_8054.OK,
   decide code_8055.OK,
   decide code_8056.OK,
   decide code_8057.OK,
   decide code_8058.OK,
   decide code_8059.OK,
   decide code_8060.OK,
   decide code_8061.OK,
   decide code_8062.OK,
   decide code_8063.OK,
   decide code_8064.OK,
   decide code_8065.OK,
   decide code_8066.OK,
   decide code_8067.OK,
   decide code_8068.OK,
   decide code_8069.OK,
   decide code_8070.OK,
   decide code_8071.OK,
   decide code_8072.OK,
   decide code_8073.OK,
   decide code_8074.OK,
   decide code_8075.OK,
   decide code_8076.OK,
   decide code_8077.OK,
   decide code_8078.OK,
   decide code_8079.OK,
   decide code_8080.OK,
   decide code_8081.OK,
   decide code_8082.OK,
   decide code_8083.OK,
   decide code_8084.OK,
   decide code_8085.OK,
   decide code_8086.OK,
   decide code_8087.OK,
   decide code_8088.OK,
   decide code_8089.OK,
   decide code_8090.OK,
   decide code_8091.OK,
   decide code_8092.OK,
   decide code_8093.OK,
   decide code_8094.OK,
   decide code_8095.OK,
   decide code_8096.OK,
   decide code_8097.OK,
   decide code_8098.OK,
   decide code_8099.OK,
   decide code_8100.OK,
   decide code_8101.OK,
   decide code_8102.OK,
   decide code_8103.OK,
   decide code_8104.OK,
   decide code_8105.OK,
   decide code_8106.OK,
   decide code_8107.OK,
   decide code_8108.OK,
   decide code_8109.OK,
   decide code_8110.OK,
   decide code_8111.OK,
   decide code_8112.OK,
   decide code_8113.OK,
   decide code_8114.OK,
   decide code_8115.OK,
   decide code_8116.OK,
   decide code_8117.OK,
   decide code_8118.OK,
   decide code_8119.OK,
   decide code_8120.OK,
   decide code_8121.OK,
   decide code_8122.OK,
   decide code_8123.OK,
   decide code_8124.OK,
   decide code_8125.OK,
   decide code_8126.OK,
   decide code_8127.OK,
   decide code_8128.OK,
   decide code_8129.OK,
   decide code_8130.OK,
   decide code_8131.OK,
   decide code_8132.OK,
   decide code_8133.OK,
   decide code_8134.OK,
   decide code_8135.OK,
   decide code_8136.OK,
   decide code_8137.OK,
   decide code_8138.OK,
   decide code_8139.OK,
   decide code_8140.OK,
   decide code_8141.OK,
   decide code_8142.OK,
   decide code_8143.OK,
   decide code_8144.OK,
   decide code_8145.OK,
   decide code_8146.OK,
   decide code_8147.OK,
   decide code_8148.OK,
   decide code_8149.OK,
   decide code_8150.OK,
   decide code_8151.OK,
   decide code_8152.OK,
   decide code_8153.OK,
   decide code_8154.OK,
   decide code_8155.OK,
   decide code_8156.OK,
   decide code_8157.OK,
   decide code_8158.OK,
   decide code_8159.OK,
   decide code_8160.OK,
   decide code_8161.OK,
   decide code_8162.OK,
   decide code_8163.OK,
   decide code_8164.OK,
   decide code_8165.OK,
   decide code_8166.OK,
   decide code_8167.OK,
   decide code_8168.OK,
   decide code_8169.OK,
   decide code_8170.OK,
   decide code_8171.OK,
   decide code_8172.OK,
   decide code_8173.OK,
   decide code_8174.OK,
   decide code_8175.OK,
   decide code_8176.OK,
   decide code_8177.OK,
   decide code_8178.OK,
   decide code_8179.OK,
   decide code_8180.OK,
   decide code_8181.OK,
   decide code_8182.OK,
   decide code_8183.OK,
   decide code_8184.OK,
   decide code_8185.OK,
   decide code_8186.OK,
   decide code_8187.OK,
   decide code_8188.OK,
   decide code_8189.OK,
   decide code_8190.OK,
   decide code_8191.OK,
   decide code_8192.OK,
   decide code_8193.OK,
   decide code_8194.OK,
   decide code_8195.OK,
   decide code_8196.OK,
   decide code_8197.OK,
   decide code_8198.OK,
   decide code_8199.OK,
   decide code_8200.OK,
   decide code_8201.OK,
   decide code_8202.OK,
   decide code_8203.OK,
   decide code_8204.OK,
   decide code_8205.OK,
   decide code_8206.OK,
   decide code_8207.OK,
   decide code_8208.OK,
   decide code_8209.OK,
   decide code_8210.OK,
   decide code_8211.OK,
   decide code_8212.OK,
   decide code_8213.OK,
   decide code_8214.OK,
   decide code_8215.OK,
   decide code_8216.OK,
   decide code_8217.OK,
   decide code_8218.OK,
   decide code_8219.OK,
   decide code_8220.OK,
   decide code_8221.OK,
   decide code_8222.OK,
   decide code_8223.OK,
   decide code_8224.OK,
   decide code_8225.OK,
   decide code_8226.OK,
   decide code_8227.OK,
   decide code_8228.OK,
   decide code_8229.OK,
   decide code_8230.OK,
   decide code_8231.OK,
   decide code_8232.OK,
   decide code_8233.OK,
   decide code_8234.OK,
   decide code_8235.OK,
   decide code_8236.OK,
   decide code_8237.OK,
   decide code_8238.OK,
   decide code_8239.OK,
   decide code_8240.OK,
   decide code_8241.OK,
   decide code_8242.OK,
   decide code_8243.OK,
   decide code_8244.OK,
   decide code_8245.OK,
   decide code_8246.OK,
   decide code_8247.OK,
   decide code_8248.OK,
   decide code_8249.OK,
   decide code_8250.OK,
   decide code_8251.OK,
   decide code_8252.OK,
   decide code_8253.OK,
   decide code_8254.OK,
   decide code_8255.OK,
   decide code_8256.OK,
   decide code_8257.OK,
   decide code_8258.OK,
   decide code_8259.OK,
   decide code_8260.OK,
   decide code_8261.OK,
   decide code_8262.OK,
   decide code_8263.OK,
   decide code_8264.OK,
   decide code_8265.OK,
   decide code_8266.OK,
   decide code_8267.OK,
   decide code_8268.OK,
   decide code_8269.OK,
   decide code_8270.OK,
   decide code_8271.OK,
   decide code_8272.OK,
   decide code_8273.OK,
   decide code_8274.OK,
   decide code_8275.OK,
   decide code_8276.OK,
   decide code_8277.OK,
   decide code_8278.OK,
   decide code_8279.OK,
   decide code_8280.OK,
   decide code_8281.OK,
   decide code_8282.OK,
   decide code_8283.OK,
   decide code_8284.OK,
   decide code_8285.OK,
   decide code_8286.OK,
   decide code_8287.OK,
   decide code_8288.OK,
   decide code_8289.OK,
   decide code_8290.OK,
   decide code_8291.OK,
   decide code_8292.OK,
   decide code_8293.OK,
   decide code_8294.OK,
   decide code_8295.OK,
   decide code_8296.OK,
   decide code_8297.OK,
   decide code_8298.OK,
   decide code_8299.OK,
   decide code_8300.OK,
   decide code_8301.OK,
   decide code_8302.OK,
   decide code_8303.OK,
   decide code_8304.OK,
   decide code_8305.OK,
   decide code_8306.OK,
   decide code_8307.OK,
   decide code_8308.OK,
   decide code_8309.OK,
   decide code_8310.OK,
   decide code_8311.OK,
   decide code_8312.OK,
   decide code_8313.OK,
   decide code_8314.OK,
   decide code_8315.OK,
   decide code_8316.OK,
   decide code_8317.OK,
   decide code_8318.OK,
   decide code_8319.OK,
   decide code_8320.OK,
   decide code_8321.OK,
   decide code_8322.OK,
   decide code_8323.OK,
   decide code_8324.OK,
   decide code_8325.OK,
   decide code_8326.OK,
   decide code_8327.OK,
   decide code_8328.OK,
   decide code_8329.OK,
   decide code_8330.OK,
   decide code_8331.OK,
   decide code_8332.OK,
   decide code_8333.OK,
   decide code_8334.OK,
   decide code_8335.OK,
   decide code_8336.OK,
   decide code_8337.OK,
   decide code_8338.OK,
   decide code_8339.OK,
   decide code_8340.OK,
   decide code_8341.OK,
   decide code_8342.OK,
   decide code_8343.OK,
   decide code_8344.OK,
   decide code_8345.OK,
   decide code_8346.OK,
   decide code_8347.OK,
   decide code_8348.OK,
   decide code_8349.OK,
   decide code_8350.OK,
   decide code_8351.OK,
   decide code_8352.OK,
   decide code_8353.OK,
   decide code_8354.OK,
   decide code_8355.OK,
   decide code_8356.OK,
   decide code_8357.OK,
   decide code_8358.OK,
   decide code_8359.OK,
   decide code_8360.OK,
   decide code_8361.OK,
   decide code_8362.OK,
   decide code_8363.OK,
   decide code_8364.OK,
   decide code_8365.OK,
   decide code_8366.OK,
   decide code_8367.OK,
   decide code_8368.OK,
   decide code_8369.OK,
   decide code_8370.OK,
   decide code_8371.OK,
   decide code_8372.OK,
   decide code_8373.OK,
   decide code_8374.OK,
   decide code_8375.OK,
   decide code_8376.OK,
   decide code_8377.OK,
   decide code_8378.OK,
   decide code_8379.OK,
   decide code_8380.OK,
   decide code_8381.OK,
   decide code_8382.OK,
   decide code_8383.OK,
   decide code_8384.OK,
   decide code_8385.OK,
   decide code_8386.OK,
   decide code_8387.OK,
   decide code_8388.OK,
   decide code_8389.OK,
   decide code_8390.OK,
   decide code_8391.OK,
   decide code_8392.OK,
   decide code_8393.OK,
   decide code_8394.OK,
   decide code_8395.OK,
   decide code_8396.OK,
   decide code_8397.OK,
   decide code_8398.OK,
   decide code_8399.OK,
   decide code_8400.OK,
   decide code_8401.OK,
   decide code_8402.OK,
   decide code_8403.OK,
   decide code_8404.OK,
   decide code_8405.OK,
   decide code_8406.OK,
   decide code_8407.OK,
   decide code_8408.OK,
   decide code_8409.OK,
   decide code_8410.OK,
   decide code_8411.OK,
   decide code_8412.OK,
   decide code_8413.OK,
   decide code_8414.OK,
   decide code_8415.OK,
   decide code_8416.OK,
   decide code_8417.OK,
   decide code_8418.OK,
   decide code_8419.OK,
   decide code_8420.OK,
   decide code_8421.OK,
   decide code_8422.OK,
   decide code_8423.OK,
   decide code_8424.OK,
   decide code_8425.OK,
   decide code_8426.OK,
   decide code_8427.OK,
   decide code_8428.OK,
   decide code_8429.OK,
   decide code_8430.OK,
   decide code_8431.OK,
   decide code_8432.OK,
   decide code_8433.OK,
   decide code_8434.OK,
   decide code_8435.OK,
   decide code_8436.OK,
   decide code_8437.OK,
   decide code_8438.OK,
   decide code_8439.OK,
   decide code_8440.OK,
   decide code_8441.OK,
   decide code_8442.OK,
   decide code_8443.OK,
   decide code_8444.OK,
   decide code_8445.OK,
   decide code_8446.OK,
   decide code_8447.OK,
   decide code_8448.OK,
   decide code_8449.OK,
   decide code_8450.OK,
   decide code_8451.OK,
   decide code_8452.OK,
   decide code_8453.OK,
   decide code_8454.OK,
   decide code_8455.OK,
   decide code_8456.OK,
   decide code_8457.OK,
   decide code_8458.OK,
   decide code_8459.OK,
   decide code_8460.OK,
   decide code_8461.OK,
   decide code_8462.OK,
   decide code_8463.OK,
   decide code_8464.OK,
   decide code_8465.OK,
   decide code_8466.OK,
   decide code_8467.OK,
   decide code_8468.OK,
   decide code_8469.OK,
   decide code_8470.OK,
   decide code_8471.OK,
   decide code_8472.OK,
   decide code_8473.OK,
   decide code_8474.OK,
   decide code_8475.OK,
   decide code_8476.OK,
   decide code_8477.OK,
   decide code_8478.OK,
   decide code_8479.OK,
   decide code_8480.OK,
   decide code_8481.OK,
   decide code_8482.OK,
   decide code_8483.OK,
   decide code_8484.OK,
   decide code_8485.OK,
   decide code_8486.OK,
   decide code_8487.OK,
   decide code_8488.OK,
   decide code_8489.OK,
   decide code_8490.OK,
   decide code_8491.OK,
   decide code_8492.OK,
   decide code_8493.OK,
   decide code_8494.OK,
   decide code_8495.OK,
   decide code_8496.OK,
   decide code_8497.OK,
   decide code_8498.OK,
   decide code_8499.OK]

theorem chunk_all_ok : checks.all id = true := by native_decide

end Catalogue.Chunk016
